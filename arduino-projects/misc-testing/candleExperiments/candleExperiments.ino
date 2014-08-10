#include <LiquidCrystal.h>

/* Blink without Delay
 
 Turns on and off a light emitting diode(LED) connected to a digital  
 pin, without using the delay() function.  This means that other code
 can run at the same time without being interrupted by the LED code.
 
  The circuit:
 * LED attached from pin 13 to ground.
 * Note: on most Arduinos, there is already an LED on the board
 that's attached to pin 13, so no hardware is needed for this example.
 
 
 created 2005
 by David A. Mellis
 modified 17 Jun 2009
 by Tom Igoe
 
 http://www.arduino.cc/en/Tutorial/BlinkWithoutDelay
 */

// constants won't change. Used here to 
// set pin numbers:
const int ledPin =  9;      // the number of the LED pin
const int adjPin =  3;      // the number of the LED pin

// Variables will change:
int ledState = LOW;             // ledState used to set the LED
long previousMillis = 0;        // will store last time LED was updated

// the follow variables is a long because the time, measured in miliseconds,
// will quickly become a bigger number than can be stored in an int.
long interval = 1000;           // interval at which to blink (milliseconds)

void setup() {
  // set the digital pin as output:
  pinMode(ledPin, OUTPUT);      
  pinMode(adjPin, INPUT);      
}

void loop()
{
  // here is where you'd put code that needs to be running all the time.

  // check to see if it's time to blink the LED; that is, is the difference
  // between the current time and last time we blinked the LED bigger than
  // the interval at which we want to blink the LED.
  //if (millis() - previousMillis > interval) {
    // save the last time you blinked the LED 
    //previousMillis = millis();   

    // if the LED is off turn it on and vice-versa:
    if (ledState == HIGH){
      ledState = LOW;
      delay(random(64,1536));
    }
    else{
      ledState = HIGH;
      delay(random(0,48));
    }
    //int adj = analogRead(adjPin);
    //interval = random(80,adj*2);
    // set the LED with the ledState of the variable:
    digitalWrite(ledPin, ledState);
    
    
    
  //}
  
}