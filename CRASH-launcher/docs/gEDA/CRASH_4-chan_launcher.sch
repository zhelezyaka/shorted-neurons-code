v 20100214 2
C 40000 40000 0 0 0 title-B.sym
C 48600 50600 1 0 0 12V-plus-1.sym
C 52200 43200 1 0 0 coil-2.sym
{
T 52400 43700 5 10 0 0 0 0 1
device=COIL
T 52400 43500 5 10 1 1 0 0 1
refdes=igniter
T 52400 43900 5 10 0 0 0 0 1
symversion=0.1
}
C 46900 43900 1 0 0 relay-1.sym
{
T 47600 46250 5 10 0 1 0 0 1
device=RELAY
T 48700 46250 5 10 1 1 0 0 1
refdes=U2
}
C 50500 46900 1 0 0 resistor-1.sym
{
T 50800 47300 5 10 0 0 0 0 1
device=RESISTOR
T 50700 47200 5 10 1 1 0 0 1
refdes=R3
T 50900 46700 5 10 1 1 0 0 1
value=10k
}
C 53700 45600 1 90 0 resistor-1.sym
{
T 53300 45900 5 10 0 0 90 0 1
device=RESISTOR
T 53400 45800 5 10 1 1 90 0 1
refdes=R5
T 53700 45800 5 10 1 1 0 0 1
value=10k
}
C 52700 47200 1 180 0 diode-3.sym
{
T 52250 46650 5 10 0 0 180 0 1
device=DIODE
T 52350 46750 5 10 1 1 180 0 1
refdes=D1
}
N 48400 43300 52200 43300 4
N 53200 43300 55700 43300 4
C 55600 43000 1 0 0 gnd-1.sym
C 53500 45300 1 0 0 gnd-1.sym
C 52700 46900 1 0 0 resistor-1.sym
{
T 53000 47300 5 10 0 0 0 0 1
device=RESISTOR
T 52900 47200 5 10 1 1 0 0 1
refdes=R4
T 53000 46700 5 10 1 1 0 0 1
value=39k
}
N 53600 46500 53600 47000 4
C 46200 41600 1 0 0 darlington_NPN-1.sym
{
T 46600 41870 5 10 1 1 0 0 1
refdes=T1
}
T 47600 47900 8 10 0 0 0 0 1
device=darlington, NPN
T 47600 47500 8 10 0 0 0 0 1
footprint=TO92
N 47200 48000 50500 48000 4
N 42600 42500 46200 42500 4
C 54200 46900 1 0 0 output-1.sym
{
T 54300 47200 5 10 0 0 0 0 1
device=OUTPUT
T 56100 47300 5 10 1 1 180 0 1
refdes=analog_Channel_N_sense
}
C 45200 49500 1 180 0 output-1.sym
{
T 45100 49200 5 10 0 0 180 0 1
device=OUTPUT
T 43600 49100 5 10 1 1 0 0 1
refdes=analog_HV_sense
}
C 41800 42400 1 0 0 input-1.sym
{
T 41800 42700 5 10 0 0 0 0 1
device=INPUT
T 41200 42200 5 10 1 1 0 0 1
refdes=D_channel_N_firePin
}
T 50000 40700 9 12 1 0 0 0 1
CRASH Launcher - per-channel continuity sense and ignition relay
T 53900 40400 9 10 1 0 0 0 1
1.0
T 53900 40100 9 10 1 0 0 0 1
Bryan Schmidt
T 53000 48100 8 10 0 0 0 0 1
device=RESISTOR
C 45500 45000 1 270 0 led-2.sym
{
T 43600 44500 5 10 1 1 0 0 1
refdes=LED_N_firing (optional)
}
T 53700 48300 8 10 0 0 0 0 1
device=LED
C 46300 49300 1 0 0 resistor-1.sym
{
T 46600 49700 5 10 0 0 0 0 1
device=RESISTOR
T 46500 49600 5 10 1 1 0 0 1
refdes=R1
T 46700 49100 5 10 1 1 0 0 1
value=62k
}
C 47200 49300 1 0 0 resistor-1.sym
{
T 47500 49700 5 10 0 0 0 0 1
device=RESISTOR
T 47400 49600 5 10 1 1 0 0 1
refdes=R2
T 47600 49100 5 10 1 1 0 0 1
value=10k
}
C 48300 49100 1 0 0 gnd-1.sym
N 48400 49400 48100 49400 4
N 45200 49400 46300 49400 4
B 43100 48800 5700 1500 3 0 0 1 -1 100 0 -1 -1 -1 -1 -1
C 53100 44200 1 0 0 resistor-1.sym
{
T 53400 44600 5 10 0 0 0 0 1
device=RESISTOR
T 53300 44500 5 10 1 1 0 0 1
refdes=R8
T 53500 44000 5 10 1 1 0 0 1
value=1k
}
C 52200 44100 1 0 0 diode-3.sym
{
T 52650 44650 5 10 0 0 0 0 1
device=DIODE
T 52550 44550 5 10 1 1 0 0 1
refdes=D3
}
N 54000 44300 54000 43300 4
C 44400 41600 1 90 0 resistor-1.sym
{
T 44000 41900 5 10 0 0 90 0 1
device=RESISTOR
T 44100 41800 5 10 1 1 90 0 1
refdes=R10
T 44600 42000 5 10 1 1 90 0 1
value=20k
}
C 44200 40400 1 0 0 gnd-1.sym
N 48400 43300 48400 43900 4
N 45600 46700 47200 46700 4
N 54200 47000 53600 47000 4
N 51400 47000 51400 43300 4
N 52200 44300 51400 44300 4
B 51800 45000 4400 2800 3 0 0 1 -1 100 0 -1 -1 -1 -1 -1
N 51400 47000 51800 47000 4
C 47100 40400 1 0 0 gnd-1.sym
C 49200 45900 1 270 0 diode-3.sym
{
T 49750 45450 5 10 0 0 270 0 1
device=DIODE
T 49850 45450 5 10 1 1 180 0 1
refdes=D2
}
N 49400 45900 49400 46700 4
N 49400 46700 48400 46700 4
C 49300 45000 1 270 0 resistor-1.sym
{
T 49700 44700 5 10 0 0 270 0 1
device=RESISTOR
T 49600 44800 5 10 1 1 270 0 1
refdes=R7
T 49100 44600 5 10 1 1 270 0 1
value=1k
}
N 49400 44100 49400 43300 4
N 47200 40700 47200 41600 4
N 44300 40700 44300 41600 4
C 45500 42900 1 0 0 gnd-1.sym
C 45700 45000 1 90 0 resistor-1.sym
{
T 45300 45300 5 10 0 0 90 0 1
device=RESISTOR
T 45400 45200 5 10 1 1 90 0 1
refdes=R6
T 45900 45400 5 10 1 1 90 0 1
value=20k
}
N 45600 46700 45600 45900 4
C 46100 44100 1 180 0 pnp-2.sym
{
T 45500 43700 5 10 0 0 180 0 1
device=PNP_TRANSISTOR
T 45500 43600 5 10 1 1 180 0 1
refdes=Q1
}
N 46100 43600 47200 43600 4
N 47200 43900 47200 43300 4
N 45600 43100 45600 43200 4
C 52000 48000 1 0 1 relay-1.sym
{
T 51300 50350 5 10 0 1 0 6 1
device=RELAY
T 50200 50350 5 10 1 1 0 6 1
refdes=U1
T 52100 48800 5 10 1 1 0 0 1
description=master pad-side safety relay
}
N 48400 46700 48400 48000 4
N 50500 47000 50500 48000 4
N 47200 50600 50500 50600 4
N 50500 50600 50500 50800 4
T 40200 47600 9 12 1 0 0 0 2
below line, duplicate
 per channel
L 40400 48200 56600 48200 3 0 0 1 -1 100
T 54300 45100 9 10 1 0 0 0 1
current limited section
T 46900 50100 9 10 1 0 0 0 1
current limited section
T 50100 44200 9 10 1 0 0 0 4
?? do we 
even need
flyback 
diode stuff ??
T 45100 41000 9 10 1 0 0 0 6
darlington inside
ULN2003 or similar
array package,
includes base current
limiting and protection 
diodes
N 47200 48000 47200 46700 4
N 47200 49400 47200 50600 4