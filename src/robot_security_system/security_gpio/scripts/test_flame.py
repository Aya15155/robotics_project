#!/usr/bin/env python3
import RPi.GPIO as GPIO
import time

FLAME_GPIO = 22  # BCM 22 (Pin 15)

GPIO.setmode(GPIO.BCM)
GPIO.setup(FLAME_GPIO, GPIO.IN, pull_up_down=GPIO.PUD_UP)

print("2-pin flame test started on GPIO22.")
print("Normally: 1 (HIGH). When flame triggers: may become 0 (LOW).")

try:
    while True:
        print("FLAME =", GPIO.input(FLAME_GPIO))
        time.sleep(0.2)
except KeyboardInterrupt:
    pass
finally:
    GPIO.cleanup()
