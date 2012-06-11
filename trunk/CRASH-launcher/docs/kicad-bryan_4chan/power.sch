EESchema Schematic File Version 2  date Sun 10 Jun 2012 11:49:54 PM MDT
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
$Descr User 11000 8500
encoding utf-8
Sheet 3 6
Title ""
Date "11 jun 2012"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Connection ~ 4400 5600
$Comp
L PWR_FLAG #FLG018
U 1 1 4FD56509
P 4400 5600
F 0 "#FLG018" H 4400 5870 30  0001 C CNN
F 1 "PWR_FLAG" H 4400 5830 30  0000 C CNN
	1    4400 5600
	0    1    1    0   
$EndComp
Wire Wire Line
	4400 5750 4400 5350
Wire Wire Line
	4400 6150 4400 6300
Wire Wire Line
	8450 3500 8450 3400
Wire Wire Line
	1450 3600 1750 3600
Wire Wire Line
	7600 3300 7600 2950
Connection ~ 7850 2950
Connection ~ 7300 4900
Connection ~ 7300 4900
Connection ~ 7200 4600
Connection ~ 5250 4400
Wire Wire Line
	5250 4400 5250 5050
Wire Wire Line
	8600 4350 7600 4350
Connection ~ 2650 3850
Connection ~ 6300 3750
Wire Wire Line
	7850 3350 9350 3350
Connection ~ 2650 4250
Wire Wire Line
	1750 4250 3350 4250
Wire Wire Line
	1900 3850 1750 3850
Connection ~ 6600 3750
Wire Wire Line
	6600 3750 6600 4000
Wire Wire Line
	6000 4000 6000 3750
Wire Wire Line
	3350 3850 3350 3750
Wire Wire Line
	3350 3350 4700 3350
Wire Wire Line
	4700 3350 4700 3750
Wire Wire Line
	4700 3750 4800 3750
Connection ~ 5300 4400
Connection ~ 5500 4400
Wire Wire Line
	4150 3850 4800 3850
Wire Wire Line
	7550 1600 7650 1600
Wire Wire Line
	7650 1600 7650 1900
Wire Wire Line
	7200 4600 7200 1900
Wire Wire Line
	7800 4150 7800 4350
Connection ~ 7200 3750
Connection ~ 9050 2950
Connection ~ 7200 4350
Wire Wire Line
	7200 4600 7300 4600
Wire Wire Line
	7300 4600 7300 4900
Wire Wire Line
	7200 1900 7250 1900
Wire Wire Line
	7600 4350 7600 4900
Wire Wire Line
	9050 2950 9350 2950
Connection ~ 9050 3350
Connection ~ 7200 2950
Wire Wire Line
	7450 6100 7450 6250
Wire Wire Line
	7450 6250 7600 6250
Wire Wire Line
	6950 5500 6350 5500
Wire Wire Line
	5500 4400 5500 4600
Wire Wire Line
	4550 4000 4550 3850
Connection ~ 4550 3850
Wire Wire Line
	3350 2950 3700 2950
Wire Wire Line
	2500 3850 3550 3850
Connection ~ 3350 3850
Wire Wire Line
	6000 3750 6800 3750
Wire Wire Line
	6600 4400 4550 4400
Connection ~ 6000 4400
Connection ~ 6600 5500
Wire Wire Line
	1750 3850 1750 3600
Wire Wire Line
	9350 2950 9350 2850
Wire Wire Line
	9350 2850 9700 2850
Connection ~ 7800 4350
Wire Wire Line
	7600 2950 7850 2950
Wire Wire Line
	7800 3750 9450 3750
Connection ~ 8600 3750
Wire Wire Line
	6850 4350 7200 4350
Wire Wire Line
	4100 5950 3950 5950
$Comp
L GNDPWR #PWR019
U 1 1 4FD55EA4
P 4400 5350
F 0 "#PWR019" H 4400 5400 40  0001 C CNN
F 1 "GNDPWR" H 4400 5270 40  0000 C CNN
	1    4400 5350
	-1   0    0    1   
$EndComp
Text HLabel 3950 5950 0    60   Input ~ 0
HV_control
$Comp
L GND #PWR020
U 1 1 4FD55DB8
P 4400 6300
F 0 "#PWR020" H 4400 6300 30  0001 C CNN
F 1 "GND" H 4400 6230 30  0001 C CNN
	1    4400 6300
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR021
U 1 1 4FD17D59
P 6850 4350
F 0 "#PWR021" H 6850 4300 20  0001 C CNN
F 1 "+12V" H 6850 4450 30  0000 C CNN
	1    6850 4350
	1    0    0    -1  
