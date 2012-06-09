EESchema Schematic File Version 2  date Fri 08 Jun 2012 10:29:21 PM MDT
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
Date "8 jun 2012"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
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
	4000 4300 4450 4300
Wire Wire Line
	4450 4300 4450 4050
Wire Wire Line
	4450 4050 4700 4050
Wire Wire Line
	4000 3800 4150 3800
Wire Wire Line
	4150 3800 4150 3750
Wire Wire Line
	4150 3750 4700 3750
Wire Wire Line
	4000 3300 4300 3300
Wire Wire Line
	4300 3300 4300 3450
Wire Wire Line
	4300 3450 4700 3450
Wire Wire Line
	4000 2800 4600 2800
Wire Wire Line
	4600 2800 4600 3150
Wire Wire Line
	4600 3150 4700 3150
Wire Wire Line
	4700 3300 4450 3300
Wire Wire Line
	4450 3300 4450 3050
Wire Wire Line
	4450 3050 4000 3050
Wire Wire Line
	4700 3600 4150 3600
Wire Wire Line
	4150 3600 4150 3550
Wire Wire Line
	4150 3550 4000 3550
Wire Wire Line
	4700 3900 4300 3900
Wire Wire Line
	4300 3900 4300 4050
Wire Wire Line
	4300 4050 4000 4050
Wire Wire Line
	4700 4200 4600 4200
Wire Wire Line
	4600 4200 4600 4550
Wire Wire Line
	4600 4550 4000 4550
Wire Wire Line
	6050 4050 6350 4050
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
Text GLabel 4000 3800 0    60   BiDi ~ 0
adc.5
Text GLabel 4000 4050 0    60   BiDi ~ 0
adc.6
Text GLabel 4000 4300 0    60   BiDi ~ 0
adc.7
Text GLabel 4000 4550 0    60   BiDi ~ 0
adc.8
Text GLabel 4000 3550 0    60   BiDi ~ 0
adc.4
Text GLabel 4000 3300 0    60   BiDi ~ 0
adc.3
Text GLabel 4000 3050 0    60   BiDi ~ 0
adc.2
Text GLabel 4000 2800 0    60   BiDi ~ 0
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
