#include <stdio.h>

//int digitOnTime = 1; // single digit time on in ms
//int digitOnTime = 256; // single digit time on in ms

#define digitOnTime 0
#define dimTime 20
#define oneSec 500

const int btnPin = 2;
const int opLed =  7;      // the number of the LED pin
const int errLed =  8;      // the number of the STOPLED pin


const int timer = 1000;           // The higher the number, the slower the timing.

int opLedState = LOW;
int colons = 0;

long previousMillis = 0;
volatile long periodCount = 0;
volatile long nowCount = 0;



volatile long starttime = 94702;
int seconds = 50;
int minutes = 59;
int hours = 0;
int hrs1 = 0;
int hrs2 = 0;
int mins1 = 0;
int mins2 = 0;
int sec = 0;
int secs1 = 9;
int secs2 = 0;
int one = 10;
int two = 10;
int three = 10;
int four = 10;
int five = 10;
char ascii[6];




/* we always wait a bit between updates of the display */
unsigned long delaytime=1000;


//We always have to include the library
#include "LedControl.h"

/*
 Now we need a LedControl to work with.
 ***** These pin numbers will probably not work with your hardware *****
 pin 12 is connected to the DataIn 
 pin 11 is connected to the CLK 
 pin 10 is connected to LOAD 
 We have only a single MAX72XX.
 */
//LedControl ledbar=LedControl(13,12,11,1);
LedControl lc=LedControl(13,12,11,3);





void dec_bin(int number) {
 int x, y;
 x = y = 0;

 for(y = 7; y >= 0; y--) {
  x = number / (1 << y);
  number = number - x * (1 << y);
  Serial.print(x);
 }

 Serial.println("\n");

}
//begin rotary stuff

int lastRotary = 0;
int nowRotary = 0;
boolean h1last = 0;
int lastf = 0;

#define h1pin 6
#define h2pin 10
#define h3pin 9 

void rotarySetup() {
  pinMode(h1pin, INPUT); 
  pinMode(h2pin, INPUT);
  pinMode(h3pin, INPUT);
  digitalWrite(h1pin, HIGH);
  digitalWrite(h2pin, HIGH);
  digitalWrite(h3pin, HIGH);
}

