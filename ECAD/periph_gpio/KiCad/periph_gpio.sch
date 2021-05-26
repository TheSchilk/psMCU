EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 4
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 7550 850  800  1200
U 60A03AFC
F0 "Port A" 50
F1 "Port.sch" 50
F2 "CLK" I L 7550 1950 50 
F3 "RESET" I L 7550 1850 50 
F4 "Latch_ODR" I L 7550 1650 50 
F5 "Latch_TRI" I L 7550 1550 50 
F6 "OE_ODR" I L 7550 1350 50 
F7 "OE_TRI" I L 7550 1250 50 
F8 "OE_IDR" I L 7550 1150 50 
F9 "0" O R 8350 950 50 
F10 "1" O R 8350 1050 50 
F11 "2" O R 8350 1150 50 
F12 "3" O R 8350 1250 50 
F13 "DB[7..0]" I L 7550 950 50 
$EndSheet
$Sheet
S 7550 2450 800  1200
U 62FACF10
F0 "Port B" 50
F1 "Port.sch" 50
F2 "CLK" I L 7550 3550 50 
F3 "RESET" I L 7550 3450 50 
F4 "Latch_ODR" I L 7550 3250 50 
F5 "Latch_TRI" I L 7550 3150 50 
F6 "OE_ODR" I L 7550 2950 50 
F7 "OE_TRI" I L 7550 2850 50 
F8 "OE_IDR" I L 7550 2750 50 
F9 "0" O R 8350 2550 50 
F10 "1" O R 8350 2650 50 
F11 "2" O R 8350 2750 50 
F12 "3" O R 8350 2850 50 
F13 "DB[7..0]" I L 7550 2550 50 
$EndSheet
$Comp
L Connector_Generic:Conn_02x15_Odd_Even J?
U 1 1 6012B19C
P 1550 1650
F 0 "J?" H 1600 2450 50  0000 C CNN
F 1 "Interface_1" H 1600 2700 50  0000 C CNN
F 2 "Connector_IDC:IDC-Header_2x15_P2.54mm_Vertical" H 1550 1650 50  0001 C CNN
F 3 "~" H 1550 1650 50  0001 C CNN
	1    1550 1650
	1    0    0    -1  
$EndComp
Entry Wire Line
	600  950  700  1050
Entry Wire Line
	600  1050 700  1150
Entry Wire Line
	600  1150 700  1250
Entry Wire Line
	600  1250 700  1350
Entry Wire Line
	600  1350 700  1450
Entry Wire Line
	600  1450 700  1550
Entry Wire Line
	600  1550 700  1650
Entry Wire Line
	600  1650 700  1750
Wire Bus Line
	1150 800  600  800 
Text Label 1150 800  2    50   ~ 0
PeriphA[0..7]
Text Label 2200 1550 2    50   ~ 0
DB0
Text Label 2200 1650 2    50   ~ 0
DB1
Text Label 2200 1750 2    50   ~ 0
DB2
Text Label 2200 1850 2    50   ~ 0
DB3
Text Label 2200 1950 2    50   ~ 0
DB4
Text Label 2200 2050 2    50   ~ 0
DB5
Text Label 2200 2150 2    50   ~ 0
DB6
Text Label 2200 2250 2    50   ~ 0
DB7
$Comp
L power:+5V #PWR?
U 1 1 601B8799
P 1300 900
F 0 "#PWR?" H 1300 750 50  0001 C CNN
F 1 "+5V" H 1315 1073 50  0000 C CNN
F 2 "" H 1300 900 50  0001 C CNN
F 3 "" H 1300 900 50  0001 C CNN
	1    1300 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 900  1300 950 
Wire Wire Line
	1300 950  1350 950 
$Comp
L power:+5V #PWR?
U 1 1 601BA77E
P 1900 900
F 0 "#PWR?" H 1900 750 50  0001 C CNN
F 1 "+5V" H 1915 1073 50  0000 C CNN
F 2 "" H 1900 900 50  0001 C CNN
F 3 "" H 1900 900 50  0001 C CNN
	1    1900 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 900  1900 950 
