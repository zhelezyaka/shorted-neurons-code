/* trackuino copyright (C) 2010  EA5HAV Javi
 *
 * This program is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public License
 * as published by the Free Software Foundation; either version 2
 * of the License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
 */

#include "config.h"
#include "ax25.h"
#include "gps.h"
#include "aprs.h"
#include "sensors.h"
#include <stdlib.h>

void aprs_send(Gps &gps)
{
  char temp[12];                   // Temperature (int/ext)
  const struct s_address addresses[] = { 
    {D_CALLSIGN, D_CALLSIGN_ID},  // Destination callsign
    {S_CALLSIGN, S_CALLSIGN_ID},  // Source callsign (-11 = balloon, -9 = car)
#ifdef DIGI_PATH1
    {DIGI_PATH1, DIGI_PATH1_TTL}, // Digi1 (first digi in the chain)
#endif
#ifdef DIGI_PATH2
    {DIGI_PATH2, DIGI_PATH2_TTL}, // Digi2 (second digi in the chain)
#endif
  };

  ax25_send_header(addresses, sizeof(addresses)/sizeof(s_address));
  ax25_send_string("/");              // Report w/ timestamp, no APRS messaging. $ = NMEA raw data
  // ax25_send_string("021709z");     // 021709z = 2nd day of the month, 17:09 zulu (UTC/GMT)
  ax25_send_string(gps.get_time());   // 170915h = 17h:09m:15s zulu (not allowed in Status Reports)
  ax25_send_string(gps.get_lat());    // Lat: 38deg and 22.20 min (.20 are NOT seconds, but 1/100th of minutes)
  ax25_send_string("/");              // Symbol table
  ax25_send_string(gps.get_lon());    // Lon: 000deg and 25.80 min
  ax25_send_string("O");              // Symbol: O=balloon, -=QTH
  ax25_send_string(gps.get_course()); // Course (degrees)
  ax25_send_string("/");              // and
  ax25_send_string(gps.get_speed());  // speed (knots)
  ax25_send_string("/A=");            // Altitude (feet). Goes anywhere in the comment area
  ax25_send_string(gps.get_altitude());
  ax25_send_string("/Ti=");
  ax25_send_string(itoa(sensors_int_lm60(), temp, 10));
  ax25_send_string("/Te=");
  ax25_send_string(itoa(sensors_ext_lm60(), temp, 10));
  ax25_send_string(" ");
  ax25_send_string(APRS_COMMENT);     // Comment
  ax25_send_footer();
  ax25_flush_frame();                 // Tell the modem to go
}
