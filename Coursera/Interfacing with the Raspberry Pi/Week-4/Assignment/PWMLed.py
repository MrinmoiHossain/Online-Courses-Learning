import RPi.GPIO as GPIO
import time

class PWMControl():
    def __init__(self):
        self.LedPin = 12
        self.pwm = None
    
    def setMode(self):
        GPIO.setmode(GPIO.BOARD)
        GPIO.setup(self.LedPin, GPIO.OUT)
        self.pwm = GPIO.PWM(self.LedPin, 1000)
        self.pwm.start(0)
        
    def Control(self):
        while True:
            try:
                for i in range(100):
                    self.pwm.ChangeDutyCycle(i)
                    time.sleep(0.1)
                for i in range(100, 0, -1):
                    self.pwm.ChangeDutyCycle(i)
                    time.sleep(0.1)
            except KeyboardInterrupt:
                self.pwm.stop()
                GPIO.cleanup()
                print("Stop the Led")
                exit()

if __name__ == '__main__':
    call = PWMControl()
    call.setMode()
    call.Control()