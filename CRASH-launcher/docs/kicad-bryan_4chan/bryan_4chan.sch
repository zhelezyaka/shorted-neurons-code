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
$Descr User 11000 8500
encoding utf-8
Sheet 1 6
Title ""
Date "10 jun 2012"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
NoConn ~ 4950 1500
Wire Wire Line
	5950 1400 7900 1400
Wire Wire Line
	2850 3300 3400 3300
Wire Wire Line
	3400 3300 3400 2000
Wire Wire Line
	3400 2000 3950 2000
Connection ~ 6600 1850
Wire Wire Line
	6050 5000 6600 5000
Wire Wire Line
	6600 5000 6600 1550
Connection ~ 7200 2150
Wire Wire Line
	6050 5400 7200 5400
Wire Wire Line
	7200 5400 7200 2150
Wire Wire Line
	7900 1850 7400 1850
Wire Wire Line
	7400 1850 7400 2150
Wire Wire Line
	7400 2150 5950 2150
Wire Wire Line
	7900 1650 6750 1650
Wire Wire Line
	5950 2000 6750 2000
Wire Wire Line
	6600 1850 5950 1850
Wire Wire Line
	6600 1550 7900 1550
Wire Wire Line
	6050 5200 6750 5200
Wire Wire Line
	6750 5200 6750 1650
Connection ~ 6750 2000
Wire Wire Line
	3950 1750 3150 1750
Wire Wire Line
	3150 1750 3150 3000
Wire Wire Line
	3150 3000 2850 3000
Wire Wire Line
	3950 2250 3650 2250
Wire Wire Line
	3650 2250 3650 4950
Wire Wire Line
	3650 4950 4100 4950
Wire Wire Line
	2850 4000 3650 4000
Connection ~ 3650 4000
Wire Wire Line
	5950 2300 6250 2300
Wire Wire Line
	6250 2300 6250 4800
Wire Wire Line
	6250 4800 6050 4800
Wire Wire Line
	7900 1250 5950 1250
$Sheet
S 8100 4450 2200 1500
U 4F865AA5
F0 "connectors" 60
F1 "connectors.sch" 60
$EndSheet
$Sheet
S 1000 2750 1850 1700
U 4F25D726
F0 "power" 60
F1 "power.sch" 60
F2 "CURRENT_SENSE" O R 2850 3000 60 
F3 " BATT_SENSE" O R 2850 3300 60 
F4 "VREF" O R 2850 4000 60 
$EndSheet
$Sheet
S 4100 4650 1950 1500
U 4F25C496
F0 "analog" 60
F1 "analog.sch" 60
F2 "ADC_CS" I R 6050 4800 60 
F3 "MOSI" I R 6050 5000 60 
F4 "MISO" I R 6050 5200 60 
F5 "VREF" I L 4100 4950 60 
F6 "SCK" I R 6050 5400 60 
$EndSheet
$Sheet
S 7900 1100 1800 1200
U 4F25C482
F0 "gpios" 60
F1 "gpios.sch" 60
F2 "SCK" I L 7900 1850 60 
F3 "MOSI" I L 7900 1550 60 
F4 "MISO" O L 7900 1650 60 
F5 "GPIO_CS" I L 7900 1250 60 
F6 "GPIO_RESET" I L 7900 1400 60 
$EndSheet
$Sheet
S 3950 1150 2000 1300
U 4F25C46A
F0 "core" 60
F1 "core.sch" 60
F2 "VREF" B L 3950 2250 60 
F3 "BATT_SENSE" I L 3950 2000 60 
F4 "CURRENT_SENSE" I L 3950 1750 60 
F5 "MOSI" B R 5950 1850 60 
F6 "MISO" B R 5950 2000 60 
F7 "SCK" B R 5950 2150 60 
F8 "GPIO_CS" O R 5950 1250 60 
F9 "ADC_CS" O R 5950 2300 60 
F10 "GPIO_RESET" O R 5950 1400 60 
$EndSheet
$EndSCHEMATC
