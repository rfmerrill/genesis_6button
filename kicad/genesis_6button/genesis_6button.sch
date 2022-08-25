EESchema Schematic File Version 4
LIBS:genesis_6button-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L power:GND #PWR0101
U 1 1 62FC3813
P 5800 3250
F 0 "#PWR0101" H 5800 3000 50  0001 C CNN
F 1 "GND" H 5805 3077 50  0000 C CNN
F 2 "" H 5800 3250 50  0001 C CNN
F 3 "" H 5800 3250 50  0001 C CNN
	1    5800 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 3250 5800 3100
Text GLabel 4950 2200 0    50   Input ~ 0
BUTTON_X
Text GLabel 4950 2500 0    50   Input ~ 0
BUTTON_MODE
Wire Wire Line
	4950 2200 5300 2200
Wire Wire Line
	4950 2500 5300 2500
Text GLabel 4950 1900 0    50   Input ~ 0
BUTTON_Y
Wire Wire Line
	4950 1900 5300 1900
Wire Wire Line
	8150 1800 8500 1800
Text GLabel 8150 1800 0    50   Input ~ 0
TH
Wire Wire Line
	5300 1600 4950 1600
Wire Wire Line
	5800 1150 5800 1200
$Comp
L power:+5V #PWR0102
U 1 1 62FC3F29
P 5800 1150
F 0 "#PWR0102" H 5800 1000 50  0001 C CNN
F 1 "+5V" H 5815 1323 50  0000 C CNN
F 2 "" H 5800 1150 50  0001 C CNN
F 3 "" H 5800 1150 50  0001 C CNN
	1    5800 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	8300 2300 8300 1200
Wire Wire Line
	8500 2300 8300 2300
$Comp
L power:+5V #PWR0103
U 1 1 62FC2C09
P 8300 1200
F 0 "#PWR0103" H 8300 1050 50  0001 C CNN
F 1 "+5V" H 8315 1373 50  0000 C CNN
F 2 "" H 8300 1200 50  0001 C CNN
F 3 "" H 8300 1200 50  0001 C CNN
	1    8300 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 1150 2950 1200
$Comp
L power:+5V #PWR0104
U 1 1 62FC21C4
P 2950 1150
F 0 "#PWR0104" H 2950 1000 50  0001 C CNN
F 1 "+5V" H 2965 1323 50  0000 C CNN
F 2 "" H 2950 1150 50  0001 C CNN
F 3 "" H 2950 1150 50  0001 C CNN
	1    2950 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	8400 2000 8400 2500
Wire Wire Line
	8500 2000 8400 2000
$Comp
L power:GND #PWR0105
U 1 1 62FC14E4
P 8400 2500
F 0 "#PWR0105" H 8400 2250 50  0001 C CNN
F 1 "GND" H 8405 2327 50  0000 C CNN
F 2 "" H 8400 2500 50  0001 C CNN
F 3 "" H 8400 2500 50  0001 C CNN
	1    8400 2500
	1    0    0    -1  
$EndComp
$Comp
L Connector:DB9_Female J2
U 1 1 62FBF15D
P 8800 1900
F 0 "J2" H 8980 1946 50  0000 L CNN
F 1 "DB9_Female" H 8980 1855 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x09_P2.54mm_Vertical" H 8800 1900 50  0001 C CNN
F 3 " ~" H 8800 1900 50  0001 C CNN
	1    8800 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 3100 2950 3250
$Comp
L power:GND #PWR0106
U 1 1 62FBE574
P 2950 3250
F 0 "#PWR0106" H 2950 3000 50  0001 C CNN
F 1 "GND" H 2955 3077 50  0000 C CNN
F 2 "" H 2950 3250 50  0001 C CNN
F 3 "" H 2950 3250 50  0001 C CNN
	1    2950 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 2700 1850 2700
Text GLabel 1850 2700 0    50   Input ~ 0
TH
Wire Wire Line
	2300 2800 2300 2400
Connection ~ 2300 2800
Wire Wire Line
	2450 2800 2300 2800
Wire Wire Line
	2300 2400 2300 2100
Connection ~ 2300 2400
Wire Wire Line
	2450 2400 2300 2400
Wire Wire Line
	2300 2100 2450 2100
Wire Wire Line
	2300 3250 2300 2800