int checkRotary() {
  
  boolean h1 = (digitalRead(h1pin));
  boolean h2 = (digitalRead(h2pin));
  boolean h3 = (digitalRead(h3pin));
  
  /* 
    so we have a rotary encoder^H^H^H^H^H^H^H^H^H^H cdrom-drive motor,
    with three Hall-effect sensors, which are hooked up to comparator
    gates.  What we wind up with is a truth table that can tell you
    whether we are moving or not, AND which direction, naturally 
    important for use as a human interface control.
    
    So each hall effect is boolean output of the comparator, and we put em
    all together into nowRotary.  Apparently its little-endian.
    h1    0   0   0   0   1   1   1   1
    h2    0   0   1   1   0   0   1   1
    h3    0   1   0   1   0   1   0   1
---------------------------------------
   now    0   1   2   3   4   5   6   7
   

with 
#define h1pin 2
#define h2pin 15
#define h3pin 16

001
101
100
110
010
011

#define h1pin 2
#define h2pin 16
#define h3pin 15
001
011
010
110
100
101

*/

  nowRotary = ((h3 << 2) | (h2 << 1) | h1);
//  Serial.print << "according to cminus, now = " << nowRotary << '\n';
//  Serial.print("according to cminus, now = ");
//  Serial.println(nowRotary);
  
//  nowRotary = (h3+(h2*2)+(h1*4));
//  Serial << "according to ball,   now = " << nowRotary << '\n';
//  Serial.print("according to ball,   now = ");
//  Serial.println(nowRotary);  
  int f = 0;
  
 if (nowRotary == lastRotary) {
   return(0);
 } else {
   
  //Serial.print("according to cminus,   now = ");
  //Serial.println(nowRotary);     
  if (nowRotary > lastRotary) f = 1;
  if (nowRotary < lastRotary) f = -1;
  lastRotary = nowRotary;
  
//  Serial.print("according to old way, f=");
//  Serial.println(f);
/* this doesnt work and i dont understand it
  f = 0;
  if (h1 != h1last) {       // clock pin has changed value... now we can do stuff
    h3 = h1^h2^h3;              // work out direction using an XOR
    if ( h3 ) {
      f=-1;            // non-zero is Anti-clockwise
    } else {
      f=1;            // zero is therefore anti-clockwise
    }
    h1last = h1;            // store current clock state for next pass
  } else {
    f = 0;
  }

  Serial.print ("Jog:: count:");
  Serial.println(f);
*/


/* works! but too fast:  
  switch (nowRotary) {
    case 0:
      f = 0;
      break;
    case 1:
      f = 1;
      break;
    case 5:
      f = 2;
      break;
    case 4:
      f = 3;
      break;
    case 6:
      f = 4;
      break;
    case 2:
      f = 5;
      break;
    case 3:
      f = 6;
      break;
    case 7:
      f = 7;
      break;
  } 
  */
  switch (nowRotary) {
    // cases are in the order in which they occur when rotating the thing.  used to map order into something that is actually in order.  need some fancy bit math i think to do better.
    case 1:
      f = 1;
      break;
    case 5:
      f = 1;
      break;
    case 4:
      f = 3;
      break;
    case 6:
      f = 3;
      break;
    case 2:
      f = 5;
      break;
    case 3:
      f = 5;
      break;
  } 

  int r = 0;
  if (f > lastf) r=1;
  if (f < lastf) r=-1;
  if (f == lastf) r=0;
  // two special cases, basically for overflow
  if (f == 1 && lastf == 5) r=1;
  if (f == 5 && lastf == 1) r=-1;
  lastf = f;
  
  //if (r == 1 ) { digitalWrite(gLed, HIGH); digitalWrite(bLed, LOW); }
  //if (r == -1 ) { digitalWrite(gLed, LOW); digitalWrite(bLed, HIGH); }
  //`Serial.print(r);
  lastRotary = nowRotary;
  return(r);
  
 }  
}


//end rotary stuff






//begin RTC stuff
#include "Wire.h"
#define DS3232_I2C_ADDRESS 0x68

// Convert normal decimal numbers to binary coded decimal
byte decToBcd(byte val)
{
  return ( (val/10*16) + (val%10) );
}

// Convert binary coded decimal to normal decimal numbers
byte bcdToDec(byte val)
{
  return ( (val/16*10) + (val%16) );
}

// Stops the DS3232, but it has the side effect of setting seconds to 0
// Probably only want to use this for testing
/*void stopDS3232()
{
  Wire.beginTransmission(DS3232_I2C_ADDRESS);
  Wire.send(0);
  Wire.send(0x80);
  Wire.endTransmission();
}*/

// 1) Sets the date and time on the DS3232
// 2) Starts the clock
// 3) Sets hour mode to 24 hour clock
// Assumes you're passing in valid numbers
void setDateDS3232(byte second,        // 0-59
                   byte minute,        // 0-59
                   byte hour,          // 1-23
                   byte dayOfWeek,     // 1-7
                   byte dayOfMonth,    // 1-28/29/30/31
                   byte month,         // 1-12
                   byte year)          // 0-99
{
   Wire.beginTransmission(DS3232_I2C_ADDRESS);
   Wire.send(0);
   Wire.send(decToBcd(second));    // 0 to bit 7 starts the clock
   Wire.send(decToBcd(minute));
   Wire.send(decToBcd(hour));      // If you want 12 hour am/pm you need to set
                                   // bit 6 (also need to change readDateDS3232)
   Wire.send(decToBcd(dayOfWeek));
   Wire.send(decToBcd(dayOfMonth));
   Wire.send(decToBcd(month));
   Wire.send(decToBcd(year));
   Wire.endTransmission();

}

