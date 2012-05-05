EESchema Schematic File Version 2  date Sat 05 May 2012 12:12:20 AM MDT
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
Date "13 apr 2012"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L VCC #PWR022
U 1 1 4F87B9F3
P 6350 2900
F 0 "#PWR022" H 6350 3000 30  0001 C CNN
F 1 "VCC" H 6350 3000 30  0000 C CNN
	1    6350 2900
	1    0    0    -1  
$EndComp
$Comp
L R R5
U 1 1 4F8659D4
P 3800 2800
F 0 "R5" H 3840 2870 50  0000 C CNN
F 1 "R" H 3830 2730 50  0000 C CNN
	1    3800 2800
	-1   0    0    -1  
$EndComp
$Comp
L R R6
U 1 1 4F8659D3
P 3800 3050
F 0 "R6" H 3840 3120 50  0000 C CNN
F 1 "R" H 3830 2980 50  0000 C CNN
	1    3800 3050
	-1   0    0    -1  
$EndComp
$Comp
L R R7
U 1 1 4F8659D2
P 3800 3300
F 0 "R7" H 3840 3370 50  0000 C CNN
F 1 "R" H 3830 3230 50  0000 C CNN
	1    3800 3300
	-1   0    0    -1  
$EndComp
$Comp
L R R8
U 1 1 4F8659D1
P 3800 3550
F 0 "R8" H 3840 3620 50  0000 C CNN
F 1 "R" H 3830 3480 50  0000 C CNN
	1    3800 3550
	-1   0    0    -1  
$EndComp
$Comp
L R R9
U 1 1 4F8659D0
P 3800 3800
F 0 "R9" H 3840 3870 50  0000 C CNN
F 1 "R" H 3830 3730 50  0000 C CNN
	1    3800 3800
	-1   0    0    -1  
$EndComp
$Comp
L R R10
U 1 1 4F8659CF
P 3800 4050
F 0 "R10" H 3840 4120 50  0000 C CNN
F 1 "R" H 3830 3980 50  0000 C CNN
	1    3800 4050
	-1   0    0    -1  
$EndComp
$Comp
L R R11
U 1 1 4F8659CE
P 3800 4300
F 0 "R11" H 3840 4370 50  0000 C CNN
F 1 "R" H 3830 4230 50  0000 C CNN
	1    3800 4300
	-1   0    0    -1  
$EndComp
$Comp
L R R12
U 1 1 4F8659CD
P 3800 4550
F 0 "R12" H 3840 4620 50  0000 C CNN
F 1 "R" H 3830 4480 50  0000 C CNN
	1    3800 4550
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4000 4550 4600 4550
Wire Wire Line
	4600 4550 4600 4200
Wire Wire Line
	4600 4200 4700 4200
Wire Wire Line
	4000 4050 4300 4050
Wire Wire Line
	4300 4050 4300 3900
Wire Wire Line
	4300 3900 4700 3900
Wire Wire Line
	4000 3550 4150 3550
Wire Wire Line
	4150 3550 4150 3600
Wire Wire Line
	4150 3600 4700 3600
Wire Wire Line
	4000 3050 4450 3050
Wire Wire Line
	4450 3050 4450 3300
Wire Wire Line
	4450 3300 4700 3300
Wire Wire Line
	4700 3150 4600 3150
Wire Wire Line
	4600 3150 4600 2800
Wire Wire Line
	4600 2800 4000 2800
Wire Wire Line
	4700 3450 4300 3450
Wire Wire Line
	4300 3450 4300 3300
Wire Wire Line
	4300 3300 4000 3300
Wire Wire Line
	4700 3750 4150 3750
Wire Wire Line
	4150 3750 4150 3800
Wire Wire Line
	4150 3800 4000 3800
Wire Wire Line
	4700 4050 4450 4050
Wire Wire Line
	4450 4050 4450 4300
Wire Wire Line
	4450 4300 4000 4300
Wire Wire Line
	3600 4550 2800 4550
Wire Wire Line
	3600 4050 2800 4050
Wire Wire Line
	3600 3550 2800 3550
Wire Wire Line
	3600 3050 2800 3050
Wire Wire Line
	3600 2800 2800 2800
Wire Wire Line
	3600 3300 2800 3300
Wire Wire Line
	3600 3800 2800 3800
Wire Wire Line
	3600 4300 2800 4300
Text GLabel 2800 3800 0    60   BiDi ~ 0
adc.5
Text GLabel 2800 4050 0    60   BiDi ~ 0
adc.6
Text GLabel 2800 4300 0    60   BiDi ~ 0
adc.7
Text GLabel 2800 4550 0    60   BiDi ~ 0
adc.8
Text GLabel 2800 3550 0    60   BiDi ~ 0
adc.4
Text GLabel 2800 3300 0    60   BiDi ~ 0
adc.3
Text GLabel 2800 3050 0    60   BiDi ~ 0
adc.2
Text GLabel 2800 2800 0    60   BiDi ~ 0
adc.1
Wire Wire Line
	7000 3550 7000 3450
Wire Wire Line
	7000 3450 6050 3450
Wire Wire Line
	6050 4050 6350 4050
Wire Wire Line
	6050 3750 6350 3750
Wire Wire Line
	6050 3300 6350 3300
Wire Wire Line
	6050 3150 6350 3150
Wire Wire Line
	6350 3150 6350 2900
Wire Wire Line
	6050 3600 6350 3600
Wire Wire Line
	6050 3900 6350 3900
Wire Wire Line
	6050 4200 6200 4200
Wire Wire Line
	6200 4200 6200 4450
$Comp
L GND #U023
U 1 1 4F25EE8A
P 6200 4450
F 0 "#U023" H 6250 4500 60  0001 C CNN
F 1 "GND" H 6200 4215 60  0000 C CNN
	1    6200 4450
	1    0    0    -1  
$EndComp
$Comp
L GND #U024
U 1 1 4F25EE87
P 7000 3550
F 0 "#U024" H 7050 3600 60  0001 C CNN
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
F 2 "DIP-16" H 5100 4450 60  0000 C CNN
	1    5350 3700
	1    0    0    -1  
$EndComp
$EndSCHEMATC
