#!/usr/bin/env python3
"""
JetBot Mini - TCP Text Command Server
IP: 192.168.0.31 | Port: 5000
Ubuntu 20.04 / Jetson Nano
"""

import socket
import threading

HOST = "192.168.0.31"
PORT = 5000


def handle_client(conn, addr):
    print(f"[CONNECTED] {addr}")
    with conn:
        while True:
            try:
                data = conn.recv(1024)
                if not data:
                    print(f"[DISCONNECTED] {addr}")
                    break

                command = data.decode("utf-8").strip()
                print(f"[RECEIVED] {addr} -> '{command}'")

                # --- Process command and build response ---
                response = process_command(command)

                conn.sendall((response + "\n").encode("utf-8"))
                print(f"[SENT]     '{response}'")

            except ConnectionResetError:
                print(f"[LOST] Connection lost: {addr}")
                break
            except Exception as e:
                print(f"[ERROR] {e}")
                break


def process_command(command):
    """
    Map incoming text commands to responses.
    Add your own commands here.
    """
    cmd = command.lower()

    if cmd == "ping":
        return "pong"
    elif cmd == "status":
        return "OK: JetBot online"
    elif cmd == "forward":
        return "ACK: moving forward"
    elif cmd == "backward":
        return "ACK: moving backward"
    elif cmd == "left":
        return "ACK: turning left"
    elif cmd == "right":
        return "ACK: turning right"
    elif cmd == "stop":
        return "ACK: stopped"
    elif cmd == "hello":
        return "Hello from JetBot!"
    elif cmd == "quit" or cmd == "exit":
        return "BYE"
    else:
        return f"ERR: unknown command '{command}'"


def start_server():
    server = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    server.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)

    try:
        server.bind((HOST, PORT))
    except OSError as e:
        print(f"[FATAL] Could not bind to {HOST}:{PORT} -> {e}")
        return

    server.listen(5)
    print(f"[SERVER] Listening on {HOST}:{PORT}")
    print("[SERVER] Waiting for connections... (Ctrl+C to stop)\n")

    try:
        while True:
            conn, addr = server.accept()
            thread = threading.Thread(target=handle_client, args=(conn, addr), daemon=True)
            thread.start()
            print(f"[THREADS] Active connections: {threading.active_count() - 1}")
    except KeyboardInterrupt:
        print("\n[SERVER] Shutting down.")
    finally:
        server.close()


if __name__ == "__main__":
    start_server()