$Comp
L power:GND #PWR0107
U 1 1 62FBD98C
P 2300 3250
F 0 "#PWR0107" H 2300 3000 50  0001 C CNN
F 1 "GND" H 2305 3077 50  0000 C CNN
F 2 "" H 2300 3250 50  0001 C CNN
F 3 "" H 2300 3250 50  0001 C CNN
	1    2300 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 2500 2450 2500
Wire Wire Line
	1850 2200 2450 2200
Wire Wire Line
	1850 1900 2450 1900
Wire Wire Line
	1850 1800 2450 1800
Wire Wire Line
	1850 1600 2450 1600
Wire Wire Line
	1850 1500 2450 1500
Text GLabel 1850 2200 0    50   Input ~ 0
BUTTON_LEFT
Text GLabel 1850 2500 0    50   Input ~ 0
BUTTON_RIGHT
Text GLabel 1850 1900 0    50   Input ~ 0
BUTTON_B
Text GLabel 1850 1600 0    50   Input ~ 0
BUTTON_C
Text GLabel 1850 1800 0    50   Input ~ 0
BUTTON_A
Text GLabel 1850 1500 0    50   Input ~ 0
BUTTON_START
$Comp
L 74xx:74LS257 U3
U 1 1 62FB82B8
P 5800 2100
F 0 "U3" H 5350 3100 50  0000 C CNN
F 1 "74LS257" H 5450 2950 50  0000 C CNN
F 2 "Package_SO:SOIC-16_3.9x9.9mm_P1.27mm" H 5800 2100 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS257" H 5800 2100 50  0001 C CNN
	1    5800 2100
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS257 U1
U 1 1 62FB6687
P 2950 2100
F 0 "U1" H 2350 3000 50  0000 C CNN
F 1 "74LS257" H 2450 2900 50  0000 C CNN
F 2 "Package_SO:SOIC-16_3.9x9.9mm_P1.27mm" H 2950 2100 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS257" H 2950 2100 50  0001 C CNN
	1    2950 2100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0108
U 1 1 62FFF1AD
P 3450 5900
F 0 "#PWR0108" H 3450 5650 50  0001 C CNN
F 1 "GND" H 3455 5727 50  0000 C CNN
F 2 "" H 3450 5900 50  0001 C CNN
F 3 "" H 3450 5900 50  0001 C CNN
	1    3450 5900
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0109
U 1 1 62FFF7C3
P 3450 4200
F 0 "#PWR0109" H 3450 4050 50  0001 C CNN
F 1 "+5V" H 3465 4373 50  0000 C CNN
F 2 "" H 3450 4200 50  0001 C CNN
F 3 "" H 3450 4200 50  0001 C CNN
	1    3450 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 4200 3450 4300
Wire Wire Line
	3450 5900 3450 5700
Text GLabel 4950 1500 0    50   Input ~ 0
BUTTON_UP
Text GLabel 4950 1800 0    50   Input ~ 0
BUTTON_DOWN
Wire Wire Line
	4950 1800 5300 1800
Wire Wire Line
	5300 1500 4950 1500
Text GLabel 6600 1500 2    50   Input ~ 0
UP
Text GLabel 6600 1800 2    50   Input ~ 0
DOWN
Text GLabel 6600 2100 2    50   Input ~ 0
LEFT
Text GLabel 6600 2400 2    50   Input ~ 0
RIGHT
Wire Wire Line
	6300 1500 6600 1500
Wire Wire Line
	6600 1800 6300 1800
Wire Wire Line
	6600 2100 6300 2100
Wire Wire Line
	6300 2400 6600 2400
Text GLabel 8150 1500 0    50   Input ~ 0
UP
Text GLabel 8150 1700 0    50   Input ~ 0
DOWN
Text GLabel 8150 1900 0    50   Input ~ 0
LEFT
Text GLabel 8150 2100 0    50   Input ~ 0
RIGHT
Wire Wire Line
	8150 1500 8500 1500
Wire Wire Line
	8150 1700 8500 1700
Wire Wire Line
	8150 1900 8500 1900
Wire Wire Line
	8150 2100 8500 2100
Text GLabel 8150 1600 0    50   Input ~ 0
TL
Text GLabel 3700 1800 2    50   Input ~ 0
TL
Wire Wire Line
	3450 1800 3700 1800
