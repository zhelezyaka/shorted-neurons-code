// Demo of a sketch which sends and receives packets
// 2010-05-17 <jcw@equi4.com> http://opensource.org/licenses/mit-license.php
// $Id: pingPong.pde 5655 2010-05-17 16:13:35Z jcw $

// with thanks to Peter G for creating a test sketch and pointing out the issue
// see http://news.jeelabs.org/2010/05/20/a-subtle-rf12-detail/

#include <RF12.h>
#include <Ports.h>

Port leds (1);
MilliTimer sendTimer;
char start_msg[] = "BLINK";
byte needToSend, remote_node, remote_pin, set_state;
int last_state = LOW;

static void sendLed (byte on) {
    leds.mode(OUTPUT);
    leds.digiWrite(on);
}

static void receiveLed (byte on) {
    leds.mode2(OUTPUT);
    leds.digiWrite2(!on); // inverse, because LED is tied to VCC
}

void setup () {
    Serial.begin(57600);
    Serial.println(57600);
    Serial.println("Send and Receive");
    rf12_initialize(2, RF12_433MHZ, 212);
    
    pinMode(4,INPUT);
    pinMode(5,OUTPUT);
    pinMode(6,OUTPUT);
}

void loop () {
  char *remote_pin_hex;
  
    if (Serial.available() >= 3) {
        //Serial.println("Got serial input");
        rf12_config();
        remote_node = Serial.read();
        remote_pin = Serial.read();
        set_state = Serial.read();
        remote_node = remote_node - '0';
        remote_pin = remote_pin - '0';
        needToSend = 1;
    } else if (digitalRead(4) == HIGH) {
        remote_node = 0x1;
        remote_pin = 0x5;
        set_state = 'H';
        last_state = HIGH;
        needToSend = 1;
    } else if (last_state == HIGH) {
        remote_node = 0x1;
        remote_pin = 0x5;
        set_state = 'l';
        last_state = LOW;
        needToSend = 1;
    }

    if (rf12_recvDone() && rf12_crc == 0) {
        //receiveLed(1);
        if (rf12_len != 8)
          Serial.println("Error: wrong byte count");
        else {
          Serial.print("OK ");
          for (byte i = 0; i < rf12_len; ++i)
              Serial.print(rf12_data[i]);
          Serial.println();
          if (rf12_data[5] == 2 && rf12_data[6] > 2 && rf12_data[6] <= 9) {
            switch (rf12_data[7]) {
              case 'H':
                digitalWrite(rf12_data[6], HIGH);
                break;
              case 'l':
                digitalWrite(rf12_data[6], LOW);
                break;
              default:
                Serial.println("Error: Incorrect status");
            }
          }
            
          //delay(100); // otherwise led blinking isn't visible
          //receiveLed(0);
        }
    }
    
    //if (sendTimer.poll(700))
    //    needToSend = 1;

    if (needToSend && rf12_canSend()) {
        //Serial.println("Preparing to send");
        needToSend = 0;
        
        //sendLed(1);

        byte header = 0 | RF12_HDR_DST | remote_node;
        char payload[] = {'B', 'L', 'I', 'N', 'K', remote_node, remote_pin, set_state};
        Serial.print("Sending: ");
        Serial.print(header);
        for (byte i = 0; i < 8; ++i)
            Serial.print(payload[i]);
        Serial.println();
        rf12_sendStart(header, payload, sizeof payload);

//        rf12_sendStart(0, payload, sizeof payload);
        //delay(100); // otherwise led blinking isn't visible
        //sendLed(0);
        //Serial.println("Sent");
        //Serial.print(last_state);
    }
}
