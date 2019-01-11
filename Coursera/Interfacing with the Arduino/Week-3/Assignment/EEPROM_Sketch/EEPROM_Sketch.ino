#include <EEPROM.h>

int address = 0;
int value;

void setup(void)
{
    Serial.begin(9600);
}

void loop(void)
{
    String s = "";
    s = Serial.readString();

    if(s.startsWith("read")){
        address = s.substring(s.indexOf(' ') + 1).toInt();
        Serial.print("Data Address: ");
        Serial.println(address);
        Serial.println(EEPROM.read(address));
    }
    else if(s.startsWith("write")){
        address = s.substring(6, 7).toInt();
        value = s.substring(8, s.length()).toInt();
        Serial.print("Address: ");
        Serial.print(address);
        Serial.print(" Data Write: ");
        Serial.println(value);
        EEPROM.write(address, value);
    }
}