// Gets the date and time from the DS3232
void getDateDS3232(byte *second,
          byte *minute,
          byte *hour,
          byte *dayOfWeek,
          byte *dayOfMonth,
          byte *month,
          byte *year)

{
  // Reset the register pointer
  Wire.beginTransmission(DS3232_I2C_ADDRESS);
  Wire.send(0);
  Wire.endTransmission();

  Wire.requestFrom(DS3232_I2C_ADDRESS, 7);

  // A few of these need masks because certain bits are control bits
  *second     = bcdToDec(Wire.receive() & 0x7f);
  *minute     = bcdToDec(Wire.receive());
  *hour       = bcdToDec(Wire.receive() & 0x3f);  // Need to change this if 12 hour am/pm
  *dayOfWeek  = bcdToDec(Wire.receive());
  *dayOfMonth = bcdToDec(Wire.receive());
  *month      = bcdToDec(Wire.receive());
  *year       = bcdToDec(Wire.receive());


}

//end RTC stuff










void rtcSetup() {
  
  byte second, minute, hour, dayOfWeek, dayOfMonth, month, year;
  
  Wire.begin();
  
  //DS3232 RTC setup bits.
  // Change these values to what you want to set your clock to.
  // You probably only want to set your clock once and then remove
  // the setDateDS3232 call.
  second = 30;
  minute = 30;
  hour = 16;
  dayOfWeek = 2;
  dayOfMonth = 24;
  month = 5;
  year = 10;
  //setDateDS3232(second, minute, hour, dayOfWeek, dayOfMonth, month, year);
  
}


byte second, minute, hour, dayOfWeek, dayOfMonth, month, year;

long now = 0;
int errs = 0;

void rtcGrab() {
  
//  now = millis();  
//  if (now - previousMillis > oneSec) {
    // save the last we updated tenths
//    previousMillis = now;
    seconds++;

    if (seconds >= 60) {
      seconds = 0;
      minutes++;
      if (minutes >= 60) {
        minutes = 0;
        hours++;
        if (hours >= 24) {
          hours = 0;
        }
      }
    }
    
/*    if (digitalRead(btnPin))  {
      // toggle dimmer flag
      if (dim ==1) {
          dim = 0;
      } else {
        dim = 1;
      }
    }
*/

  
    getDateDS3232(&second, &minute, &hour, &dayOfWeek, &dayOfMonth, &month, &year);

    if (hour > 23 || minute > 59 || second > 59 || month > 12 || dayOfMonth > 31 || year >> 99 || dayOfWeek > 7) {
      errs++; 
      Serial.print("error #");
      Serial.print(errs, DEC);
      Serial.print(", data= ");
      Serial.print(hour, DEC);
      Serial.print(":");
      Serial.print(minute, DEC);
      Serial.print(":");
      Serial.print(second, DEC);
      Serial.print("  ");
      Serial.print(month, DEC);
      Serial.print("/");
      Serial.print(dayOfMonth, DEC);
      Serial.print("/");
      Serial.print(year, DEC);
      Serial.print("  Day_of_week:");
      Serial.println(dayOfWeek, DEC);
    
    } else {
      /*
      Serial.print(", data= ");
      Serial.print(hour, DEC);
      Serial.print(":");
      Serial.print(minute, DEC);
      Serial.print(":");
      Serial.print(second, DEC);
      Serial.print("  ");
      Serial.print(month, DEC);
      Serial.print("/");
      Serial.print(dayOfMonth, DEC);
      Serial.print("/");
      Serial.print(year, DEC);
      Serial.print("  Day_of_week:");
      Serial.println(dayOfWeek, DEC);
      */
    }



  // hours digiting
  if ( hour < 10 ) {
    hrs1 = 255;
  } else {
    hrs1 = round(hour/10);
  }  
  hrs2 = (hour % 10);

  // minutes digiting
  if ( minute < 10 ) {
    mins1 = 0;
  } else {
    mins1 = round(minute/10);
  }  
  mins2 = (minute % 10);
  
  // seconds digiting
  if ( second < 10 ) {
    secs1 = 0;
  } else {
    secs1 = round(second/10);
  }  
  secs2 = (second % 10);

  lc.setDigit(2,0,hrs1,false);
  lc.setDigit(2,1,hrs2,false);
  lc.setDigit(2,2,mins1,false);
  lc.setDigit(2,3,mins2,false);
  lc.setDigit(2,4,secs1,false);  
  lc.setDigit(2,5,secs2,false);


}
