Wire Wire Line
	8150 1600 8500 1600
Text GLabel 3700 1500 2    50   Input ~ 0
TR
Wire Wire Line
	3450 1500 3700 1500
Text GLabel 8150 2200 0    50   Input ~ 0
TR
Wire Wire Line
	8150 2200 8500 2200
Wire Wire Line
	3450 2400 5300 2400
Wire Wire Line
	3450 2100 5300 2100
Text GLabel 2550 4600 0    50   Input ~ 0
UP
Text GLabel 2550 4700 0    50   Input ~ 0
DOWN
Text GLabel 2550 4800 0    50   Input ~ 0
LEFT
Text GLabel 2550 4900 0    50   Input ~ 0
RIGHT
Wire Wire Line
	2850 4600 2550 4600
Wire Wire Line
	2550 4700 2850 4700
Wire Wire Line
	2550 4800 2850 4800
Wire Wire Line
	2850 4900 2550 4900
$Comp
L MCU_Microchip_ATtiny:ATtiny204-SS U2
U 1 1 630348E8
P 3450 5000
F 0 "U2" H 2800 5850 50  0000 C CNN
F 1 "ATtiny204-SS" H 3000 5700 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 3450 5000 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/50002687A.pdf" H 3450 5000 50  0001 C CNN
	1    3450 5000
	1    0    0    -1  
$EndComp
Text GLabel 8900 5350 0    50   Input ~ 0
BUTTON_LEFT
Text GLabel 8900 5500 0    50   Input ~ 0
BUTTON_RIGHT
Text GLabel 8900 4200 0    50   Input ~ 0
BUTTON_B
Text GLabel 8900 4350 0    50   Input ~ 0
BUTTON_C
Text GLabel 8900 4050 0    50   Input ~ 0
BUTTON_A
Text GLabel 8900 5700 0    50   Input ~ 0
BUTTON_START
Text GLabel 8900 4700 0    50   Input ~ 0
BUTTON_Y
Text GLabel 8900 4850 0    50   Input ~ 0
BUTTON_Z
Text GLabel 8900 5050 0    50   Input ~ 0
BUTTON_UP
Text GLabel 8900 5200 0    50   Input ~ 0
BUTTON_DOWN
Text GLabel 8900 5850 0    50   Input ~ 0
BUTTON_MODE
Text GLabel 8900 4550 0    50   Input ~ 0
BUTTON_X
$Comp
L Device:R R1
U 1 1 63053E11
P 9300 4050
F 0 "R1" V 9300 4500 50  0000 C CNN
F 1 "47k" V 9300 4650 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 9230 4050 50  0001 C CNN
F 3 "~" H 9300 4050 50  0001 C CNN
	1    9300 4050
	0    1    1    0   
$EndComp
$Comp
L Device:R R2
U 1 1 6306079A
P 9300 4200
F 0 "R2" V 9300 4650 50  0000 C CNN
F 1 "47k" V 9300 4800 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 9230 4200 50  0001 C CNN
F 3 "~" H 9300 4200 50  0001 C CNN
	1    9300 4200
	0    1    1    0   
$EndComp
$Comp
L Device:R R3
U 1 1 630617C8
P 9300 4350
F 0 "R3" V 9300 4800 50  0000 C CNN
F 1 "47k" V 9300 4950 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 9230 4350 50  0001 C CNN
F 3 "~" H 9300 4350 50  0001 C CNN
	1    9300 4350
	0    1    1    0   
$EndComp
$Comp
L Device:R R4
U 1 1 6306280B
P 9300 4550
F 0 "R4" V 9300 5000 50  0000 C CNN
F 1 "47k" V 9300 5150 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 9230 4550 50  0001 C CNN
F 3 "~" H 9300 4550 50  0001 C CNN
	1    9300 4550
	0    1    1    0   
$EndComp
$Comp
L Device:R R5
U 1 1 630638F5
P 9300 4700
F 0 "R5" V 9300 5150 50  0000 C CNN
F 1 "47k" V 9300 5300 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 9230 4700 50  0001 C CNN
F 3 "~" H 9300 4700 50  0001 C CNN
	1    9300 4700
	0    1    1    0   
