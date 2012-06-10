EESchema Schematic File Version 2  date Sun 10 Jun 2012 01:48:40 AM MDT
LIBS:bryan_custom
LIBS:rfm12
LIBS:LED_RGB
LIBS:ULN280xA
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:special
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:bryan_4chan-cache
EELAYER 25  0
EELAYER END
$Descr A4 11700 8267
encoding utf-8
Sheet 4 6
Title ""
Date "10 jun 2012"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L CONN_3 K10
U 1 1 4FD3DBC5
P 3900 5050
F 0 "K10" V 3850 5050 50  0000 C CNN
F 1 "CONN_3" V 3950 5050 40  0000 C CNN
	1    3900 5050
	0    1    1    0   
$EndComp
$Comp
L CONN_5 P11
U 1 1 4FD3DBBF
P 4300 5100
F 0 "P11" V 4250 5100 50  0000 C CNN
F 1 "CONN_5" V 4350 5100 50  0000 C CNN
	1    4300 5100
	0    1    1    0   
$EndComp
Connection ~ 3800 3150
Wire Wire Line
	3800 4700 3800 2700
Wire Wire Line
	4000 4700 4000 2700
Wire Wire Line
	4200 4700 4200 2700
Wire Wire Line
	4400 4700 4400 2700
Connection ~ 3800 2800
Connection ~ 4000 3450
Connection ~ 4200 3750
Connection ~ 4400 4050
Wire Wire Line
	4600 2700 6100 2700
Wire Wire Line
	4700 4050 3600 4050
Wire Wire Line
	4700 3750 3350 3750
Wire Wire Line
	4700 3450 3500 3450
Wire Wire Line
	3800 3150 4700 3150
Connection ~ 6050 3300
Wire Wire Line
	6200 4450 6200 4200
Wire Wire Line
	6200 4200 6050 4200
Wire Wire Line
	7000 3550 7000 3450
Wire Wire Line
	7000 3450 6050 3450
Wire Wire Line
	6050 3900 6350 3900
Wire Wire Line
	6050 3600 6350 3600
Wire Wire Line
	6350 2900 6350 3150
Wire Wire Line
	6350 3150 6050 3150
Wire Wire Line
	6050 3300 6350 3300
Wire Wire Line
	6050 3750 6350 3750
Wire Wire Line
	3200 4300 3600 4300
Wire Wire Line
	3600 4300 3600 4050
Wire Wire Line
	3200 3800 3350 3800
Wire Wire Line
	3350 3800 3350 3750
Wire Wire Line
	3200 3300 3500 3300
Wire Wire Line
	3500 3300 3500 3450
Wire Wire Line
	3200 2800 3800 2800
Wire Wire Line
	3650 3050 3650 3300
Wire Wire Line
	3650 3050 3200 3050
Wire Wire Line
	3350 3550 3350 3600
Wire Wire Line
	3350 3550 3200 3550
Wire Wire Line
	3500 4050 3500 3900
Wire Wire Line
	3500 4050 3200 4050
Wire Wire Line
	3700 4550 3700 4200
Wire Wire Line
	3700 4550 3200 4550
Wire Wire Line
	6050 4050 6350 4050
Wire Wire Line
	6350 2950 6100 2950
Connection ~ 6350 2950
Wire Wire Line
	6100 2950 6100 2700
Wire Wire Line
	3650 3300 4700 3300
Wire Wire Line
	3350 3600 4700 3600
Wire Wire Line
	3500 3900 4700 3900
Wire Wire Line
	3700 4200 4700 4200
Connection ~ 4500 4200
Connection ~ 4300 3900
Connection ~ 4100 3600
Connection ~ 3900 3300
Wire Wire Line
	4500 4700 4500 2700
Wire Wire Line
	4300 4700 4300 2700
Wire Wire Line
	4100 4700 4100 2700
Wire Wire Line
	3900 4700 3900 2700
$Comp
L RR8 RR1
U 1 1 4FD3D4A2
P 4250 2350
F 0 "RR1" H 4300 2900 70  0000 C CNN
F 1 "RR8" V 4280 2350 70  0000 C CNN
	1    4250 2350
	0    -1   -1   0   
$EndComp
$Comp
L VDD #PWR035
U 1 1 4FCD3FFB
P 6350 2900
F 0 "#PWR035" H 6350 3000 30  0001 C CNN
F 1 "VDD" H 6350 3010 30  0000 C CNN
	1    6350 2900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR036
U 1 1 4FCC1CD3
P 6200 4450
F 0 "#PWR036" H 6200 4450 30  0001 C CNN
F 1 "GND" H 6200 4380 30  0001 C CNN
	1    6200 4450
	1    0    0    -1  
$EndComp
Text GLabel 3200 3800 0    60   BiDi ~ 0
adc.5
Text GLabel 3200 4050 0    60   BiDi ~ 0
adc.6
Text GLabel 3200 4300 0    60   BiDi ~ 0
adc.7
Text GLabel 3200 4550 0    60   BiDi ~ 0
adc.8
Text GLabel 3200 3550 0    60   BiDi ~ 0
adc.4
Text GLabel 3200 3300 0    60   BiDi ~ 0
adc.3
Text GLabel 3200 3050 0    60   BiDi ~ 0
adc.2
Text GLabel 3200 2800 0    60   BiDi ~ 0
adc.1
$Comp
L GND #U037
U 1 1 4F25EE87
P 7000 3550
F 0 "#U037" H 7050 3600 60  0001 C CNN
F 1 "GND" H 7000 3315 60  0000 C CNN
	1    7000 3550
	1    0    0    -1  
$EndComp
Text HLabel 6350 4050 2    60   Input ~ 12
ADC_CS
Text HLabel 6350 3900 2    60   Input ~ 12
MOSI
Text HLabel 6350 3750 2    60   Input ~ 12
MISO
Text HLabel 6350 3300 2    60   Input ~ 12
VREF
Text HLabel 6350 3600 2    60   Input ~ 12
SCK
$Comp
L MCP3208 U4
U 1 1 4F25EA8B
P 5350 3700
F 0 "U4" H 5750 4450 60  0000 C CNN
F 1 "MCP3208" H 5350 3000 60  0000 C CNN
F 2 "DIP-18" H 5100 4450 60  0000 C CNN
	1    5350 3700
	1    0    0    -1  
$EndComp
$EndSCHEMATC
