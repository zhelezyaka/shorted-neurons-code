v 20091004 2
C 40000 40000 0 0 0 title-B.sym
C 43900 45100 1 90 0 RFM12B-1.sym
{
T 45500 49300 5 10 0 0 90 0 1
footprint=MTA100_15
}
N 48800 48000 44200 48000 4
N 44200 48000 44200 44800 4
N 41300 44800 44200 44800 4
N 41300 44800 41300 45100 4
N 40900 45100 40900 44500 4
N 40900 44500 44400 44500 4
N 44400 44500 44400 44900 4
N 44400 44900 48800 44900 4
N 41700 48800 41700 50200 4
N 41700 50200 44800 50200 4
N 44800 50200 44800 45100 4
N 44800 45100 48800 45100 4
N 40900 48800 40900 50600 4
N 40900 50600 45200 50600 4
N 45200 50600 45200 45300 4
N 45200 45300 48800 45300 4
N 48800 44700 45000 44700 4
N 45000 44700 45000 50400 4
N 41300 50400 45000 50400 4
N 41300 50400 41300 48800 4
C 43200 44800 1 0 0 gnd-1.sym
C 42600 49700 1 180 0 gnd-1.sym
C 43700 49500 1 270 0 3.3V-plus-1.sym
C 49300 50100 1 90 0 connector6-2.sym
{
T 46400 50800 5 10 1 1 90 6 1
refdes=CONN1
T 46450 50400 5 10 0 0 90 0 1
device=CONNECTOR_6
T 46250 50400 5 10 0 0 90 0 1
footprint=SIP6N
}
C 53500 44100 1 180 0 3.3V-plus-1.sym
N 53300 45100 51400 45100 4
N 51800 45100 51800 45700 4
N 51800 45400 51400 45400 4
N 48500 48400 48800 48400 4
N 48500 48400 48500 50100 4
N 48100 48200 48800 48200 4
N 48100 48200 48100 50100 4
C 46800 49800 1 0 0 gnd-1.sym
T 46700 50600 7 10 1 0 0 0 1
TTL Serial IO / prog header
N 48800 45700 46700 45700 4
N 48800 47000 46500 47000 4
N 48800 47200 46300 47200 4
N 48800 47400 46100 47400 4
N 46600 47800 48800 47800 4
N 46600 47800 46600 49000 4
N 48800 47600 45900 47600 4
C 54800 44600 1 90 0 resistor-1.sym
{
T 54400 44900 5 10 0 0 90 0 1
device=RESISTOR
T 54500 44800 5 10 1 1 90 0 1
refdes=R4
T 55000 44900 5 10 1 1 90 0 1
value=10k
}
C 52300 45100 1 270 0 capacitor-1.sym
{
T 53000 44900 5 10 0 0 270 0 1
device=CAPACITOR
T 52800 44900 5 10 1 1 270 0 1
refdes=0.1uf
T 53200 44900 5 10 0 0 270 0 1
symversion=0.1
}
C 51700 43900 1 0 0 gnd-1.sym
C 42500 49100 1 0 0 capacitor-1.sym
{
T 42700 49800 5 10 0 0 0 0 1
device=CAPACITOR
T 42700 49600 5 10 1 1 0 0 1
refdes=0.1uf
T 42700 50000 5 10 0 0 0 0 1
symversion=0.1
}
N 43500 49300 43500 49000 4
N 43500 49000 42900 49000 4
N 42900 49000 42900 48800 4
N 43700 49300 43400 49300 4
N 51400 46400 53300 46400 4
N 53300 46400 53300 46200 4
N 51400 46600 53500 46600 4
N 51400 46800 52900 46800 4
N 52900 46800 52900 47000 4
N 52700 47000 52700 47400 4
N 52700 47000 51400 47000 4
C 47600 49300 1 180 0 beeper-1.sym
{
T 47300 48400 5 10 0 0 180 0 1
device=BEEPER
T 47300 48600 5 10 1 1 180 0 1
refdes=U3
T 47300 48200 5 10 0 0 180 0 1
symversion=0.1
}
C 47500 48700 1 0 0 gnd-1.sym
N 49500 50100 48900 50100 4
N 46700 45700 46700 43300 4
N 44600 43300 46700 43300 4
N 44600 43300 44600 43100 4
N 44200 43100 44200 43500 4
N 44200 43500 46500 43500 4
N 43800 43100 43800 43700 4
N 43800 43700 46300 43700 4
N 48800 45500 46900 45500 4
N 46900 45500 46900 43100 4
N 46500 47000 46500 43500 4
N 46300 43700 46300 47200 4
N 43400 43100 43400 43900 4
N 43400 43900 46100 43900 4
N 46100 43900 46100 47400 4
N 45900 44100 45900 47600 4
N 45900 44100 43000 44100 4
N 43000 44100 43000 43100 4
N 51400 46200 52800 46200 4
N 52800 46200 52800 45500 4
N 52800 45500 56800 45500 4
N 56800 41600 56800 50800 4
N 49500 50800 49500 50100 4
N 54700 44600 53300 44600 4
N 53300 44100 53300 45100 4
C 50600 43500 1 270 0 crystal-1.sym
{
T 51100 43300 5 10 0 0 270 0 1
device=CRYSTAL
T 50300 43100 5 10 1 1 0 0 1
refdes=X1
T 51300 43300 5 10 0 0 270 0 1
symversion=0.1
}
N 48600 44500 48800 44500 4
N 50700 43900 48800 43900 4
N 48800 43900 48800 44300 4
T 50000 40700 9 10 1 0 0 0 1
CRASH 4-channel launcher: rackUnit Core
T 53900 39900 9 10 1 0 0 0 2
Bryan Schmidt

