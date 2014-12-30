/*
 *
 * random flicker lamp - candle simulator
 * will need to have defines tweaked to look good
 * sbs/bts, 4-12-14 
 *
 */

// initial settings (see below) ...
#define ZERO_THRESHOLD 2    // threshold for "close enough" for zero crossing
#define MAX_BRILLIANCE 1       // min wait microseconds to turn on lamp - 0 = full brilliance
#define MIN_BRILLIANCE 2500     // max wait microseconds to turn on lamp 
#define MIN_CYCLES 1     // shortest number of cycles to wait until generating new randoms
#define MAX_CYCLES 20   // longest number of cycles to wait until generating new randoms
#define WAIT_LIMIT 1000    // maximum time which we will hold off before turning on triac
#define MOSTLY_ON 500
#define LOW_TIME_LIMIT_DIVISOR 3
#define MOSTLY_ON_MULTIPLIER 6


/*
// more subtle settings ...
#define ZERO_THRESHOLD 10    // threshold for "close enough" for zero crossing
#define MAX_BRILLIANCE 100   // min wait microseconds to turn on lamp - 0 = full brilliance
#define MIN_BRILLIANCE 3000  // max wait microseconds to turn on lamp 
#define MIN_CYCLES 50        // shortest number of cycles to wait until generating new randoms
#define MAX_CYCLES 180       // longest number of cycles to wait until generating new randoms
#define WAIT_LIMIT 100       // maximum time which we will hold off before turning on triac
#define MOSTLY_ON 500
#define LOW_TIME_LIMIT_DIVISOR 8
#define MOSTLY_ON_MULTIPLIER 8
*/

#define TRIAC_TRIGGER_uSECONDS 200 // how long we hold triac up before it triggers
#define ADJ_uSEC_PER_CYCLE 7500

#define BBB_CANDLE true;

#ifdef BBB_CANDLE
const int sensePin = A0;     // sense pin for detecting zero-crossing
const int randWidthPin = 8;
const int zerocross = 12;
const int triacPin = 13;       // triac connected to this pin
const int potPin = A3;
#endif


#ifdef ATTINY85_CANDLE
const int sensePin =  A1;     // sense pin for detecting zero-crossing
const int randWidthPin = 4;
const int zerocross = 1;
const int triacPin = 0;       // triac connected to this pin
const int potPin = A3;
#endif

int maxBrilliance = MAX_BRILLIANCE;
int minBrilliance = maxBrilliance + MIN_BRILLIANCE;

#define CHECK_BIT(var,pos) ((var) & (1<<(pos)))

char binstr[34] = "\0";
void longToBinStr(unsigned long l) {
  for (int b=31; b>=0; b--) {
    // if (bit(l,b))
    if (CHECK_BIT(l, b))
      binstr[31-b] = '1';
    else  
      binstr[31-b] = '0';
  }
  binstr[32] = ' ';
  binstr[33] = '\0';
}

/////////// random function ////////////
char printstr[120];
unsigned long t1 = 0, t2 = 0;
unsigned long rnd() {
  unsigned long b;
  b = t1 ^ (t1 >> 2) ^ (t1 >> 6) ^ (t1 >> 7);
  t1 = (t1 >> 1) | (~b << 31);
  b = (t2 << 1) ^ (t2 << 2) ^ (t1 << 3) ^ (t2 << 4);
  t2 = (t2 << 1) | (~b >> 31);
  /*
  // curious how random number generator works ...
  Serial.println("\norder: t1, t2, b");
  longToBinStr(t1);
  Serial.print(binstr);
  longToBinStr(t2);
  Serial.print(binstr);
  longToBinStr(b);
  Serial.println(binstr);
  Serial.print("value returned (t1^t2): ");
  longToBinStr(t1^t2);
  Serial.println(binstr);
  */
   return t1 ^ t2;
}


////////////////// setup //////////////////