$EndComp
$Comp
L Device:R R6
U 1 1 63065C51
P 9300 4850
F 0 "R6" V 9300 5300 50  0000 C CNN
F 1 "47k" V 9300 5450 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 9230 4850 50  0001 C CNN
F 3 "~" H 9300 4850 50  0001 C CNN
	1    9300 4850
	0    1    1    0   
$EndComp
$Comp
L Device:R R7
U 1 1 63066D40
P 9300 5050
F 0 "R7" V 9300 5500 50  0000 C CNN
F 1 "47k" V 9300 5650 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 9230 5050 50  0001 C CNN
F 3 "~" H 9300 5050 50  0001 C CNN
	1    9300 5050
	0    1    1    0   
$EndComp
$Comp
L Device:R R8
U 1 1 63067D6E
P 9300 5200
F 0 "R8" V 9300 5650 50  0000 C CNN
F 1 "47k" V 9300 5800 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 9230 5200 50  0001 C CNN
F 3 "~" H 9300 5200 50  0001 C CNN
	1    9300 5200
	0    1    1    0   
$EndComp
$Comp
L Device:R R9
U 1 1 63068E6E
P 9300 5350
F 0 "R9" V 9300 5800 50  0000 C CNN
F 1 "47k" V 9300 5950 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 9230 5350 50  0001 C CNN
F 3 "~" H 9300 5350 50  0001 C CNN
	1    9300 5350
	0    1    1    0   
$EndComp
$Comp
L Device:R R10
U 1 1 63069EEA
P 9300 5500
F 0 "R10" V 9300 5950 50  0000 C CNN
F 1 "47k" V 9300 6100 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 9230 5500 50  0001 C CNN
F 3 "~" H 9300 5500 50  0001 C CNN
	1    9300 5500
	0    1    1    0   
$EndComp
$Comp
L Device:R R11
U 1 1 6306AFB5
P 9300 5700
F 0 "R11" V 9300 6150 50  0000 C CNN
F 1 "47k" V 9300 6300 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 9230 5700 50  0001 C CNN
F 3 "~" H 9300 5700 50  0001 C CNN
	1    9300 5700
	0    1    1    0   
$EndComp
$Comp
L Device:R R12
U 1 1 6306C090
P 9300 5850
F 0 "R12" V 9300 6300 50  0000 C CNN
F 1 "47k" V 9300 6450 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 9230 5850 50  0001 C CNN
F 3 "~" H 9300 5850 50  0001 C CNN
	1    9300 5850
	0    1    1    0   
$EndComp
Wire Wire Line
	8900 4050 9150 4050
Wire Wire Line
	8900 5050 9150 5050
Wire Wire Line
	8900 5200 9150 5200
Wire Wire Line
	8900 5350 9150 5350
Wire Wire Line
	8900 5500 9150 5500
Wire Wire Line
	8900 5700 9150 5700
Wire Wire Line
	9150 5850 8900 5850
Wire Wire Line
	9150 4850 8900 4850
Wire Wire Line
	9150 4700 8900 4700
Wire Wire Line
	9150 4550 8900 4550
Wire Wire Line
	9150 4350 8900 4350
Wire Wire Line
	9150 4200 8900 4200
$Comp
L power:+5V #PWR0110
U 1 1 6307C920
P 9600 3700
F 0 "#PWR0110" H 9600 3550 50  0001 C CNN
F 1 "+5V" H 9615 3873 50  0000 C CNN
F 2 "" H 9600 3700 50  0001 C CNN
F 3 "" H 9600 3700 50  0001 C CNN
	1    9600 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	9600 3700 9600 4050
Wire Wire Line
	9600 5850 9450 5850
Wire Wire Line
	9450 5700 9600 5700
Connection ~ 9600 5700
Wire Wire Line
	9600 5700 9600 5850
Wire Wire Line
	9450 5500 9600 5500
Connection ~ 9600 5500
Wire Wire Line
	9600 5500 9600 5700
Wire Wire Line
	9450 5350 9600 5350
Connection ~ 9600 5350
Wire Wire Line
	9600 5350 9600 5500
Wire Wire Line
	9450 5200 9600 5200
Connection ~ 9600 5200
Wire Wire Line
	9600 5200 9600 5350
Wire Wire Line
	9450 5050 9600 5050
Connection ~ 9600 5050
Wire Wire Line
	9600 5050 9600 5200
Wire Wire Line
	9450 4850 9600 4850
