#!/usr/bin/env python3

#update the jetbot-nano-mini-robot stats

import time
import board
import busio
import smbus
from PIL import Image, ImageDraw, ImageFont
import subprocess
from adafruit_extended_bus import ExtendedI2C
import adafruit_ssd1306

bus = smbus.SMBus(1)

# ─── configuration ─────────────────────────────────────────────────────────────
DISPLAY_WIDTH  = 128
DISPLAY_HEIGHT = 32
I2C_DISPLAY_ADDRESS = 0x3C
I2C_VBAT_ADDRESS = 0x1B
I2C_BUZZ_ADDRESS = 0x1B
REG_VCELL = 0x02

# ────────────────────────────────────────────────────────────────────────────────
def initDisplay():
    """Initialize I2C and SSD1306 OLED Display ..."""
    i2c_display = ExtendedI2C(0)  # <-- Bus 0
    display = adafruit_ssd1306.SSD1306_I2C(
        DISPLAY_WIDTH, DISPLAY_HEIGHT, i2c_display, addr=I2C_DISPLAY_ADDRESS
    )
    display.fill(0)
    display.show()
    return display

# ────────────────────────────────────────────────────────────────────────────────
def initBuzzer():
    bus.write_byte_data(I2C_BUZZ_ADDRESS,0x06,1)
    time.sleep(0.1)
    bus.write_byte_data(I2C_BUZZ_ADDRESS,0x06,0)
    time.sleep(0.2)
    bus.write_byte_data(I2C_BUZZ_ADDRESS,0x06,1)
    time.sleep(0.1)
    bus.write_byte_data(I2C_BUZZ_ADDRESS,0x06,0)
    time.sleep(0.2)
    bus.write_byte_data(I2C_BUZZ_ADDRESS,0x06,1)
    time.sleep(0.1)
    bus.write_byte_data(I2C_BUZZ_ADDRESS,0x06,0)
    time.sleep(0.2)

# ────────────────────────────────────────────────────────────────────────────────
def get_canvas(display):
    """Erstellt ein leeres PIL-Bild als Zeichenfläche."""
    image = Image.new("1", (display.width, display.height))
    draw = ImageDraw.Draw(image)
    return image, draw
# ────────────────────────────────────────────────────────────────────────────────
def writeLine( display, image, draw, line_text, line_num):
    font = ImageFont.load_default()
    draw.text((0,  (8*line_num -1)), line_text,   font=font, fill=255)
    show_image(display, image)
# ────────────────────────────────────────────────────────────────────────────────
def show_image(display, image):
    """Überträgt ein PIL-Image auf das Display."""
    display.image(image)
    display.show()   
# ────────────────────────────────────────────────────────────────────────────────
def clear(display):
    """Clears Display."""
    display.fill(0)
    display.show()

# ────────────────────────────────────────────────────────────────────────────────
def getIpAddress():  
    result = subprocess.run(['ip', 'addr', 'show', 'wlan0'], capture_output=True, text=True)
    for line in result.stdout.splitlines():
        if 'inet ' in line:
            ip_wlan0 = line.strip().split()[1].split('/')[0]
            return ip_wlan0

# ────────────────────────────────────────────────────────────────────────────────
def getSysMem():
    cmd = "top -bn1 | grep load | awk '{printf \"CPU Load: %.2f\", $(NF-2)}'"
    CPU = subprocess.check_output(cmd, shell = True )
    cmd = "free -m | awk 'NR==2{printf \"Mem:%s/%sM %.2f%%\", $3,$2,$3*100/$2 }'"
    MemUsage = subprocess.check_output(cmd, shell = True )
    MemUsage = str(MemUsage.decode('utf-8'))
    return MemUsage

# ────────────────────────────────────────────────────────────────────────────────
def getVbat():
    AD_value = bus.read_i2c_block_data(I2C_VBAT_ADDRESS, REG_VCELL, 2)
    voltage = ((AD_value[0] << 8) + AD_value[1]) * 13.3 / 1023.0
    return voltage



# ────────────────────────────────────────────────────────────────────────────────
def getCPUTemp():
    path = "/sys/devices/virtual/thermal/thermal_zone0/temp"
    try:
        with open(path, "r") as f:
            temp_str = f.read().strip()
            temp_c = int(temp_str) / 1000.0
            return temp_c
    except FileNotFoundError:
        return None

# ─── Main ───────────────────────────────────────────────────────────────────────
def main():
    print("Initialize I2C and SSD1306 OLED Display ...")
    print("Initialize I2C and Battery Voltage ADC ...")

    line_text = "blank"
    ip_wlan0 = "0.0.0.0"
    mem = "0"
    vBat = 0
    cpu_temp = 0

    display = initDisplay()
    image, draw = get_canvas(display)
    font = ImageFont.load_default()

    initBuzzer()

    try:
        while True:
            image, draw = get_canvas(display)
            
            ip_wlan0 = getIpAddress()
            line_text = "wlan0:" +  ip_wlan0
            writeLine( display, image, draw, line_text, 0)

            mem = getSysMem()
            writeLine( display, image, draw, mem, 1)

            vBat = getVbat()
            vBat_str = f"{vBat:.3f}"
            line_text = "VBat: " + vBat_str + " V"
            writeLine( display, image, draw, line_text, 2)

            cpu_temp = getCPUTemp()
            cpu_temp_str = f"{cpu_temp:.2f}"
            line_text = "CPU Temp: " + cpu_temp_str + " °C"
            writeLine( display, image, draw, line_text, 3)
            
            time.sleep(10)
    except KeyboardInterrupt:
        print("\Abort.")
    finally:
        clear(display)
        print("Display cleared.")


if __name__ == "__main__":
    main()