Wire Wire Line
	1900 950  1850 950 
Wire Wire Line
	1350 2250 1300 2250
Wire Wire Line
	1300 2250 1300 2350
Wire Wire Line
	1300 2350 1350 2350
Wire Wire Line
	1300 2350 1300 2450
Connection ~ 1300 2350
Wire Wire Line
	1850 2350 1900 2350
Wire Wire Line
	1900 2350 1900 2450
$Comp
L power:GND #PWR?
U 1 1 601E6B8A
P 1900 2450
F 0 "#PWR?" H 1900 2200 50  0001 C CNN
F 1 "GND" H 1905 2277 50  0000 C CNN
F 2 "" H 1900 2450 50  0001 C CNN
F 3 "" H 1900 2450 50  0001 C CNN
	1    1900 2450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 601E7F01
P 1300 2450
F 0 "#PWR?" H 1300 2200 50  0001 C CNN
F 1 "GND" H 1305 2277 50  0000 C CNN
F 2 "" H 1300 2450 50  0001 C CNN
F 3 "" H 1300 2450 50  0001 C CNN
	1    1300 2450
	1    0    0    -1  
$EndComp
Text Label 700  1950 0    50   ~ 0
Periph_Sync_D_A
Text Label 700  2050 0    50   ~ 0
Periph_W
Text Label 700  2150 0    50   ~ 0
Periph_R
Text Label 700  1050 0    50   ~ 0
PeriphA0
Text Label 700  1150 0    50   ~ 0
PeriphA1
Text Label 700  1250 0    50   ~ 0
PeriphA2
Text Label 700  1350 0    50   ~ 0
PeriphA3
Text Label 700  1450 0    50   ~ 0
PeriphA4
Text Label 700  1550 0    50   ~ 0
PeriphA5
Text Label 700  1650 0    50   ~ 0
PeriphA6
Text Label 700  1750 0    50   ~ 0
PeriphA7
Wire Wire Line
	700  1050 1350 1050
Wire Wire Line
	700  1150 1350 1150
Wire Wire Line
	700  1250 1350 1250
Wire Wire Line
	700  1350 1350 1350
Wire Wire Line
	700  1450 1350 1450
Wire Wire Line
	700  1550 1350 1550
Wire Wire Line
	700  1650 1350 1650
Wire Wire Line
	700  1750 1350 1750
Wire Wire Line
	700  1850 1350 1850
Wire Wire Line
	700  1950 1350 1950
Wire Wire Line
	700  2050 1350 2050
Wire Wire Line
	700  2150 1350 2150
Text Label 700  1850 0    50   ~ 0
~RESET
Wire Wire Line
	1850 1050 2200 1050
Text Label 2200 1050 2    50   ~ 0
Int_EN
Text Label 2200 1150 2    50   ~ 0
Int_Active
Wire Wire Line
	1850 1150 2200 1150
Wire Wire Line
	1850 1250 2200 1250
Wire Wire Line
	1850 1350 2200 1350
Wire Wire Line
	1850 1450 2200 1450
Wire Wire Line
	1850 1550 2200 1550
Wire Wire Line
	1850 1650 2200 1650
Wire Wire Line
	1850 1750 2200 1750
Wire Wire Line
	1850 1850 2200 1850
Wire Wire Line
	1850 1950 2200 1950
Wire Wire Line
	1850 2050 2200 2050
Wire Wire Line
	1850 2150 2200 2150
Wire Wire Line
	1850 2250 2200 2250
Text Label 2200 1250 2    50   ~ 0
Int_Assert
Text Label 2200 1350 2    50   ~ 0
DB_OUT
Text Label 2200 1450 2    50   ~ 0
CLK
$Comp
L Connector_Generic:Conn_02x15_Odd_Even J?
U 1 1 62FDC88C
P 1550 4200
F 0 "J?" H 1600 5000 50  0000 C CNN
F 1 "Interface_2" H 1600 5250 50  0000 C CNN
F 2 "Connector_IDC:IDC-Header_2x15_P2.54mm_Vertical" H 1550 4200 50  0001 C CNN
F 3 "~" H 1550 4200 50  0001 C CNN
	1    1550 4200
	1    0    0    -1  
