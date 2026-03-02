import smbus
import time

I2C_ADDR = 0x1B
REG_VCELL = 0x02

bus = smbus.SMBus(1)

def read_voltage():
    # 2 Bytes aus dem VCELL-Register lesen
    #data = bus.read_i2c_block_data(I2C_ADDR, REG_VCELL, 2)
    AD_value = bus.read_i2c_block_data(I2C_ADDR, REG_VCELL, 2)
    # 12-Bit Wert extrahieren
    #raw = (data[0] << 4) | (data[1] >> 4)

    # Spannung berechnen (1.25 mV pro LSB)
    #voltage = raw * 1.25 / 1000.0
    voltage = ((AD_value[0] << 8) + AD_value[1]) * 13.3 / 1023.0
    return voltage

while True:
    v = read_voltage()
    print(f"Batteriespannung: {v:.3f} V")
    time.sleep(1)
