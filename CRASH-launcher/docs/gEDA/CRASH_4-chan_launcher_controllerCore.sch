v 20110115 2
C 40000 40000 0 0 0 title-B.sym
C 43900 45100 1 90 0 RFM12B-1.sym
{
T 45500 49300 5 10 0 0 90 0 1
footprint=MTA100_15
}
N 48800 48000 44200 48000 4
N 44200 48000 44200 43800 4
N 41300 43800 44200 43800 4
N 41300 43800 41300 45100 4
N 40900 45100 40900 43600 4
N 40900 43600 44400 43600 4
N 44400 43600 44400 44900 4
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
C 44600 40700 1 90 0 switch-spst-1.sym
{
T 43900 41100 5 10 0 0 90 0 1
device=SPST
T 44300 41000 5 10 1 1 90 0 1
refdes=swChanSel1
}
C 45100 40700 1 90 0 switch-spst-1.sym
{
T 44400 41100 5 10 0 0 90 0 1
device=SPST
T 44800 41000 5 10 1 1 90 0 1
refdes=swChanSel2
}
C 45600 40700 1 90 0 switch-spst-1.sym
{
T 44900 41100 5 10 0 0 90 0 1
device=SPST
T 45300 41000 5 10 1 1 90 0 1
refdes=swChanSel3
}
C 46100 40700 1 90 0 switch-spst-1.sym
{
T 45400 41100 5 10 0 0 90 0 1
device=SPST
T 45800 41000 5 10 1 1 90 0 1
refdes=swChanSel4
}
C 46900 40700 1 90 0 switch-spst-1.sym
{
T 46200 41100 5 10 0 0 90 0 1
device=SPST
T 46600 41000 5 10 1 1 90 0 1
refdes=swSafety
}
N 42500 40700 46900 40700 4
N 47600 45500 47600 49000 4
N 48800 47600 45900 47600 4
C 42500 41500 1 0 0 switch-pushbutton-no-1.sym
{
T 42700 41800 5 10 1 1 0 0 1
refdes=swFIRE
T 42900 42100 5 10 0 0 0 0 1
device=SWITCH_PUSHBUTTON_NO
}
C 42400 40200 1 0 0 gnd-1.sym
N 42500 40500 42500 41500 4
C 54800 44600 1 90 0 resistor-1.sym
{
T 54400 44900 5 10 0 0 90 0 1
device=RESISTOR
T 54500 44800 5 10 1 1 90 0 1
refdes=R8
T 55000 44900 5 10 1 1 90 0 1
value=10k
}
C 52000 45100 1 270 0 capacitor-1.sym
{
T 52700 44900 5 10 0 0 270 0 1
device=CAPACITOR
T 52500 44900 5 10 1 1 270 0 1
refdes=0.1uf
T 52900 44900 5 10 0 0 270 0 1
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
C 46600 49300 1 180 1 beeper-1.sym
{
T 46900 48400 5 10 0 0 180 6 1
device=BEEPER
T 46900 48600 5 10 1 1 180 6 1
refdes=U3
T 46900 48200 5 10 0 0 180 6 1
symversion=0.1
}
C 46700 48700 1 0 1 gnd-1.sym
N 49500 50100 48900 50100 4
C 54400 47700 1 0 1 led-2.sym
{
T 53800 48000 5 10 1 1 0 6 1
refdes=LED1
T 54300 48300 5 10 0 0 0 6 1
device=LED
}
C 54400 47300 1 0 1 led-2.sym
{
T 54300 47600 5 10 1 1 0 6 1
refdes=D3
T 54300 47900 5 10 0 0 0 6 1
device=LED
}
C 54400 46900 1 0 1 led-2.sym
{
T 54300 47200 5 10 1 1 0 6 1
refdes=D4
T 54300 47500 5 10 0 0 0 6 1
device=LED
}
C 54400 46500 1 0 1 led-2.sym
{
T 54300 46800 5 10 1 1 0 6 1
refdes=D5
T 54300 47100 5 10 0 0 0 6 1
device=LED
}
C 55200 45900 1 0 0 gnd-1.sym
N 46700 45700 46700 42100 4
N 46100 42100 46700 42100 4
N 46100 42100 46100 41500 4
N 45600 41500 45600 42300 4
N 45600 42300 46500 42300 4
N 45100 41500 45100 42500 4
N 45100 42500 46300 42500 4
N 48800 45500 47600 45500 4
N 46900 41500 46900 47800 4
N 46500 47000 46500 42300 4
N 46300 42500 46300 47200 4
N 44600 41500 44600 42700 4
N 44600 42700 46100 42700 4
N 46100 42700 46100 47400 4
N 45900 42900 45900 47600 4
N 45900 42900 43500 42900 4
N 43500 42900 43500 41500 4
C 54400 47700 1 0 0 resistor-1.sym
{
T 54700 48100 5 10 0 0 0 0 1
device=RESISTOR
T 54000 48000 5 10 1 1 0 0 1
refdes=R3
T 54400 47900 5 10 1 1 0 0 1
value=68
}
C 54400 47300 1 0 0 resistor-1.sym
{
T 54700 47700 5 10 0 0 0 0 1
device=RESISTOR
T 54500 47600 5 10 1 1 0 0 1
refdes=R4
T 54900 47500 5 10 1 1 0 0 1
value=68
}
C 54400 46900 1 0 0 resistor-1.sym
{
T 54700 47300 5 10 0 0 0 0 1
device=RESISTOR
T 54500 47200 5 10 1 1 0 0 1
refdes=R5
T 54900 47100 5 10 1 1 0 0 1
value=68
}
C 54400 46500 1 0 0 resistor-1.sym
{
T 54700 46900 5 10 0 0 0 0 1
device=RESISTOR
T 54500 46800 5 10 1 1 0 0 1
refdes=R6
T 54900 46700 5 10 1 1 0 0 1
value=68
}
N 52700 45500 56600 45500 4
N 56600 41600 56600 50800 4
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
CRASH 4-channel launcher: Controller Core
T 53900 39900 9 10 1 0 0 0 2
Kevin Brady / Bryan Schmidt

T 53900 40400 9 10 1 0 0 0 1
0.8 - 20110806
C 54400 46100 1 0 1 led-2.sym
{
T 54300 46400 5 10 1 1 0 6 1
refdes=D6
T 54300 46700 5 10 0 0 0 6 1
device=LED
}
C 54400 46100 1 0 0 resistor-1.sym
{
T 54700 46500 5 10 0 0 0 0 1
device=RESISTOR
T 54500 46400 5 10 1 1 0 0 1
refdes=R7
T 54900 46300 5 10 1 1 0 0 1
value=68
}
T 44300 40200 15 10 1 0 0 0 2
Note: all inputs use AVR
internal 20k pullups
C 52800 50600 1 0 0 capacitor-1.sym
{
T 53000 51300 5 10 0 0 0 0 1
device=CAPACITOR
T 53000 51100 5 10 1 1 0 0 1
refdes=0.1uf
T 53000 51500 5 10 0 0 0 0 1
symversion=0.1
}
N 55300 47800 55300 46200 4
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
N 53700 50800 56600 50800 4
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
N 47400 42000 47500 41600 4
N 47500 41600 49300 41600 4
N 49300 41600 49200 41600 4
N 49200 41600 56600 41600 4
C 47900 50100 1 180 0 3.3V-plus-1.sym
N 42500 48800 42500 49400 4
N 51400 47400 51600 47400 4
N 52500 47800 52500 47200 4
N 52500 47200 51400 47200 4
N 52500 47800 53500 47800 4
N 52700 47400 53500 47400 4
N 52900 47000 53500 47000 4
N 53300 46200 53500 46200 4
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
N 52200 44200 51800 44200 4
N 51400 44700 51800 44700 4
N 51800 44700 51800 44200 4
N 51400 44500 51800 44500 4
N 51400 46200 52700 46200 4
N 52700 46200 52700 45500 4
C 50100 50100 1 0 0 resistor-1.sym
{
T 50400 50500 5 10 0 0 0 0 1
device=RESISTOR
T 50300 50400 5 10 1 1 0 0 1
refdes=R1
}
C 51000 50100 1 0 0 resistor-1.sym
{
T 51300 50500 5 10 0 0 0 0 1
device=RESISTOR
T 51200 50400 5 10 1 1 0 0 1
refdes=R2
}
C 49800 50300 1 270 0 gnd-1.sym
C 51900 50000 1 0 0 battery-2.sym
{
T 52200 50700 5 10 0 0 0 0 1
device=BATTERY
T 52200 50500 5 10 1 1 0 0 1
refdes=B1
T 52200 51300 5 10 0 0 0 0 1
symversion=0.1
}
C 56000 50500 1 180 0 gnd-1.sym
C 53200 49900 1 180 1 LP2950-1.sym
{
T 56400 55900 5 10 0 0 180 6 1
footprint=MTA100_15
T 54500 48900 5 10 1 1 180 0 1
refdes=U1
}
N 51900 50200 51900 49300 4
C 52800 49500 1 180 0 diode-3.sym
{
T 52350 48950 5 10 0 0 180 0 1
device=DIODE
T 52450 49050 5 10 1 1 180 0 1
refdes=D1
}
N 52800 49300 53200 49300 4
C 52700 49300 1 270 1 capacitor-2.sym
{
T 53400 49500 5 10 0 0 270 6 1
device=POLARIZED_CAPACITOR
T 53100 49700 5 8 1 1 270 6 1
refdes=C1
T 53600 49500 5 10 0 0 270 6 1
symversion=0.1
T 52600 49900 5 8 1 1 270 0 1
value=47uF
}
N 52800 50200 55900 50200 4
N 54000 49900 54000 50200 4
C 56000 48700 1 180 0 3.3V-plus-1.sym
N 54800 49300 55900 49300 4
C 55700 50200 1 270 0 capacitor-1.sym
{
T 56400 50000 5 10 0 0 270 0 1
device=CAPACITOR
T 56100 49700 5 10 1 1 270 0 1
refdes=C3
T 56600 50000 5 10 0 0 270 0 1
symversion=0.1
}
N 55800 48700 55800 49300 4
N 51000 49200 51600 49200 4
N 51000 49200 51000 50200 4
T 51500 50100 9 10 1 0 270 0 2
BATT
sense
T 53500 48800 9 8 1 0 0 0 1
3.3v LDO
N 51600 47400 51600 49200 4
C 46400 35200 1 0 0 ICSP_header-1.sym
{
T 49500 30000 5 10 0 0 0 0 1
footprint=MTA100_15
T 47200 36300 5 10 0 1 0 0 1
device=HEADER10
T 47900 43200 5 10 1 1 0 1 1
refdes=J?
}
C 54900 49300 1 270 1 capacitor-2.sym
{
T 55600 49500 5 10 0 0 270 6 1
device=POLARIZED_CAPACITOR
T 55300 49700 5 8 1 1 270 6 1
refdes=C2
T 55800 49500 5 10 0 0 270 6 1
symversion=0.1
T 54800 49900 5 8 1 1 270 0 1
value=47uF
}
N 46900 47800 48800 47800 4
