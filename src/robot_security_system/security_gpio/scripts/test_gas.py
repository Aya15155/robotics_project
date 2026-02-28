#!/usr/bin/env python3
import RPi.GPIO as GPIO
import time

GAS_GPIO = 27  # BCM GPIO27 (Pin 13)

GPIO.setmode(GPIO.BCM)
GPIO.setup(GAS_GPIO, GPIO.IN)

print("MQ-2 DO test started (GPIO27). Warm-up 60s then test gas.")
time.sleep(60)

try:
    while True:
        val = GPIO.input(GAS_GPIO)
        print("GAS DO =", val)
        time.sleep(0.5)
except KeyboardInterrupt:
    pass
finally:
    GPIO.cleanup()
