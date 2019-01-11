import RPi.GPIO as GPIO
import time

class Control:
    def __init__(self):
        self.LedPin = 13
        self.Button = 12
        
    def setup(self):
        GPIO.setmode(GPIO.BOARD)
        GPIO.setup(self.LedPin, GPIO.OUT)
        GPIO.setup(self.Button, GPIO.IN, pull_up_down=GPIO.PUD_UP)
        GPIO.output(self.LedPin, GPIO.HIGH)
        
    def destroy(self):
        GPIO.output(self.LedPin, GPIO.HIGH)
        GPIO.cleanup()
        
    def loop(self):
        GPIO.output(self.LedPin, True)
        try:
            while True:
                button_state = GPIO.input(self.Button)
                if button_state == False:
                    GPIO.output(self.LedPin, False)
                    print("Button Pressed")
                    time.sleep(0.3)
                else:
                    GPIO.output(self.LedPin, True)
                    print("Button not Pressed")
                    time.sleep(0.3)
        except KeyboardInterrupt:
            self.destroy()
        
if __name__ == '__main__':
    obj = Control()
    obj.setup()
    obj.loop()
