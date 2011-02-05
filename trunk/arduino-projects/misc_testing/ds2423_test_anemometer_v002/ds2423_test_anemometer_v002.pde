#include <OneWire.h>
#include <DS2423.h>

DeviceAddress counter = { 0x1D, 0xE4, 0x7E, 0x01, 0x0, 0x0, 0x0, 0x76 };
//1D E4 7E 1 0 0 0 76

OneWire ow(8);
ds2423 myCounter(&ow, counter);

uint8_t a1 = 0;
uint8_t a2 = 0;
uint8_t b1 = 0;
uint8_t b2 = 0;
int diffA = 0;
int diffB = 0;
uint8_t secondsPerSample = 4;
float cupRadius = 2.875; //radius of cup rotation in inches
float cupCirc = PI * (2 * cupRadius); //circumference in inches
float feetPerRev = cupCirc / 12;
#define mile 5280

void setup(void)
{
  Serial.begin(57600);
  Serial.print("\ncupRadius=");
  Serial.println(cupRadius, DEC);
  Serial.print("cupCirc=");
  Serial.println(cupCirc,DEC);
  Serial.print("feetPerRev=");
  Serial.println(feetPerRev,DEC);
  Serial.print("secondsPerSample=");
  Serial.println(secondsPerSample,DEC);
}



void loop(void)
{ 
  a1=myCounter.readCounter(1);
  b1=myCounter.readCounter(2);
  delay(secondsPerSample * 1000);
  a2=myCounter.readCounter(1);
  b2=myCounter.readCounter(2);

  diffA = abs(a2-a1);
  diffB = abs(b2-b1);
  
  /* A and B each get one count per RPM, 
         therefore divide by two,
         multiply by 60 seconds in a minute,
         then divide by numer of seconds we sample
  */
  float rpm = float((diffA + diffB) /2) * 60 / secondsPerSample;
  float mph = rpm * feetPerRev * 60 / mile;
  Serial.print("\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b");  
  Serial.print("A=");
  Serial.print(diffA);
  Serial.print(", B=");
  Serial.print(diffB);
  Serial.print(", rpm=");
  Serial.print(rpm);
  Serial.print(", mph=");
  Serial.print(mph,DEC);  
  Serial.print("             ");
}