$EndComp
$Comp
L MOSFET_N Q3
U 1 1 4FD5598B
P 4300 5950
F 0 "Q3" H 4310 6120 60  0000 R CNN
F 1 "MOSFET_N" H 4310 5800 60  0000 R CNN
	1    4300 5950
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG022
U 1 1 4FD18A2D
P 1450 3600
F 0 "#FLG022" H 1450 3870 30  0001 C CNN
F 1 "PWR_FLAG" H 1450 3830 30  0000 C CNN
	1    1450 3600
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG023
U 1 1 4FD1862E
P 7600 3300
F 0 "#FLG023" H 7600 3570 30  0001 C CNN
F 1 "PWR_FLAG" H 7600 3530 30  0000 C CNN
	1    7600 3300
	-1   0    0    1   
$EndComp
$Comp
L PWR_FLAG #FLG024
U 1 1 4FD1853D
P 7200 4600
F 0 "#FLG024" H 7200 4870 30  0001 C CNN
F 1 "PWR_FLAG" H 7200 4830 30  0000 C CNN
	1    7200 4600
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR025
U 1 1 4FD18256
P 5250 5050
F 0 "#PWR025" H 5250 5050 30  0001 C CNN
F 1 "GND" H 5250 4980 30  0001 C CNN
	1    5250 5050
	1    0    0    -1  
$EndComp
$Comp
L VDD #PWR026
U 1 1 4FCD406E
P 1750 3600
F 0 "#PWR026" H 1750 3700 30  0001 C CNN
F 1 "VDD" H 1750 3710 30  0000 C CNN
	1    1750 3600
	1    0    0    -1  
$EndComp
Text Notes 8100 4500 0    60   ~ 0
Switch+Fuse OR breakerswitch implied\nhere between BATT+ and connector terminal\n
Text HLabel 9700 2850 2    60   Output ~ 12
VREF
$Comp
L CP1 C4
U 1 1 4F87B04B
P 1750 4050
F 0 "C4" H 1800 4150 50  0000 L CNN
F 1 "3300uF" H 1800 3950 50  0000 L CNN
F 2 "C2V10" H 1750 4050 60  0001 C CNN
	1    1750 4050
	1    0    0    -1  
$EndComp
$Comp
L INDUCTOR L1
U 1 1 4F87B03D
P 2200 3850
F 0 "L1" V 2150 3850 40  0000 C CNN
F 1 "20uH" V 2300 3850 40  0000 C CNN
F 2 "INDUCTORV" H 2200 3850 60  0001 C CNN
	1    2200 3850
	0    1    -1   0   
$EndComp
$Comp
L GND #PWR027
U 1 1 4F87A33D
P 6300 3350
F 0 "#PWR027" H 6300 3350 30  0001 C CNN
F 1 "GND" H 6300 3280 30  0001 C CNN
	1    6300 3350
	1    0    0    1   
$EndComp
$Comp
L ZENER D3
U 1 1 4F87A337
P 6300 3550
F 0 "D3" H 6300 3650 50  0000 C CNN
F 1 "TVS Diode" H 6300 3450 40  0000 C CNN
	1    6300 3550
	0    -1   -1   0   
$EndComp
$Comp
L DIODESCH D5
U 1 1 4F87A311
P 7800 3950
F 0 "D5" H 7800 4050 40  0000 C CNN
F 1 "1N5821" H 7800 3850 40  0000 C CNN
	1    7800 3950
	0    1    1    0   
$EndComp
$Comp
L VDD #PWR028
U 1 1 4F879E14
P 6600 5500
F 0 "#PWR028" H 6600 5600 30  0001 C CNN
F 1 "VDD" H 6600 5610 30  0000 C CNN
	1    6600 5500
	1    0    0    -1  
$EndComp
$Comp
L C C8
U 1 1 4F879D1D
P 6600 4200
F 0 "C8" H 6650 4300 50  0000 L CNN
F 1 "0.1uF" H 6500 4100 50  0000 L CNN
F 2 "C2" H 6600 4200 60  0001 C CNN
	1    6600 4200
	-1   0    0    1   
$EndComp
$Comp
L C C5
U 1 1 4F879CCE
P 2650 4050
F 0 "C5" H 2700 4150 50  0000 L CNN
F 1 "0.1uF" H 2550 3950 50  0000 L CNN
F 2 "C2" H 2650 4050 60  0001 C CNN
	1    2650 4050
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR029
U 1 1 4F879CC0
P 3350 4250
F 0 "#PWR029" H 3350 4250 30  0001 C CNN
F 1 "GND" H 3350 4180 30  0001 C CNN
	1    3350 4250
	1    0    0    -1  
