// Test encrypted communication, receiver side
// 2010-02-21 <jcw@equi4.com> http://opensource.org/licenses/mit-license.php
// $Id: crypRecv.pde 4833 2010-02-21 21:44:24Z jcw $

#include <RF12.h>
#include <Ports.h>

long recvCount;

void setup () {
    Serial.begin(57600);
    Serial.println("\n[crypRecv]");
    rf12_initialize(2, RF12_433MHZ, 33);
    rf12_encrypt(RF12_EEPROM_EKEY);
}

// this test turns encryption on or off after every 10 received packets

void loop () {
    if (rf12_recvDone() && rf12_crc == 0) {
        // good packet received
        if (recvCount < 10)
            Serial.print(' ');
        Serial.print((int) recvCount);
        // report whether incoming was treated as encoded
        //Serial.print(recvCount < 10 ? " (enc)" : "      ");
        Serial.print(" seq ");
        Serial.print(rf12_seq);
        Serial.print(" =");
        
          
        for (byte i = 0; i < rf12_len; ++i) {
            Serial.print(' ');
            Serial.print(rf12_data[i], HEX);
        }
        Serial.println();

        //recvCount = (recvCount + 1) % 20;
        recvCount++;
        // set encryption for receiving (0..9 encrypted, 10..19 plaintext)
        //rf12_encrypt(recvCount < 10 ? RF12_EEPROM_EKEY : 0);
        rf12_encrypt(0);
    }
}