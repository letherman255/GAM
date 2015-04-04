#include <Wire.h>

int i2c;
int M1 = 2; //Manette 1
int M2 = 3; //Manette 2
int M3 = 13; //Manette 3
int M4 = 5; //Manette 4

void setup(){
  Serial.begin(9600); //Pour le debug
  Wire.begin(0x30); //Adresse à changer pour chaque Arduino
  pinMode(M1, OUTPUT);
  pinMode(M2, OUTPUT);
  pinMode(M3, OUTPUT);
  pinMode(M4, OUTPUT);
  Serial.setTimeout(2);
}

void loop(){
  i2c = Wire.read();
  if (i2c <= 0){
    //Ne fais rien du tout !
  }else{
    switch(i2c){
      case 10 :
        digitalWrite(M1, LOW);
        Serial.println("Manette n 1 eteinte !");
        break;
      case 11 :
        digitalWrite(M1, HIGH);
        Serial.println("Manette n 1 allumee !");
        break;
      case 20 :
        digitalWrite(M2, LOW);
        Serial.println("Manette n 2 eteinte !");
        break;
      case 21 :
        digitalWrite(M2,HIGH);
        Serial.println("Manette n 2 allumee !");
        break;
      case 30 :
        digitalWrite(M3, LOW);
        Serial.println("Manette n 3 eteinte !");
        break;
      case 31 :
        digitalWrite(M3, HIGH);
        Serial.println("Manette n 3 allumee !");
        break;
      case 40 :
        digitalWrite(M4, LOW);
        Serial.println("Manette n 4 eteinte !");
        break;
      case 41 :
        digitalWrite(M4, HIGH);
        Serial.println("Manette n 4 allumee !");
        break;
    }
  }
  delay(10);
}
