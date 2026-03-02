#!/usr/bin/env python3
"""
Tastatureingabe-Erkennung für Jetson Nano (Ubuntu 20.04)
Erkennt: W, A, S, D, Pfeil-Hoch, Pfeil-Runter

Installation:
    pip3 install pynput
"""

from pynput import keyboard

# Aktuell gedrückte Tasten
pressed_keys = set()

# Mapping der Sondertasten
SPECIAL_KEYS = {
    keyboard.Key.up:   "KEY_UP",
    keyboard.Key.down: "KEY_DOWN",
}

WASD_KEYS = {'w', 'a', 's', 'd'}


def get_key_name(key):
    """Gibt den lesbaren Namen einer Taste zurück."""
    if key in SPECIAL_KEYS:
        return SPECIAL_KEYS[key]
    try:
        char = key.char.lower() if key.char else None
        if char in WASD_KEYS:
            return char.upper()
    except AttributeError:
        pass
    return None


def on_press(key):
    name = get_key_name(key)
    if name and name not in pressed_keys:
        pressed_keys.add(name)
        print(f"[GEDRÜCKT]  {name:12} | Aktiv: {sorted(pressed_keys)}")


def on_release(key):
    name = get_key_name(key)
    if name and name in pressed_keys:
        pressed_keys.discard(name)
        print(f"[LOSGELASSEN] {name:10} | Aktiv: {sorted(pressed_keys)}")

    # ESC beendet das Script
    if key == keyboard.Key.esc:
        print("\nBeende Script (ESC gedrückt).")
        return False


def main():
    print("=" * 50)
    print("  Tastatur-Erkennung gestartet")
    print("  Tasten: W A S D  |  Pfeil-Hoch  |  Pfeil-Runter")
    print("  ESC zum Beenden")
    print("=" * 50)

    with keyboard.Listener(on_press=on_press, on_release=on_release) as listener:
        listener.join()


if __name__ == "__main__":
    main()