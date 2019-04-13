volatile int state = HIGH; 

void setup() 
{                   
  	pinMode(0, OUTPUT);        
  	attachInterrupt(0, blink, CHANGE); 
} 

int led = 0; 

void loop() 
{   
  	digitalWrite(0, state);    
} 

void blink() 
{    
  	state = !state;  
}