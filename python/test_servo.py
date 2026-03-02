from pynput import keyboard
from jetbotmini import Robot
import threading
import time

robot = Robot()

# Bewegungsflags
move_forward = False
move_backward = False
move_left = False
move_right = False

# Geschwindigkeit
speed = 0.3
speed_step = 0.05
speed_min = 0.1
speed_max = 1.0

running = True

print("Steuerung aktiv:")
print("  w = vorwärts")
print("  s = rückwärts")
print("  a = links")
print("  d = rechts")
print("  Pfeil hoch = schneller")
print("  Pfeil runter = langsamer")
print("  q = beenden")

# ---------------------------------------------------
# Tastatur-Events
# ---------------------------------------------------
def on_press(key):
    global move_forward, move_backward, move_left, move_right
    global speed, running

    try:
        if key.char == 'w':
            move_forward = True
        elif key.char == 's':
            move_backward = True
        elif key.char == 'a':
            move_left = True
        elif key.char == 'd':
            move_right = True
        elif key.char == 'q':
            running = False
            return False
    except AttributeError:
        if key == keyboard.Key.up:
            speed = min(speed + speed_step, speed_max)
            print(f"Geschwindigkeit: {speed:.2f}")
        elif key == keyboard.Key.down:
            speed = max(speed - speed_step, speed_min)
            print(f"Geschwindigkeit: {speed:.2f}")

def on_release(key):
    global move_forward, move_backward, move_left, move_right

    try:
        if key.char == 'w':
            move_forward = False
        elif key.char == 's':
            move_backward = False
        elif key.char == 'a':
            move_left = False
        elif key.char == 'd':
            move_right = False
    except:
        pass

# ---------------------------------------------------
# Motorsteuerung (kombiniert Richtungen)
# ---------------------------------------------------
def motor_loop():
    global running

    while running:
        left_speed = 0.0
        right_speed = 0.0

        # Vorwärts / Rückwärts
        if move_forward:
            left_speed += speed
            right_speed += speed
        if move_backward:
            left_speed -= speed
            right_speed -= speed

        # Links / Rechts
        if move_left:
            left_speed -= speed
            right_speed += speed
        if move_right:
            left_speed += speed
            right_speed -= speed

        # Motoren setzen
        robot.set_motors(left_speed, right_speed)

        time.sleep(0.02)  # 50 Hz Loop

    robot.stop()
    print("Motorsteuerung beendet.")

# ---------------------------------------------------
# Threads starten
# ---------------------------------------------------
motor_thread = threading.Thread(target=motor_loop)
motor_thread.start()

with keyboard.Listener(on_press=on_press, on_release=on_release) as listener:
    listener.join()

running = False
motor_thread.join()
robot.stop()

print("Programm beendet.")