T 53900 40400 9 10 1 0 0 0 1
0.7 - 20110731
C 50100 50000 1 0 0 resistor-1.sym
{
T 50400 50400 5 10 0 0 0 0 1
device=RESISTOR
T 50300 50300 5 10 1 1 0 0 1
refdes=R2
}
C 51000 50000 1 0 0 resistor-1.sym
{
T 51300 50400 5 10 0 0 0 0 1
device=RESISTOR
T 51200 50300 5 10 1 1 0 0 1
refdes=R3
}
C 49800 50200 1 270 0 gnd-1.sym
C 51900 49900 1 0 0 battery-2.sym
{
T 52200 50600 5 10 0 0 0 0 1
device=BATTERY
T 52200 50400 5 10 1 1 0 0 1
refdes=B1
T 52200 51200 5 10 0 0 0 0 1
symversion=0.1
}
C 56600 50400 1 180 0 gnd-1.sym
T 51500 50000 9 10 1 0 270 0 2
BATT
sense
C 52800 50600 1 0 0 capacitor-1.sym
{
T 53000 51300 5 10 0 0 0 0 1
device=CAPACITOR
T 53000 51100 5 10 1 1 0 0 1
refdes=0.1uf
T 53000 51500 5 10 0 0 0 0 1
symversion=0.1
}
C 50700 42600 1 0 0 capacitor-1.sym
{
T 50900 43300 5 10 0 0 0 0 1
device=CAPACITOR
T 51000 42400 5 10 1 1 0 0 1
refdes=22pf
T 50900 43500 5 10 0 0 0 0 1
symversion=0.1
}
C 50700 43300 1 0 0 capacitor-1.sym
{
T 50900 44000 5 10 0 0 0 0 1
device=CAPACITOR
T 51000 43800 5 10 1 1 0 0 1
refdes=22pf
T 50900 44200 5 10 0 0 0 0 1
symversion=0.1
}
C 51900 43100 1 90 0 gnd-1.sym
N 51600 42800 51600 43500 4
N 49500 50800 52800 50800 4
N 53700 50800 56800 50800 4
N 50700 43900 50700 43500 4
N 48600 43700 48600 44500 4
N 50200 42800 50700 42800 4
N 50200 42800 50200 43700 4
N 48600 43700 50200 43700 4
N 47600 42800 47600 44900 4
N 47400 42400 47600 42400 4
N 47400 42400 47400 44700 4
N 49800 43500 48400 43500 4
N 48400 43500 48400 45100 4
N 49000 42400 49800 42400 4
N 49800 42400 49800 43500 4
C 49100 43000 1 270 0 3.3V-plus-1.sym
C 49400 41900 1 90 0 gnd-1.sym
N 49000 42800 49100 42800 4
N 49000 42000 49100 42000 4
N 47600 42000 47400 42000 4
N 47400 42000 47400 41600 4
N 47400 41600 56800 41600 4
C 47900 50100 1 180 0 3.3V-plus-1.sym
N 42500 48800 42500 49400 4
N 51400 47400 51500 47400 4
N 52500 47800 52500 47200 4
N 52500 47200 51400 47200 4
N 52500 47800 53200 47800 4
N 52700 47400 53500 47400 4
N 52900 47000 53500 47000 4
N 53300 46200 53500 46200 4
C 42000 43100 1 270 0 ULN2003-1.sym
{
T 45640 41550 5 10 0 0 270 0 1
device=ULN2003
T 45440 41550 5 10 0 0 270 0 1
footprint=DIP16
T 45400 41400 5 10 1 1 270 6 1
refdes=U5
}
N 46900 43100 45000 43100 4
C 40400 42100 1 270 0 gnd-1.sym
C 42400 41100 1 180 0 12V-plus-1.sym
N 40700 40500 40700 43100 4
N 40700 43100 42200 43100 4
C 42000 40600 1 180 0 led-2.sym
{
T 41200 40300 5 10 1 1 180 0 1
refdes=D2
T 41900 40000 5 10 0 0 180 0 1
device=LED
}
C 42000 40400 1 0 0 resistor-1.sym
{
T 42300 40800 5 10 0 0 0 0 1
device=RESISTOR
T 42500 40700 5 10 1 1 0 0 1
refdes=R5
T 42400 40300 5 10 1 1 0 0 1
value=220
}
N 43000 41100 43000 40500 4
N 43000 40500 42900 40500 4
N 41100 40500 40700 40500 4
C 43700 41100 1 270 0 output-1.sym
{
T 44000 41000 5 10 0 0 90 8 1
device=OUTPUT
T 43900 40200 5 10 1 1 270 8 1
refdes=ch   1
}
C 43300 41100 1 270 0 output-1.sym
{
T 43600 41000 5 10 0 0 90 8 1
device=OUTPUT
T 43500 40100 5 10 1 1 270 8 1
refdes=MASTER
}
C 44100 41100 1 270 0 output-1.sym
{
T 44400 41000 5 10 0 0 90 8 1
device=OUTPUT
T 44300 40200 5 10 1 1 270 8 1
refdes=ch   2
}
C 44500 41100 1 270 0 output-1.sym
{
T 44800 41000 5 10 0 0 90 8 1
device=OUTPUT
T 44700 40200 5 10 1 1 270 8 1
refdes=ch   3
}
C 44900 41100 1 270 0 output-1.sym
{
T 45200 41000 5 10 0 0 90 8 1
device=OUTPUT
T 45100 40200 5 10 1 1 270 8 1
refdes=ch   4
}
T 45300 40100 9 10 1 0 0 0 2
outputs to channel 
and master relay coils
C 54300 47300 1 0 1 input-1.sym
{
T 54300 47600 5 10 0 0 0 6 1
device=INPUT
T 54400 47400 5 8 1 1 0 1 1
refdes=analog_channel_1_sense
}
C 54300 46900 1 0 1 input-1.sym
{
T 54300 47200 5 10 0 0 0 6 1
device=INPUT
T 54400 47000 5 8 1 1 0 1 1
refdes=analog_channel_2_sense
}
C 54300 46500 1 0 1 input-1.sym
{
T 54300 46800 5 10 0 0 0 6 1
device=INPUT
T 54400 46600 5 8 1 1 0 1 1
refdes=analog_channel_3_sense
}
C 54300 46100 1 0 1 input-1.sym
{
T 54300 46400 5 10 0 0 0 6 1
device=INPUT
T 54400 46200 5 8 1 1 0 1 1
refdes=analog_channel_4_sense
}
T 41700 40100 9 10 1 0 0 0 1
link/Act LED
C 54100 49800 1 180 1 LP2950-1.sym
{
T 57300 55800 5 10 0 0 180 6 1
footprint=MTA100_15
T 55400 48800 5 10 1 1 180 0 1
refdes=U1
}
N 51900 50100 51900 49200 4
C 52800 49400 1 180 0 diode-3.sym
{
T 52350 48850 5 10 0 0 180 0 1
device=DIODE
T 52450 48950 5 10 1 1 180 0 1
refdes=D1
}
N 52800 49200 54100 49200 4
N 53700 50100 56500 50100 4
N 54900 49800 54900 50100 4
C 56500 48600 1 180 0 3.3V-plus-1.sym
N 55700 49200 56500 49200 4
C 56300 50100 1 270 0 capacitor-1.sym
{
T 57000 49900 5 10 0 0 270 0 1
device=CAPACITOR
T 56600 49600 5 10 1 1 270 0 1
refdes=C3
T 57200 49900 5 10 0 0 270 0 1
symversion=0.1
}
N 56300 48600 56300 49200 4
T 54500 48700 9 8 1 0 0 0 1
3.3v LDO
N 51500 47400 51500 49100 4
N 51000 49100 51500 49100 4
N 51000 49100 51000 50100 4
C 53700 50200 1 180 0 resistor-1.sym
{
T 53400 49800 5 10 0 0 180 0 1
device=RESISTOR
T 53300 50400 5 10 1 1 180 0 1
refdes=R1
T 53400 50000 5 10 1 1 180 0 1
value=10k
}
C 53600 48800 1 90 1 TSC888-1.sym
{
T 60900 45600 5 10 0 0 270 2 1
footprint=MTA100_15
T 52900 48100 5 10 1 1 270 2 1
refdes=U4
T 53605 48805 5 10 0 0 270 2 1
device=TSC888
}
C 53900 48000 1 0 0 gnd-1.sym
N 54000 48300 53600 48300 4
C 52300 48300 1 180 0 3.3V-plus-1.sym
N 52100 48300 52800 48300 4
N 53400 48800 53400 49600 4
N 53400 49600 53700 49600 4
N 53700 49600 53700 50100 4
N 53000 48800 53000 49600 4
N 53000 49600 52800 49600 4
N 52800 49600 52800 50100 4
C 48800 44200 1 0 0 ATmega328_DIP-1.sym
{
T 48900 49100 5 10 0 0 0 0 1
footprint=DIP28N
T 51100 48700 5 10 1 1 0 6 1
refdes=U2
T 48900 49700 5 10 0 0 0 0 1
device=ATmega328
}
N 51800 45700 51400 45700 4
N 52500 44200 51800 44200 4
N 51400 44700 51800 44700 4
N 51800 44700 51800 44200 4
N 51400 44500 51800 44500 4
C 47600 41700 1 0 0 ICSP_header-1.sym
{
T 50700 36500 5 10 0 0 0 0 1
footprint=MTA100_15
T 48400 42800 5 10 0 1 0 0 1
device=HEADER10
T 48500 43100 5 10 1 1 0 1 1
refdes=J?
}
C 55700 49200 1 270 1 capacitor-2.sym
{
T 56400 49400 5 10 0 0 270 6 1
device=POLARIZED_CAPACITOR
T 56100 49600 5 8 1 1 270 6 1
refdes=C2
T 56600 49400 5 10 0 0 270 6 1
symversion=0.1
T 55600 49800 5 8 1 1 270 0 1
value=0.22F
}
C 53900 49200 1 270 1 capacitor-2.sym
{
T 54600 49400 5 10 0 0 270 6 1
device=POLARIZED_CAPACITOR
T 54300 49600 5 8 1 1 270 6 1
refdes=C1
T 54800 49400 5 10 0 0 270 6 1
symversion=0.1
T 53800 49800 5 8 1 1 270 0 1
value=47uF
}