void setup() {
  Serial.begin(57600);
  pinMode(btnPin, INPUT);
  //attachInterrupt(0, upCount, RISING);
  pinMode(opLed, OUTPUT);
  pinMode(errLed, OUTPUT);

  digitalWrite(errLed, HIGH);
  // The MAX72XX is in power-saving mode on startup,
  // we have to do a wakeup call

  lc.shutdown(0,false);
  // Set the brightness to a medium values
  lc.setIntensity(0,10);
  // and clear the display
  lc.clearDisplay(0);


  lc.shutdown(1,false);
  // Set the brightness to a medium values
  lc.setIntensity(1,10);
  // and clear the display
  lc.clearDisplay(1);

  lc.shutdown(2,false);
  // Set the brightness to a medium values
  lc.setIntensity(2,10);
  // and clear the display
  lc.clearDisplay(2);

  rtcSetup(); 
  rotarySetup(); 
}

void upCount() {
  periodCount++; 
  

}









void updateDisplay() {
  //  lc.clearDisplay(0);
  // delay(delaytime*20);

  //lc.setDigit(1,0,((periodCount / 100000) % 10),false);
  lc.setDigit(1,0,((periodCount / 10000) % 10),false);
  lc.setDigit(1,1,((periodCount / 1000) % 10),false);
  lc.setDigit(1,2,((periodCount / 100) % 10),false);
  lc.setDigit(1,3,((periodCount / 10) % 10),false);
  lc.setDigit(1,4,(periodCount % 10),false);
  


//  binthing = dec_bin(periodCount);
  //lc.setRow(0,0,periodCount);
//  ledbar.setDigit(0,0,(periodCount % 10),false);
//  ledbar.setDigit(0,1,((periodCount / 10) % 10),false);
//  ledbar.setDigit(0,2,((periodCount / 100) % 10),false);  
//  ledbar.setDigit(0,3,((periodCount / 1000) % 10),false);  
//  ledbar.setDigit(0,4,((periodCount / 10000) % 10),false);  
//  ledbar.setDigit(0,5,((periodCount / 100000) % 10),false);  
//  ledbar.setDigit(0,6,((periodCount / 1000000) % 10),false);  


  //    if (opLedState == HIGH) {
  //      periodCount++;
  //    }

}









int lastsecs = 0;
byte shorty;