$EndComp
Entry Wire Line
	600  3500 700  3600
Entry Wire Line
	600  3600 700  3700
Entry Wire Line
	600  3700 700  3800
Entry Wire Line
	600  3800 700  3900
Entry Wire Line
	600  3900 700  4000
Entry Wire Line
	600  4000 700  4100
Entry Wire Line
	600  4100 700  4200
Entry Wire Line
	600  4200 700  4300
Wire Bus Line
	1150 3350 600  3350
Text Label 1150 3350 2    50   ~ 0
PeriphA[0..7]
Text Label 2200 4100 2    50   ~ 0
DB0
Text Label 2200 4200 2    50   ~ 0
DB1
Text Label 2200 4300 2    50   ~ 0
DB2
Text Label 2200 4400 2    50   ~ 0
DB3
Text Label 2200 4500 2    50   ~ 0
DB4
Text Label 2200 4600 2    50   ~ 0
DB5
Text Label 2200 4700 2    50   ~ 0
DB6
Text Label 2200 4800 2    50   ~ 0
DB7
$Comp
L power:+5V #PWR?
U 1 1 62FDC8A4
P 1300 3450
F 0 "#PWR?" H 1300 3300 50  0001 C CNN
F 1 "+5V" H 1315 3623 50  0000 C CNN
F 2 "" H 1300 3450 50  0001 C CNN
F 3 "" H 1300 3450 50  0001 C CNN
	1    1300 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 3450 1300 3500
Wire Wire Line
	1300 3500 1350 3500
$Comp
L power:+5V #PWR?
U 1 1 62FDC8AC
P 1900 3450
F 0 "#PWR?" H 1900 3300 50  0001 C CNN
F 1 "+5V" H 1915 3623 50  0000 C CNN
F 2 "" H 1900 3450 50  0001 C CNN
F 3 "" H 1900 3450 50  0001 C CNN
	1    1900 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 3450 1900 3500
Wire Wire Line
	1900 3500 1850 3500
Wire Wire Line
	1350 4800 1300 4800
Wire Wire Line
	1300 4800 1300 4900
Wire Wire Line
	1300 4900 1350 4900
Wire Wire Line
	1300 4900 1300 5000
Connection ~ 1300 4900
Wire Wire Line
	1850 4900 1900 4900
Wire Wire Line
	1900 4900 1900 5000
$Comp
L power:GND #PWR?
U 1 1 62FDC8BB
P 1900 5000
F 0 "#PWR?" H 1900 4750 50  0001 C CNN
F 1 "GND" H 1905 4827 50  0000 C CNN
F 2 "" H 1900 5000 50  0001 C CNN
F 3 "" H 1900 5000 50  0001 C CNN
	1    1900 5000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 62FDC8C1
P 1300 5000
F 0 "#PWR?" H 1300 4750 50  0001 C CNN
F 1 "GND" H 1305 4827 50  0000 C CNN
F 2 "" H 1300 5000 50  0001 C CNN
F 3 "" H 1300 5000 50  0001 C CNN
	1    1300 5000
	1    0    0    -1  
$EndComp
Text Label 700  4500 0    50   ~ 0
Periph_Sync_D_A
Text Label 700  4600 0    50   ~ 0
Periph_W
Text Label 700  4700 0    50   ~ 0
Periph_R
Text Label 700  3600 0    50   ~ 0
PeriphA0
Text Label 700  3700 0    50   ~ 0
PeriphA1
Text Label 700  3800 0    50   ~ 0
PeriphA2
Text Label 700  3900 0    50   ~ 0
PeriphA3
Text Label 700  4000 0    50   ~ 0
PeriphA4
Text Label 700  4100 0    50   ~ 0
PeriphA5
Text Label 700  4200 0    50   ~ 0
PeriphA6
Text Label 700  4300 0    50   ~ 0
PeriphA7
Wire Wire Line
	700  3600 1350 3600