$EndComp
$Comp
L CP1 C6
U 1 1 4F879C5F
P 3350 4050
F 0 "C6" H 3400 4150 50  0000 L CNN
F 1 "3300uF" H 3400 3950 50  0000 L CNN
F 2 "C2V10" H 3350 4050 60  0001 C CNN
	1    3350 4050
	1    0    0    -1  
$EndComp
$Comp
L DIODESCH D6
U 1 1 4F879BAC
P 4550 4200
F 0 "D6" H 4550 4300 40  0000 C CNN
F 1 "1N5820" H 4550 4100 40  0000 C CNN
	1    4550 4200
	0    -1   -1   0   
$EndComp
$Comp
L INDUCTOR L2
U 1 1 4F8798BE
P 3850 3850
F 0 "L2" V 3800 3850 40  0000 C CNN
F 1 "150uH" V 3950 3850 40  0000 C CNN
	1    3850 3850
	0    1    -1   0   
$EndComp
$Comp
L GND #PWR030
U 1 1 4F879849
P 3700 2950
F 0 "#PWR030" H 3700 2950 30  0001 C CNN
F 1 "GND" H 3700 2880 30  0001 C CNN
	1    3700 2950
	1    0    0    -1  
$EndComp
$Comp
L R R4
U 1 1 4F87981B
P 3350 3550
F 0 "R4" H 3390 3620 50  0000 C CNN
F 1 "10k" H 3380 3480 50  0000 C CNN
F 2 "R4" H 3350 3550 60  0001 C CNN
	1    3350 3550
	0    1    1    0   
$EndComp
$Comp
L CP1 C7
U 1 1 4F8796C4
P 6000 4200
F 0 "C7" H 6050 4300 50  0000 L CNN
F 1 "470uF" H 6050 4100 50  0000 L CNN
F 2 "C2V8" H 6000 4200 60  0001 C CNN
	1    6000 4200
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 4F879684
P 3350 3150
F 0 "R3" H 3390 3220 50  0000 C CNN
F 1 "5.3k" H 3380 3080 50  0000 C CNN
F 2 "R4" H 3350 3150 60  0001 C CNN
	1    3350 3150
	0    1    1    0   
$EndComp
$Comp
L GND #PWR031
U 1 1 4F86764B
P 5500 4600
F 0 "#PWR031" H 5500 4600 30  0001 C CNN
F 1 "GND" H 5500 4530 30  0001 C CNN
	1    5500 4600
	1    0    0    -1  
$EndComp
$Comp
L DIODE D4
U 1 1 4F867610
P 7000 3750
F 0 "D4" H 7000 3850 40  0000 C CNN
F 1 "1N5402" H 7000 3650 40  0000 C CNN
	1    7000 3750
	-1   0    0    1   
$EndComp
$Comp
L LM257X U2
U 1 1 4F867603
P 5400 3850
F 0 "U2" H 5650 3550 60  0000 C CNN
F 1 "LM2576" H 5400 4100 60  0000 C CNN
F 2 "TO220" H 5400 3850 60  0001 C CNN
	1    5400 3850
	1    0    0    -1  
$EndComp
Text HLabel 7600 6250 2    60   Output ~ 12
CURRENT_SENSE
Text HLabel 7550 1600 0    60   Output ~ 12
 BATT_SENSE
Text Notes 8300 2400 0    50   ~ 0
NOTE: Enhanced Voltage reference is \noptional.  If not used, connect AVR \nAREF and TSC888 VIN to the digital\nsupply (3.3 to 3.6V)
$Comp
L GND #PWR032
U 1 1 4F25D8AC
P 9450 3750
F 0 "#PWR032" H 9450 3750 30  0001 C CNN
F 1 "GND" H 9450 3680 30  0001 C CNN
	1    9450 3750
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR033
U 1 1 4E87E2F9
P 7850 2550
F 0 "#PWR033" H 7850 2550 30  0001 C CNN
F 1 "GND" H 7850 2480 30  0001 C CNN
	1    7850 2550
	1    0    0    1   
$EndComp
$Comp
L ZENER D1
U 1 1 4E87E2B2
P 7850 2750
F 0 "D1" H 7850 2850 50  0000 C CNN
F 1 "TVS Diode" H 7850 2650 40  0000 C CNN
	1    7850 2750
	0    -1   -1   0   
