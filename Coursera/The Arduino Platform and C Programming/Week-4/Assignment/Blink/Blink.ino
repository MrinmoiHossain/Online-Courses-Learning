#define BAUD_RATE 9600
char incomingByte = ' ';

void setup(void)
{
    Serial.begin(BAUD_RATE);
    pinMode(LED_BUILTIN, OUTPUT);
}

void loop(void)
{
    if(Serial.available() > 0){
        incomingByte = Serial.read();

        //Serial.println(incomingByte);

        if(incomingByte == '1'){
            digitalWrite(LED_BUILTIN, HIGH);
            //Serial.println("Led is ON");
        }
        else if(incomingByte == '0'){
            digitalWrite(LED_BUILTIN, LOW);
            //Serial.println("Led is OFF");
        }
    }
}