Wire Wire Line
	700  3700 1350 3700
Wire Wire Line
	700  3800 1350 3800
Wire Wire Line
	700  3900 1350 3900
Wire Wire Line
	700  4000 1350 4000
Wire Wire Line
	700  4100 1350 4100
Wire Wire Line
	700  4200 1350 4200
Wire Wire Line
	700  4300 1350 4300
Wire Wire Line
	700  4400 1350 4400
Wire Wire Line
	700  4500 1350 4500
Wire Wire Line
	700  4600 1350 4600
Wire Wire Line
	700  4700 1350 4700
Text Label 700  4400 0    50   ~ 0
~RESET
Wire Wire Line
	1850 3600 2200 3600
Text Label 2200 3600 2    50   ~ 0
Int_EN
Text Label 2200 3700 2    50   ~ 0
Int_Active
Wire Wire Line
	1850 3700 2200 3700
Wire Wire Line
	1850 3800 2200 3800
Wire Wire Line
	1850 3900 2200 3900
Wire Wire Line
	1850 4000 2200 4000
Wire Wire Line
	1850 4100 2200 4100
Wire Wire Line
	1850 4200 2200 4200
Wire Wire Line
	1850 4300 2200 4300
Wire Wire Line
	1850 4400 2200 4400
Wire Wire Line
	1850 4500 2200 4500
Wire Wire Line
	1850 4600 2200 4600
Wire Wire Line
	1850 4700 2200 4700
Wire Wire Line
	1850 4800 2200 4800
Text Label 2200 3800 2    50   ~ 0
Int_Assert
Text Label 2200 3900 2    50   ~ 0
DB_OUT
Text Label 2200 4000 2    50   ~ 0
CLK
Entry Wire Line
	2200 1550 2300 1650
Entry Wire Line
	2200 1650 2300 1750
Entry Wire Line
	2200 1750 2300 1850
Entry Wire Line
	2200 1850 2300 1950
Entry Wire Line
	2200 1950 2300 2050
Entry Wire Line
	2200 2050 2300 2150
Entry Wire Line
	2200 2150 2300 2250
Entry Wire Line
	2200 2250 2300 2350
Wire Bus Line
	2300 2800 1700 2800
Text Label 1700 2800 0    50   ~ 0
DB[7..0]
Wire Bus Line
	7550 950  7100 950 
Text Label 7100 950  0    50   ~ 0
DB[7..0]
Wire Bus Line
	7550 2550 7100 2550
Text Label 7100 2550 0    50   ~ 0
DB[7..0]
Wire Wire Line
	7550 3550 7300 3550
Text Label 7300 3550 0    50   ~ 0
CLK
Wire Wire Line
	7550 1950 7300 1950
Text Label 7300 1950 0    50   ~ 0
CLK
Wire Wire Line
	8350 2550 8500 2550
Wire Wire Line
	8350 2650 8500 2650
Wire Wire Line
	8350 2750 8500 2750
Wire Wire Line
	8350 2850 8500 2850
NoConn ~ 8500 2550
NoConn ~ 8500 2650
NoConn ~ 8500 2750
NoConn ~ 8500 2850
$Sheet
S 9150 850  1150 1200
U 6301660C
F0 "ExtInterrupt" 50
F1 "ExtInterrupt.sch" 50
F2 "0" I L 9150 950 50 
F3 "1" I L 9150 1050 50 
F4 "2" I L 9150 1150 50 
F5 "3" I L 9150 1250 50 
F6 "RESET" I L 9150 1850 50 
F7 "CLK" I L 9150 1950 50 
$EndSheet
Text Notes 1550 6750 0    50   ~ 0
A_IDR\nA_TRI\nA_ODR\nA_INT\n\nB_IDR\nB_TRI\nB_OE
Wire Bus Line
	600  800  600  1650
Wire Bus Line
	600  3350 600  4200
Wire Bus Line
	2300 1650 2300 2800
$EndSCHEMATC
