#include <Wire.h>
 byte b = 0;
void setup()
{
  Wire.begin(4);                // join i2c bus with address #4
  Wire.onReceive(receiveEvent); // register event
  Serial.begin(9600);         // start serial for output
  Serial.println("hello!");
  pinMode(11,OUTPUT);
  pinMode(10,OUTPUT);
  pinMode(9,OUTPUT);
  pinMode(8,OUTPUT);
}
 
void loop() {
  delay(100);
}
 
void receiveEvent(int howMany) {
  while(Wire.available()>0)
  {
    b=Wire.read();
  }
  if(b==10)
  {
    digitalWrite(11,HIGH);
  }
    if(b==11)
  {
    digitalWrite(10,HIGH);
  }
    if(b==12)
  {
    digitalWrite(9,HIGH);
  }
    if(b==13)
  {
    digitalWrite(8,HIGH);
  }
  
    if(b==0)
  {
    digitalWrite(11,LOW);
  }
    if(b==1)
  {
    digitalWrite(10,LOW);
  }
    if(b==2)
  {
    digitalWrite(9,LOW);
  }
    if(b==3)
  {
    digitalWrite(8,LOW);
  }
  Serial.print("read data: ");
    Serial.println(b);
}
