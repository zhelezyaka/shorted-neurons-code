#include <stdio.h>
#include "RotaryEncoder.h"

RotaryEncoder knob(6,10,9);

#include <Streaming.h>
#include <PString.h>
// Flash has to come after Streaming because of conflicting definition of endl
#include <Flash.h>
char buffer2[64];
PString rtcString(buffer2, sizeof(buffer2));
byte second, minute, hour, dayOfWeek, dayOfMonth, month, year;

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
unsigned long unixtime = 0;
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



//begin RTC stuff
#include "Wire.h"
#include "RTClib.h"

RTC_DS1307 RTC;

#define DS3232_I2C_ADDRESS 0x68

/* RTC stuff */
void rtcSetup() {
    Wire.begin();
    RTC.begin();
    // use RTC_setter_prog once instead of doing it in here where its easy to run again accidentally
    //RTC.adjust(DateTime("Aug 17 2010", "20:33:00"));
}


void rtcGrab () {
    //chkMem();
    //Serial.println(F("rtc 01"));
    DateTime now = RTC.now();
    //Serial.println(F("rtc 02"));
    rtcString.begin();

    second = now.second();
    minute = now.minute();
    hour = now.hour();
    dayOfWeek = now.dayOfWeek();
    dayOfMonth = now.day();
    month = now.month();
    year = now.year();
    unixtime = now.unixtime();
    
    Serial.print(F(" unix= "));
    Serial.println(now.unixtime());

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
  lc.shutdown(1,false);
  lc.shutdown(2,false);
  // Set the brightness to a medium values
  lc.setIntensity(0,10);
  lc.setIntensity(1,10);
  lc.setIntensity(2,10);
  // and clear the display
  lc.clearDisplay(0);
  lc.clearDisplay(1);
  lc.clearDisplay(2);

  rtcSetup(); 

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
  lc.setDigit(2,0,hrs1,false);
  lc.setDigit(2,1,hrs2,false);
  lc.setDigit(2,2,mins1,false);
  lc.setDigit(2,3,mins2,false);
  lc.setDigit(2,4,secs1,false);  
  lc.setDigit(2,5,secs2,false);
  


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

  //Serial.print("\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\brotary:");
  periodCount += knob.checkRotaryEncoder();
  updateDisplay();
  //Serial.print(periodCount);
  
  rtcGrab();
  //delay(200);
  digitalWrite(errLed, LOW);
  


}