void loop() { 
  digitalWrite(errLed, HIGH);
  //writeArduinoOn7Segment();
  //scrollDigits();



//  for(int i=0;i<16;i++) {



//  }

/*
  Serial.println("  B00000001");
  ledbar.setRow(0,0,B00000001);
  ledbar.setRow(0,1,B00000001);
  ledbar.setRow(0,2,B00000001);
  ledbar.setRow(0,3,B00000001);
  ledbar.setRow(0,4,B00000001);
  ledbar.setRow(0,5,B00000001);
  ledbar.setRow(0,6,B00000001);
  lc.setDigit(0,5,0,true);
  delay(delaytime);
  Serial.println("  B00000010");  
  ledbar.setRow(0,0,B00000010);
  ledbar.setRow(0,1,B00000010);
  ledbar.setRow(0,2,B00000010);
  ledbar.setRow(0,3,B00000010);
  ledbar.setRow(0,4,B00000010);
  ledbar.setRow(0,5,B00000010);
  ledbar.setRow(0,6,B00000010);
  lc.setDigit(0,5,1,true);  
  delay(delaytime);
  Serial.println("  B00000100");
  ledbar.setRow(0,0,B00000100);
  ledbar.setRow(0,1,B00000100);
  ledbar.setRow(0,2,B00000100);
  ledbar.setRow(0,3,B00000100);
  ledbar.setRow(0,4,B00000100);
  ledbar.setRow(0,5,B00000100);
  ledbar.setRow(0,6,B00000100);
  lc.setDigit(0,5,2,true);  
  delay(delaytime);
  Serial.println("  B00001000");  
  ledbar.setRow(0,0,B00001000);
  ledbar.setRow(0,1,B00001000);
  ledbar.setRow(0,2,B00001000);
  ledbar.setRow(0,3,B00001000);
  ledbar.setRow(0,4,B00001000);
  ledbar.setRow(0,5,B00001000);
  ledbar.setRow(0,6,B00001000);
  lc.setDigit(0,5,3,true);  
  delay(delaytime);
  Serial.println("  B00010000");    
  ledbar.setRow(0,0,B00010000);
  ledbar.setRow(0,1,B00010000);
  ledbar.setRow(0,2,B00010000);
  ledbar.setRow(0,3,B00010000);
  ledbar.setRow(0,4,B00010000);
  ledbar.setRow(0,5,B00010000);
  ledbar.setRow(0,6,B00010000);
  lc.setDigit(0,5,4,true);  
  delay(delaytime);
  Serial.println("  B00100000");    
  ledbar.setRow(0,0,B00100000);
  ledbar.setRow(0,1,B00100000);
  ledbar.setRow(0,2,B00100000);
  ledbar.setRow(0,3,B00100000);
  ledbar.setRow(0,4,B00100000);
  ledbar.setRow(0,5,B00100000);
  ledbar.setRow(0,6,B00100000);
  lc.setDigit(0,5,5,true);  
  delay(delaytime);
  Serial.println("  B01000000");    
  ledbar.setRow(0,0,B01000000);
  ledbar.setRow(0,1,B01000000);
  ledbar.setRow(0,2,B01000000);
  ledbar.setRow(0,3,B01000000);
  ledbar.setRow(0,4,B01000000);
  ledbar.setRow(0,5,B01000000);
  ledbar.setRow(0,6,B01000000);
  lc.setDigit(0,5,6,true);  
  delay(delaytime);
  Serial.println("  B10000000");  
  ledbar.setRow(0,0,B10000000);
  ledbar.setRow(0,1,B10000000);
  ledbar.setRow(0,2,B10000000);
  ledbar.setRow(0,3,B10000000);
  ledbar.setRow(0,4,B10000000);
  ledbar.setRow(0,5,B10000000);
  ledbar.setRow(0,6,B10000000);
  lc.setDigit(0,5,7,true);  
  delay(delaytime);
  Serial.print("waiting a bit");
  delay(3000);

  ledbar.clearDisplay(0);
*/
  
  if ((second > lastsecs) || (second == 0 && lastsecs == 59)) {
    lastsecs = second;
    //Serial.print("second = ");
    //Serial.println(second);

    lc.setRow(0,5,B10101010);
    lc.setRow(0,6,B10101010);

    shorty = ~(byte(second));
    lc.setRow(0,0, shorty);
    shorty = ~(byte(minute));
    lc.setRow(0,1, shorty);
    shorty = ~(byte(hour));
    lc.setRow(0,2, shorty);
  }
  

  
  if (digitalRead(btnPin))  {
    periodCount++;
/*    Serial.print(periodCount);
    Serial.print(" button pushes so far, and digit should be ");
    Serial.println((periodCount / 10) % 10);
    Serial.println(periodCount % 10);
    // toggle opLedState
*/

    if (opLedState == LOW) {
      opLedState = HIGH;
    } else {
      opLedState = LOW;
    }
   
    dec_bin(periodCount);
  
    digitalWrite(opLed, opLedState);
    
  }
  updateDisplay();
  Serial.print("\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\brotary:");
  periodCount += checkRotary();
  Serial.print(periodCount);
  
  rtcGrab();
  //delay(200);
  digitalWrite(errLed, LOW);
  


}
