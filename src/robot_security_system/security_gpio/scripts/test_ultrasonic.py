#!/usr/bin/env python3
import RPi.GPIO as GPIO
import time

TRIG = 23
ECHO = 24

GPIO.setmode(GPIO.BCM)
GPIO.setup(TRIG, GPIO.OUT)
GPIO.setup(ECHO, GPIO.IN)

GPIO.output(TRIG, False)
time.sleep(1)

print("Ultrasonic test started (stable version)")

def get_distance():
    GPIO.output(TRIG, True)
    time.sleep(0.00001)
    GPIO.output(TRIG, False)

    start_time = time.time()
    timeout = start_time + 0.02  # 20ms timeout

    while GPIO.input(ECHO) == 0:
        if time.time() > timeout:
            return None
        pulse_start = time.time()

    while GPIO.input(ECHO) == 1:
        if time.time() > timeout:
            return None
        pulse_end = time.time()

    duration = pulse_end - pulse_start
    distance = duration * 17150
    return round(distance, 2)

try:
    while True:
        d = get_distance()
        if d is not None and d < 400:
            print("Distance:", d, "cm")
        else:
            print("Out of range")
        time.sleep(0.5)

except KeyboardInterrupt:
    pass
finally:
    GPIO.cleanup()