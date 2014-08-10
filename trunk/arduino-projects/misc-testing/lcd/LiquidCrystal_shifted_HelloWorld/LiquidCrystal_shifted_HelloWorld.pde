/*
  LiquidCrystal Library - Hello World
 
 Demonstrates the use a 16x2 LCD display.  The LiquidCrystal
 library works with all LCD displays that are compatible with the 
 Hitachi HD44780 driver. There are many of them out there, and you
 can usually tell them by the 16-pin interface.
 
 This sketch prints "Hello World!" to the LCD
 and shows the time.
 
  The circuit:
 * LCD RS pin to digital pin 12
 * LCD Enable pin to digital pin 11
 * LCD D4 pin to digital pin 4
 * LCD D5 pin to digital pin 3
 * LCD D6 pin to digital pin 2
 * LCD D7 pin to digital pin 1
 * 10K resistor:
 * ends to +5V and ground
 * wiper to LCD VO pin (pin 3)
 
 Library originally added 18 Apr 2008
 by David A. Mellis
 library modified 5 Jul 2009
 by Limor Fried (http://www.ladyada.net)
 example added 9 Jul 2009
 by Tom Igoe
 modified 25 July 2009
 by David A. Mellis
 
 
 http://www.arduino.cc/en/Tutorial/LiquidCrystal
 */

// include the library code:
#include <LiquidCrystal_shifted.h>


int Dout = 9;
int STR = 8;
int CLK = 7;


void sendByteOut(byte value) {
  shiftOut(Dout, CLK, LSBFIRST, value);
  digitalWrite(STR, LOW);
  delayMicroseconds(50);
  digitalWrite(STR,HIGH);
}

int shifterState = 0;

void digitalWriteShifted(uint8_t pin, boolean pinstate) {
  if ( pin < 20 ) {
    digitalWrite(pin, pinstate);
  } else {
    // Q0 on shift register = fake pin 20
    pin = pin - 20;
    
  } 
  
}







// initialize the library with the numbers of the interface pins
LiquidCrystal lcd(20, 21, 22, 23, 24, 25);

void setup() {
  // set up the LCD's number of rows and columns: 
  lcd.begin(16, 2);
  // Print a message to the LCD.
  lcd.print("hello, world!");
}

void loop() {
  // set the cursor to column 0, line 1
  // (note: line 1 is the second row, since counting begins with 0):
  lcd.setCursor(0, 1);
  // print the number of seconds since reset:
  lcd.print(millis()/1000);
}

