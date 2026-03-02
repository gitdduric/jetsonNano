#!/usr/bin/env python3
"""
Adafruit SSD1306 OLED Display Steuerung für Jetson Nano (I2C)
============================================================
Voraussetzungen:
    pip3 install adafruit-circuitpython-ssd1306 pillow

I2C-Adresse prüfen:
    sudo i2cdetect -y -r 1
    (Standard: 0x3C oder 0x3D)
"""

import time
import board
import busio
from PIL import Image, ImageDraw, ImageFont
from adafruit_extended_bus import ExtendedI2C
import adafruit_ssd1306

# ─── Konfiguration ─────────────────────────────────────────────────────────────
DISPLAY_WIDTH  = 128
DISPLAY_HEIGHT = 32   # oder 32 für kleinere Displays
I2C_ADDRESS    = 0x3C  # ggf. auf 0x3D ändern
# ────────────────────────────────────────────────────────────────────────────────


def init_display():
    """Initialisiert den I2C-Bus und das OLED-Display."""
    i2c = ExtendedI2C(0)  # <-- Bus 0
    display = adafruit_ssd1306.SSD1306_I2C(
        DISPLAY_WIDTH, DISPLAY_HEIGHT, i2c, addr=I2C_ADDRESS
    )
    display.fill(0)
    display.show()
    return display


def get_canvas(display):
    """Erstellt ein leeres PIL-Bild als Zeichenfläche."""
    image = Image.new("1", (display.width, display.height))
    draw = ImageDraw.Draw(image)
    return image, draw


def clear(display):
    """Löscht das Display."""
    display.fill(0)
    display.show()


def show_image(display, image):
    """Überträgt ein PIL-Image auf das Display."""
    display.image(image)
    display.show()


# ─── Beispiel-Funktionen ────────────────────────────────────────────────────────

def demo_text(display):
    """Zeigt mehrere Textzeilen an."""
    image, draw = get_canvas(display)

    # Standard-Font (klein, pixelig)
    font = ImageFont.load_default()

    draw.text((0,  0), "Jetson Nano",   font=font, fill=255)
    draw.text((0, 16), "SSD1306 OLED",  font=font, fill=255)
    draw.text((0, 32), "I2C Display",   font=font, fill=255)
    draw.text((0, 48), time.strftime("%H:%M:%S"), font=font, fill=255)

    show_image(display, image)


def demo_shapes(display):
    """Zeichnet geometrische Formen."""
    image, draw = get_canvas(display)

    # Rechteck (Rahmen)
    draw.rectangle([(0, 0), (display.width - 1, display.height - 1)], outline=255)

    # Linie diagonal
    draw.line([(0, 0), (display.width - 1, display.height - 1)], fill=255)

    # Kreis in der Mitte
    cx, cy, r = display.width // 2, display.height // 2, 15
    draw.ellipse([(cx - r, cy - r), (cx + r, cy + r)], outline=255)

    show_image(display, image)


def demo_clock(display, seconds=30):
    """Zeigt eine Live-Uhr für `seconds` Sekunden."""
    font = ImageFont.load_default()
    end = time.time() + seconds

    while time.time() < end:
        image, draw = get_canvas(display)

        now = time.strftime("%H:%M:%S")
        date = time.strftime("%d.%m.%Y")

        draw.text((10, 10), "Live-Uhr",  font=font, fill=255)
        draw.text((10, 28), now,          font=font, fill=255)
        draw.text((10, 46), date,         font=font, fill=255)

        show_image(display, image)
        time.sleep(1)


def demo_progress_bar(display, total=20):
    """Zeigt eine animierte Fortschrittsleiste."""
    font = ImageFont.load_default()

    for i in range(total + 1):
        image, draw = get_canvas(display)

        progress = i / total
        bar_width = int((display.width - 4) * progress)

        draw.text((0, 0), f"Fortschritt: {int(progress*100)}%", font=font, fill=255)

        # Rahmen der Leiste
        draw.rectangle([(1, 40), (display.width - 2, 58)], outline=255)
        # Gefüllter Anteil
        if bar_width > 0:
            draw.rectangle([(2, 41), (2 + bar_width, 57)], fill=255)

        show_image(display, image)
        time.sleep(0.2)


# ─── Hauptprogramm ──────────────────────────────────────────────────────────────

def main():
    print("Initialisiere SSD1306 OLED Display ...")
    display = init_display()

    try:
        print("1) Text-Demo")
        demo_text(display)
        time.sleep(3)

        print("2) Formen-Demo")
        demo_shapes(display)
        time.sleep(3)

        print("3) Fortschrittsbalken")
        demo_progress_bar(display)

        print("4) Live-Uhr (10 s)")
        demo_clock(display, seconds=10)

    except KeyboardInterrupt:
        print("\nAbgebrochen.")
    finally:
        clear(display)
        print("Display geleert. Fertig.")


if __name__ == "__main__":
    main()
