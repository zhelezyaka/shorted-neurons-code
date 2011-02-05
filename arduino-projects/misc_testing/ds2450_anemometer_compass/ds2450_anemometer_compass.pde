#include <OneWire.h>
#include <DS2450.h>
#include <Streaming.h>
#include <PString.h>
// Flash has to come after Streaming because of conflicting definition of endl
#include <Flash.h>


DeviceAddress HVAC = { 0x20, 0x48, 0xC6, 0x0, 0x0, 0x0, 0x0, 0x85 };
//20 48 C6 0 0 0 0 85

int vrange = 1;        // 0 = 2.56v, 1 = 5.12v
int rez = 4;           // rez = 0-f bits where 0 = 16
bool parasite = 1;     // parasite power?
float vdiv = 0.5;      // voltage divider circuit value?


OneWire oneWire(8);
ds2450 my2450(&oneWire, HVAC, vrange, rez, parasite, vdiv);

void setup(void) {
  Serial.begin(57600);
  my2450.begin();
}

int8_t compass = -2;
char compassChars[8];
PString compassString(compassChars, sizeof(compassChars));


void loop(void) {
  my2450.measure();
  Serial.print("\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b");

//  works at 4 bits rez
  unsigned int a = (my2450.voltChA() / 16834) * 256;
  unsigned int b = (my2450.voltChB() / 16834) * 128;
  unsigned int c = (my2450.voltChC() / 16834) * 32;
  unsigned int d = (my2450.voltChD() / 16834)*4;
  

/*
  unsigned int a = (my2450.voltChA() / 16834) *512;
  unsigned int b = (my2450.voltChB() / 16834) *64;
  unsigned int c = (my2450.voltChC() / 16834) *8;
  unsigned int d = (my2450.voltChD() / 16834)*1;
*/
/*
  Serial.print("chA=");
  Serial.print(a,DEC);
  Serial.print(" chB=");
  Serial.print(b,DEC);
  Serial.print(" chC=");
  Serial.print(c,DEC);
  Serial.print(" chD=");
  Serial.print(d,DEC);
*/
  Serial.print("    u?=");
  unsigned int u=(a+b+c+d);
  Serial.print(u);

  compassString.begin();      
  switch (u) {
    case 65349:
      compassString << "N";
      compass=0;
      break;
    case 65411:
      compassString << "NNE";
      compass=1;
      break;
    case 65396:
      compassString << "NE";
      compass=2;
      break;
    case 65520:
      compassString << "ENE";
      compass=3;
      break;
    case 65458:
      compassString << "E";
      compass=4;
      break;
    case 65465:
      compassString << "ESE";
      compass=5;
      break;
    case 65341:
      compassString << "SE";
      compass=6;
      break;
    case 65299:
      compassString << "SSE";
      compass=7;
      break;
    case 65403:
      compassString << "S";
      compass=8;
      break;
    case 65179:
      compassString << "SSW";
      compass=9;
      break;
    case 78:
      compassString << "SW";
      compass=10;
      break;
    case 64961:
      compassString << "WSW";
      compass=11;
      break;
    case 358:
      compassString << "W";
      compass=12;
      break;
    case 359:
      compassString << "WNW";
      compass=13;
      break;
    case 65335:
      compassString << "NW";
      compass=14;
      break;
    case 65350:
      compassString << "NNW";
      compass=15;
      break;
    default:
      compassString << "unknown";
      compass=-1;
      Serial << "UNKNOWN!!!! u=" << u << endl;
      break;
  }

  Serial << " Compass direction = " << compass << ", ";  
  Serial.print(compassString);
  
/*
  Serial.print("chA = ");
  Serial.print(my2450.voltChA());
  Serial.print("     chB = ");
  Serial.print(my2450.voltChB());
  Serial.print("     chC = ");
  Serial.print(my2450.voltChC());
  Serial.print("     chD = ");
  Serial.print(my2450.voltChD());
*/

  Serial.print("        ");
  delay(100);
}