Connection ~ 9600 4850
Wire Wire Line
	9600 4850 9600 5050
Wire Wire Line
	9450 4700 9600 4700
Connection ~ 9600 4700
Wire Wire Line
	9600 4700 9600 4850
Wire Wire Line
	9450 4550 9600 4550
Connection ~ 9600 4550
Wire Wire Line
	9600 4550 9600 4700
Wire Wire Line
	9450 4350 9600 4350
Connection ~ 9600 4350
Wire Wire Line
	9600 4350 9600 4550
Wire Wire Line
	9450 4200 9600 4200
Connection ~ 9600 4200
Wire Wire Line
	9600 4200 9600 4350
Wire Wire Line
	9450 4050 9600 4050
Connection ~ 9600 4050
Wire Wire Line
	9600 4050 9600 4200
Text GLabel 4250 4700 2    50   Input ~ 0
TH
Wire Wire Line
	4050 5000 4750 5000
Wire Wire Line
	4750 5000 4750 2700
Wire Wire Line
	4750 2700 5300 2700
Wire Wire Line
	5300 2800 4950 2800
Wire Wire Line
	4950 2800 4950 5300
Wire Wire Line
	4950 5300 4050 5300
Wire Wire Line
	4250 4700 4050 4700
$Comp
L Connector_Generic:Conn_02x07_Odd_Even J1
U 1 1 630A96EC
P 6350 5150
F 0 "J1" H 6400 5667 50  0000 C CNN
F 1 "Conn_02x07_Odd_Even" H 6400 5576 50  0000 C CNN
F 2 "Connector_IDC:IDC-Header_2x07_P2.54mm_Vertical" H 6350 5150 50  0001 C CNN
F 3 "~" H 6350 5150 50  0001 C CNN
	1    6350 5150
	1    0    0    -1  
$EndComp
Text GLabel 5950 5150 0    50   Input ~ 0
BUTTON_LEFT
Text GLabel 5950 5250 0    50   Input ~ 0
BUTTON_RIGHT
Text GLabel 5950 5350 0    50   Input ~ 0
BUTTON_DOWN
Text GLabel 5950 5450 0    50   Input ~ 0
BUTTON_UP
Wire Wire Line
	6150 5450 5950 5450
Wire Wire Line
	5950 5350 6150 5350
Wire Wire Line
	5950 5250 6150 5250
Wire Wire Line
	5950 5150 6150 5150
Text GLabel 6950 5350 2    50   Input ~ 0
BUTTON_MODE
Wire Wire Line
	6650 5350 6950 5350
Text GLabel 6950 5450 2    50   Input ~ 0
BUTTON_START
Wire Wire Line
	6650 5450 6950 5450
$Comp
L power:GND #PWR0111
U 1 1 630BCAF0
P 6750 5600
F 0 "#PWR0111" H 6750 5350 50  0001 C CNN
F 1 "GND" H 6755 5427 50  0000 C CNN
F 2 "" H 6750 5600 50  0001 C CNN
F 3 "" H 6750 5600 50  0001 C CNN
	1    6750 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6750 5600 6750 5250
Wire Wire Line
	6750 5150 6650 5150
Wire Wire Line
	6650 5250 6750 5250
Connection ~ 6750 5250
Wire Wire Line
	6750 5250 6750 5150
Text GLabel 5950 5050 0    50   Input ~ 0
BUTTON_A
Text GLabel 5950 4950 0    50   Input ~ 0
BUTTON_B
Text GLabel 5950 4850 0    50   Input ~ 0
BUTTON_C
Wire Wire Line
	5950 5050 6150 5050
Wire Wire Line
	5950 4950 6150 4950
Wire Wire Line
	5950 4850 6150 4850
Text GLabel 6950 5050 2    50   Input ~ 0
BUTTON_X
Wire Wire Line
	6650 5050 6950 5050
Text GLabel 6950 4950 2    50   Input ~ 0
BUTTON_Y
Wire Wire Line
	6650 4950 6950 4950
Text GLabel 4950 1600 0    50   Input ~ 0
BUTTON_Z
Text GLabel 6950 4850 2    50   Input ~ 0
BUTTON_Z
Wire Wire Line
	6650 4850 6950 4850
