import cv2
import threading
from http.server import BaseHTTPRequestHandler, HTTPServer

# GStreamer pipeline for CSI camera
def gstreamer_pipeline(
    sensor_id=0,
    sensor_mode=3,
    capture_width=1280,
    capture_height=720,
    display_width=1280,
    display_height=720,
    framerate=30,
    flip_method=0,
):
    return (
        f"nvarguscamerasrc sensor-id={sensor_id} sensor-mode={sensor_mode} ! "
        f"video/x-raw(memory:NVMM), width={capture_width}, height={capture_height}, framerate={framerate}/1 ! "
        f"nvvidconv flip-method={flip_method} ! "
        f"video/x-raw, width={display_width}, height={display_height}, format=BGRx ! "
        f"videoconvert ! "
        f"video/x-raw, format=BGR ! appsink"
    )

# Global frame holder
latest_frame = None
frame_lock = threading.Lock()

def capture_frames():
    global latest_frame
    cap = cv2.VideoCapture(gstreamer_pipeline(flip_method=0), cv2.CAP_GSTREAMER)
    if not cap.isOpened():
        print("Unable to open camera")
        return
    while True:
        ret, frame = cap.read()
        if not ret:
            break
        with frame_lock:
            latest_frame = frame.copy()
    cap.release()

class StreamHandler(BaseHTTPRequestHandler):
    def log_message(self, format, *args):
        pass  # Suppress request logs

    def do_GET(self):
        if self.path == '/':
            # Serve a simple HTML page with the stream embedded
            self.send_response(200)
            self.send_header('Content-Type', 'text/html')
            self.end_headers()
            html = b"""
            <html>
            <head>
                <title>CSI Camera Stream</title>
                <style>
                    body { margin: 0; background: #000; display: flex; justify-content: center; align-items: center; height: 100vh; }
                    img { max-width: 100%; height: auto; }
                </style>
            </head>
            <body>
                <img src="/stream" />
            </body>
            </html>
            """
            self.wfile.write(html)

        elif self.path == '/stream':
            # Serve MJPEG stream
            self.send_response(200)
            self.send_header('Content-Type', 'multipart/x-mixed-replace; boundary=frame')
            self.end_headers()
            try:
                while True:
                    with frame_lock:
                        frame = latest_frame
                    if frame is None:
                        continue
                    _, jpeg = cv2.imencode('.jpg', frame, [cv2.IMWRITE_JPEG_QUALITY, 80])
                    data = jpeg.tobytes()
                    self.wfile.write(b'--frame\r\n')
                    self.wfile.write(b'Content-Type: image/jpeg\r\n')
                    self.wfile.write(f'Content-Length: {len(data)}\r\n\r\n'.encode())
                    self.wfile.write(data)
                    self.wfile.write(b'\r\n')
            except (BrokenPipeError, ConnectionResetError):
                pass  # Client disconnected

        else:
            self.send_response(404)
            self.end_headers()

HOST = '0.0.0.0'
PORT = 8080

if __name__ == '__main__':
    # Start camera capture in background thread
    capture_thread = threading.Thread(target=capture_frames, daemon=True)
    capture_thread.start()

    # Start HTTP server
    server = HTTPServer((HOST, PORT), StreamHandler)
    print(f"Streaming at http://<your-device-ip>:{PORT}/")
    print("Press Ctrl+C to stop.")
    try:
        server.serve_forever()
    except KeyboardInterrupt:
        print("\nStream stopped.")