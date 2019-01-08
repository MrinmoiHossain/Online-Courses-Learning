// Pin Configration
const int buttonPin_1 = 8;     // the number of the pushbutton pin-01
const int buttonPin_2 = 9;     // the number of the pushbutton pin-02
const int ledPin =  10;      // the number of the LED pin

// variables will change:
int buttonState_01 = 0;         // variable for reading the pushbutton status
int buttonState_02 = 0;         // variable for reading the pushbutton status

void setup(void)
{
    // initialize the LED pin as an output:
    pinMode(ledPin, OUTPUT);
    // initialize the pushbutton pin as an input:
    pinMode(buttonPin_1, INPUT);
    pinMode(buttonPin_2, INPUT);
}

void loop(void)
{
    // read the state of the pushbutton value:
    buttonState_01 = digitalRead(buttonPin_1);
    buttonState_02 = digitalRead(buttonPin_2);

    // check if the pushbutton is pressed. If it is, the buttonState is HIGH:
    if (buttonState_01 == LOW && buttonState_02 == LOW){
        // turn LED on:
        digitalWrite(ledPin, HIGH);
    }
    else{
        // turn LED off:
        digitalWrite(ledPin, LOW);
    }
}