$EndComp
Text Notes 7700 5700 0    50   ~ 0
NOTE: Current sense amp and\nsupporting components optional
$Comp
L R RSHUNT1
U 1 1 4E55D04D
P 7400 4350
F 0 "RSHUNT1" H 7440 4420 50  0000 C CNN
F 1 "0.005" H 7430 4280 50  0000 C CNN
F 2 "R7" H 7400 4350 60  0001 C CNN
	1    7400 4350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR034
U 1 1 4F25D8A7
P 6350 5900
F 0 "#PWR034" H 6350 5900 30  0001 C CNN
F 1 "GND" H 6350 5830 30  0001 C CNN
	1    6350 5900
	1    0    0    -1  
$EndComp
$Comp
L C C9
U 1 1 4F25D8A6
P 6350 5700
F 0 "C9" H 6400 5800 50  0000 L CNN
F 1 "0.1uF" H 6250 5600 50  0000 L CNN
F 2 "C2" H 6350 5700 60  0001 C CNN
	1    6350 5700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR035
U 1 1 4E55D85B
P 8000 5400
F 0 "#PWR035" H 8000 5400 30  0001 C CNN
F 1 "GND" H 8000 5330 30  0001 C CNN
	1    8000 5400
	1    0    0    -1  
$EndComp
$Comp
L TSC888 U3
U 1 1 4E55D6D7
P 7450 5650
F 0 "U3" V 7600 5700 60  0000 C CNN
F 1 "TSC888" H 7100 5150 60  0000 C CNN
F 2 "SOT23-5" H 7050 5150 60  0001 C CNN
	1    7450 5650
	-1   0    0    1   
$EndComp
Text Notes 7500 2150 0    50   ~ 0
BAT SENSE\nVoltage Divider
$Comp
L R R2
U 1 1 4E48A0F3
P 7850 1900
F 0 "R2" H 7890 1970 50  0000 C CNN
F 1 "10k" H 7880 1830 50  0000 C CNN
	1    7850 1900
	1    0    0    -1  
$EndComp
$Comp
L C C3
U 1 1 4F25D8B2
P 9350 3150
F 0 "C3" H 9400 3250 50  0000 L CNN
F 1 "0.1uF" H 9250 3050 50  0000 L CNN
F 2 "C2" H 9350 3150 60  0001 C CNN
	1    9350 3150
	-1   0    0    1   
$EndComp
$Comp
L CP1 C1
U 1 1 4EAB7ADF
P 7850 3150
F 0 "C1" H 7900 3250 50  0000 L CNN
F 1 "470uF" H 7900 3050 50  0000 L CNN
F 2 "C2V8" H 7850 3150 60  0001 C CNN
	1    7850 3150
	1    0    0    -1  
$EndComp
$Comp
L CP1 C2
U 1 1 4EAB7ADE
P 9050 3150
F 0 "C2" H 9100 3250 50  0000 L CNN
F 1 "3300uF" H 8950 3050 50  0000 L CNN
F 2 "C2V10" H 9050 3150 60  0001 C CNN
	1    9050 3150
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR036
U 1 1 4EAB7ADD
P 8450 3500
F 0 "#PWR036" H 8450 3500 30  0001 C CNN
F 1 "GND" H 8450 3430 30  0001 C CNN
	1    8450 3500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR037
U 1 1 4F25D8A0
P 8050 1900
F 0 "#PWR037" H 8050 1900 30  0001 C CNN
F 1 "GND" H 8050 1830 30  0001 C CNN
	1    8050 1900
	1    0    0    -1  
$EndComp
$Comp
L DIODE D2
U 1 1 4F25D89F
P 7400 2950
F 0 "D2" H 7400 3050 40  0000 C CNN
F 1 "1N5402" H 7400 2850 40  0000 C CNN
	1    7400 2950
	1    0    0    1   
$EndComp
$Comp
L BATTERY BT1
U 1 1 4F25D89E
P 8600 4050
F 0 "BT1" H 8600 4250 50  0000 C CNN
F 1 "BATTERY" H 8600 3860 50  0000 C CNN
	1    8600 4050
	0    -1   -1   0   
$EndComp
$Comp
L R R1
U 1 1 4EAB7AD9
P 7450 1900
F 0 "R1" H 7480 1960 50  0000 C CNN
F 1 "39k" H 7480 1840 50  0000 C CNN
	1    7450 1900
	1    0    0    -1  
$EndComp
$Comp
L LP2950 U1
U 1 1 4EAB7AD8
P 8450 2950
F 0 "U1" H 8200 3200 60  0000 C CNN
F 1 "LP2950-30" H 8500 3100 60  0000 C CNN
F 2 "TO-92" H 8450 2950 60  0001 C CNN
	1    8450 2950
	1    0    0    -1  
$EndComp
$EndSCHEMATC