void setup() {
#ifdef BBB_CANDLE
  Serial.begin(57600);
#endif

  pinMode(triacPin, OUTPUT);       // drives optocoupler
  pinMode(zerocross, OUTPUT);    // pulse at zero crossing
  pinMode(randWidthPin, OUTPUT); // on at zero, off after wait (to verify delay with scope)
  pinMode(sensePin, INPUT);      // use for sense pin to watch recified ac, 0 - 0.7v, 60 cy
}


///////////////// loop ///////////////////

void loop() {
  // read the pot to see max brilliance
  maxBrilliance = map(analogRead(potPin), 0, 1023, ADJ_uSEC_PER_CYCLE, 1);
  //minBrilliance = map(maxBrilliance, 0, ADJ_uSEC_PER_CYCLE, MIN_BRILLIANCE, ADJ_uSEC_PER_CYCLE-maxBrilliance);
  minBrilliance = MIN_BRILLIANCE + (maxBrilliance/2);
  if (minBrilliance < MIN_BRILLIANCE) minBrilliance = MIN_BRILLIANCE;
  
  //minBrilliance = MIN_BRILLIANCE + (MIN_BRILLIANCE / (maxBrilliance/ADJ_uSEC_PER_CYCLE));
  //minBrilliance = map(maxBrilliance, 0, ADJ_uSEC_PER_CYCLE, MIN_BRILLIANCE, ADJ_uSEC_PER_CYCLE-maxBrilliance);
  // start by generating two wait times, as described below ...
  // generate next wait time - the time to wait after zero-crossing before turn-on
  digitalWrite(randWidthPin, 1);
  unsigned long rand = rnd();
  unsigned int waitTime = rand % minBrilliance;                         // limit highest value
  if (waitTime < maxBrilliance) waitTime=maxBrilliance;                // limit lowest value
  // Serial.print("rand: ");
  // Serial.print(rand);
 
  // generate next waitCycles - cycles to wait before re-starting loop
  rand = rnd();
  unsigned int waitCycles = rand % MAX_CYCLES;            // limit highest value

  if (waitCycles < MIN_CYCLES) waitCycles=MIN_CYCLES;     // limit lowest value
  if (waitCycles > MAX_CYCLES) waitCycles=MAX_CYCLES;     // limit lowest value
  
  // if (waitCycles > WAIT_LIMIT) waitTime /= 2;          // removed in favor of following ...
  //if (waitTime > (WAIT_LIMIT+maxBrilliance)) waitCycles /= LOW_TIME_LIMIT_DIVISOR;

  if (waitTime < (MOSTLY_ON+maxBrilliance)) waitCycles *= MOSTLY_ON_MULTIPLIER;


  digitalWrite(randWidthPin, 0);
  // Serial.print(", rand: ");
  // Serial.println(rand);

  // both randoms generated and tweaked, print them ...
#ifdef BBB_CANDLE
  Serial.print("new maxBrilliance: ");
  Serial.print(maxBrilliance);
  Serial.print(", minBrilliance: ");
  Serial.print(minBrilliance);
  Serial.print(", waitTime: ");
  Serial.print(waitTime);
  Serial.print(", waitCycles: ");
  Serial.println(waitCycles);
#endif

  // start loop for counting out cycles to run at this delay
  for (int cycles = 0; cycles<waitCycles; cycles++) {
    while (analogRead(sensePin) > ZERO_THRESHOLD);
    // zero crossed, count out wait time
    delayMicroseconds (waitTime);
    
    // turn on led for long enough to trigger triac
    digitalWrite(triacPin, 1);
    delayMicroseconds(TRIAC_TRIGGER_uSECONDS);
    digitalWrite(triacPin, 0);
    // done for now, go back and wait for next zero-crossing
  }
}


  
 
 
 
 




/*
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
    digitalWrite(triacPin, ledState);
    
    
    
  //}
  
}
*/