$Comp
L Device:C C1
U 1 1 630FA4FE
P 1700 950
F 0 "C1" H 1815 996 50  0000 L CNN
F 1 "0.1u" H 1815 905 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 1738 800 50  0001 C CNN
F 3 "~" H 1700 950 50  0001 C CNN
	1    1700 950 
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0112
U 1 1 630FAF8A
P 1700 800
F 0 "#PWR0112" H 1700 650 50  0001 C CNN
F 1 "+5V" H 1715 973 50  0000 C CNN
F 2 "" H 1700 800 50  0001 C CNN
F 3 "" H 1700 800 50  0001 C CNN
	1    1700 800 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0113
U 1 1 630FB394
P 1700 1100
F 0 "#PWR0113" H 1700 850 50  0001 C CNN
F 1 "GND" H 1705 927 50  0000 C CNN
F 2 "" H 1700 1100 50  0001 C CNN
F 3 "" H 1700 1100 50  0001 C CNN
	1    1700 1100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 630FBEAD
P 4900 950
F 0 "C3" H 5015 996 50  0000 L CNN
F 1 "0.1u" H 5015 905 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4938 800 50  0001 C CNN
F 3 "~" H 4900 950 50  0001 C CNN
	1    4900 950 
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0114
U 1 1 630FBEB3
P 4900 800
F 0 "#PWR0114" H 4900 650 50  0001 C CNN
F 1 "+5V" H 4915 973 50  0000 C CNN
F 2 "" H 4900 800 50  0001 C CNN
F 3 "" H 4900 800 50  0001 C CNN
	1    4900 800 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0115
U 1 1 630FBEB9
P 4900 1100
F 0 "#PWR0115" H 4900 850 50  0001 C CNN
F 1 "GND" H 4905 927 50  0000 C CNN
F 2 "" H 4900 1100 50  0001 C CNN
F 3 "" H 4900 1100 50  0001 C CNN
	1    4900 1100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 630FF9F0
P 1850 4800
F 0 "C2" H 1965 4846 50  0000 L CNN
F 1 "0.1u" H 1965 4755 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 1888 4650 50  0001 C CNN
F 3 "~" H 1850 4800 50  0001 C CNN
	1    1850 4800
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0116
U 1 1 630FF9F6
P 1850 4650
F 0 "#PWR0116" H 1850 4500 50  0001 C CNN
F 1 "+5V" H 1865 4823 50  0000 C CNN
F 2 "" H 1850 4650 50  0001 C CNN
F 3 "" H 1850 4650 50  0001 C CNN
	1    1850 4650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0117
U 1 1 630FF9FC
P 1850 4950
F 0 "#PWR0117" H 1850 4700 50  0001 C CNN
F 1 "GND" H 1855 4777 50  0000 C CNN
F 2 "" H 1850 4950 50  0001 C CNN
F 3 "" H 1850 4950 50  0001 C CNN
	1    1850 4950
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x03_Odd_Even J3
U 1 1 62FBE35A
P 5050 6500
F 0 "J3" H 5100 6817 50  0000 C CNN
F 1 "Conn_02x03_Odd_Even" H 5100 6726 50  0000 C CNN
F 2 "Connector_IDC:IDC-Header_2x03_P2.54mm_Vertical" H 5050 6500 50  0001 C CNN
F 3 "~" H 5050 6500 50  0001 C CNN
	1    5050 6500
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0118
U 1 1 62FBF6B9
P 5650 6400
F 0 "#PWR0118" H 5650 6250 50  0001 C CNN
F 1 "+5V" H 5665 6573 50  0000 C CNN
F 2 "" H 5650 6400 50  0001 C CNN
F 3 "" H 5650 6400 50  0001 C CNN
	1    5650 6400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 6400 5350 6400
$Comp
L power:GND #PWR0119
U 1 1 62FC3B94
P 5450 6700
F 0 "#PWR0119" H 5450 6450 50  0001 C CNN
F 1 "GND" H 5455 6527 50  0000 C CNN
F 2 "" H 5450 6700 50  0001 C CNN
F 3 "" H 5450 6700 50  0001 C CNN
	1    5450 6700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 6600 5450 6600
Wire Wire Line
	5450 6600 5450 6700
Wire Wire Line
	4050 4600 4550 4600
Wire Wire Line
	4550 4600 4550 6400
Wire Wire Line
	4550 6400 4850 6400
$EndSCHEMATC
