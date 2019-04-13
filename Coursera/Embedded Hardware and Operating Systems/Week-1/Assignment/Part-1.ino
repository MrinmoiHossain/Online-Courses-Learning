void setup(void)
{
  	pinMode(12, OUTPUT);
  	pinMode(13, OUTPUT);
}

void loop(void)
{
  	digitalWrite(12, HIGH);
  	digitalWrite(13, HIGH);
  	delay(1000); // Wait for 1000 millisecond(s)
  	digitalWrite(12, LOW);
  	digitalWrite(13, LOW);
  	delay(1000); // Wait for 1000 millisecond(s)
}