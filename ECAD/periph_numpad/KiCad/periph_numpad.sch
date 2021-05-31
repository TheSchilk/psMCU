EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 13
Title "Numpad Periph"
Date "2021-05-31"
Rev "v1.0"
Comp "Philipp Schilk"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Notes Line
	10350 5450 11100 5450
Wire Notes Line
	10350 5700 11100 5700
Wire Notes Line
	10350 5950 11100 5950
Wire Notes Line
	10350 6200 11100 6200
Text Notes 10700 6350 0    50   ~ 0
0
Text Notes 10850 6350 0    50   ~ 0
ENTER
Text Notes 10350 6350 0    50   ~ 0
BACK
Text Notes 10450 5600 0    50   ~ 0
7
Text Notes 10700 5650 0    50   ~ 0
/\\n8\n
Text Notes 10950 5600 0    50   ~ 0
9
Text Notes 10400 5850 0    50   ~ 0
<4
Text Notes 10700 5850 0    50   ~ 0
5
Text Notes 10950 5850 0    50   ~ 0
6>
Text Notes 10450 6100 0    50   ~ 0
1
Text Notes 10700 6150 0    50   ~ 0
2\n\/
Text Notes 10950 6100 0    50   ~ 0
3
Wire Notes Line
	10350 5450 10350 6450
Wire Notes Line
	10600 5450 10600 6450
Wire Notes Line
	10350 6450 11100 6450
Wire Notes Line
	10850 6450 10850 5450
Wire Notes Line
	11100 5450 11100 6450
$Comp
L Connector_Generic:Conn_02x15_Odd_Even J1
U 1 1 6012B19C
P 1650 6550
F 0 "J1" H 1700 7400 50  0000 C CNN
F 1 "PERIPH_INTERFACE_A" H 1700 7600 50  0000 C CNN
F 2 "Connector_IDC:IDC-Header_2x15_P2.54mm_Vertical" H 1650 6550 50  0001 C CNN
F 3 "~" H 1650 6550 50  0001 C CNN
	1    1650 6550
	1    0    0    -1  
$EndComp
Entry Wire Line
	650  5850 750  5950
Entry Wire Line
	650  5950 750  6050
Entry Wire Line
	650  6050 750  6150
Entry Wire Line
	650  6150 750  6250
Entry Wire Line
	650  6250 750  6350
Entry Wire Line
	650  6350 750  6450
Entry Wire Line
	650  6450 750  6550
Entry Wire Line
	650  6550 750  6650
Text Label 1150 5800 2    50   ~ 0
PeriphA[0..7]
Text Label 2450 6450 2    50   ~ 0
DB0
Text Label 2450 6550 2    50   ~ 0
DB1
Text Label 2450 6650 2    50   ~ 0
DB2
Text Label 2450 6750 2    50   ~ 0
DB3
Text Label 2450 6850 2    50   ~ 0
DB4
Text Label 2450 6950 2    50   ~ 0
DB5
Text Label 2450 7050 2    50   ~ 0
DB6
Text Label 2450 7150 2    50   ~ 0
DB7
$Comp
L power:+5V #PWR03
U 1 1 601B8799
P 1400 5800
F 0 "#PWR03" H 1400 5650 50  0001 C CNN
F 1 "+5V" H 1415 5973 50  0000 C CNN
F 2 "" H 1400 5800 50  0001 C CNN
F 3 "" H 1400 5800 50  0001 C CNN
	1    1400 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 5800 1400 5850
Wire Wire Line
	1400 5850 1450 5850
$Comp
L power:+5V #PWR09
U 1 1 601BA77E
P 2000 5800
F 0 "#PWR09" H 2000 5650 50  0001 C CNN
F 1 "+5V" H 2015 5973 50  0000 C CNN
F 2 "" H 2000 5800 50  0001 C CNN
F 3 "" H 2000 5800 50  0001 C CNN
	1    2000 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 5800 2000 5850
Wire Wire Line
	2000 5850 1950 5850
Wire Wire Line
	1450 7150 1400 7150
Wire Wire Line
	1400 7150 1400 7250
Wire Wire Line
	1400 7250 1450 7250
Wire Wire Line
	1400 7250 1400 7350
Connection ~ 1400 7250
Wire Wire Line
	1950 7250 2000 7250
Wire Wire Line
	2000 7250 2000 7350
$Comp
L power:GND #PWR010
U 1 1 601E6B8A
P 2000 7350
F 0 "#PWR010" H 2000 7100 50  0001 C CNN
F 1 "GND" H 2005 7177 50  0000 C CNN
F 2 "" H 2000 7350 50  0001 C CNN
F 3 "" H 2000 7350 50  0001 C CNN
	1    2000 7350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 601E7F01
P 1400 7350
F 0 "#PWR04" H 1400 7100 50  0001 C CNN
F 1 "GND" H 1405 7177 50  0000 C CNN
F 2 "" H 1400 7350 50  0001 C CNN
F 3 "" H 1400 7350 50  0001 C CNN
	1    1400 7350
	1    0    0    -1  
$EndComp
Text Label 750  6850 0    50   ~ 0
Periph_Sync_D_A
Text Label 750  6950 0    50   ~ 0
Periph_W
Text Label 750  7050 0    50   ~ 0
Periph_R
Text Label 750  5950 0    50   ~ 0
PeriphA0
Text Label 750  6050 0    50   ~ 0
PeriphA1
Text Label 750  6150 0    50   ~ 0
PeriphA2
Text Label 750  6250 0    50   ~ 0
PeriphA3
Text Label 750  6350 0    50   ~ 0
PeriphA4
Text Label 750  6450 0    50   ~ 0
PeriphA5
Text Label 750  6550 0    50   ~ 0
PeriphA6
Text Label 750  6650 0    50   ~ 0
PeriphA7
Text Label 2450 5950 2    50   ~ 0
Int_EN
Text Label 2450 6050 2    50   ~ 0
Int_Active
Text Label 2450 6150 2    50   ~ 0
Int_Assert
Text Label 2450 6250 2    50   ~ 0
DB_OUT
Text Label 2450 6350 2    50   ~ 0
CLK
Text Label 750  6750 0    50   ~ 0
~RESET
Wire Wire Line
	1950 5950 2450 5950
Wire Wire Line
	1950 6050 2450 6050
Wire Wire Line
	1950 6150 2450 6150
Wire Wire Line
	1950 6250 2450 6250
Wire Wire Line
	1950 6350 2450 6350
Wire Wire Line
	1950 6450 2450 6450
Wire Wire Line
	1950 6550 2450 6550
Wire Wire Line
	1950 6650 2450 6650
Wire Wire Line
	1950 6750 2450 6750
Wire Wire Line
	1950 6850 2450 6850
Wire Wire Line
	1950 6950 2450 6950
Wire Wire Line
	1950 7050 2450 7050
Wire Wire Line
	1950 7150 2450 7150
Wire Wire Line
	750  5950 1450 5950
Wire Wire Line
	750  6050 1450 6050
Wire Wire Line
	750  6150 1450 6150
Wire Wire Line
	750  6250 1450 6250
Wire Wire Line
	750  6350 1450 6350
Wire Wire Line
	750  6450 1450 6450
Wire Wire Line
	750  6550 1450 6550
Wire Wire Line
	750  6650 1450 6650
Wire Bus Line
	650  5800 1150 5800
Entry Wire Line
	2450 6450 2550 6550
Entry Wire Line
	2450 6550 2550 6650
Entry Wire Line
	2450 6650 2550 6750
Entry Wire Line
	2450 6750 2550 6850
Entry Wire Line
	2450 6850 2550 6950
Entry Wire Line
	2450 6950 2550 7050
Entry Wire Line
	2450 7050 2550 7150
Entry Wire Line
	2450 7150 2550 7250
Wire Bus Line
	2550 7650 2200 7650
Text Label 2200 7650 0    50   ~ 0
DB[0..7]
Wire Wire Line
	750  6750 1450 6750
Wire Wire Line
	750  6850 1450 6850
Wire Wire Line
	750  6950 1450 6950
Wire Wire Line
	750  7050 1450 7050
$Comp
L Connector_Generic:Conn_02x15_Odd_Even J2
U 1 1 60B12527
P 3750 6550
F 0 "J2" H 3800 7400 50  0000 C CNN
F 1 "PERIPH_INTERFACE_B" H 3800 7600 50  0000 C CNN
F 2 "Connector_IDC:IDC-Header_2x15_P2.54mm_Vertical" H 3750 6550 50  0001 C CNN
F 3 "~" H 3750 6550 50  0001 C CNN
	1    3750 6550
	1    0    0    -1  
$EndComp
Entry Wire Line
	2750 5850 2850 5950
Entry Wire Line
	2750 5950 2850 6050
Entry Wire Line
	2750 6050 2850 6150
Entry Wire Line
	2750 6150 2850 6250
Entry Wire Line
	2750 6250 2850 6350
Entry Wire Line
	2750 6350 2850 6450
Entry Wire Line
	2750 6450 2850 6550
Entry Wire Line
	2750 6550 2850 6650
Text Label 3250 5800 2    50   ~ 0
PeriphA[0..7]
Text Label 4550 6450 2    50   ~ 0
DB0
Text Label 4550 6550 2    50   ~ 0
DB1
Text Label 4550 6650 2    50   ~ 0
DB2
Text Label 4550 6750 2    50   ~ 0
DB3
Text Label 4550 6850 2    50   ~ 0
DB4
Text Label 4550 6950 2    50   ~ 0
DB5
Text Label 4550 7050 2    50   ~ 0
DB6
Text Label 4550 7150 2    50   ~ 0
DB7
$Comp
L power:+5V #PWR019
U 1 1 60B1253E
P 3500 5800
F 0 "#PWR019" H 3500 5650 50  0001 C CNN
F 1 "+5V" H 3515 5973 50  0000 C CNN
F 2 "" H 3500 5800 50  0001 C CNN
F 3 "" H 3500 5800 50  0001 C CNN
	1    3500 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 5800 3500 5850
Wire Wire Line
	3500 5850 3550 5850
$Comp
L power:+5V #PWR025
U 1 1 60B12546
P 4100 5800
F 0 "#PWR025" H 4100 5650 50  0001 C CNN
F 1 "+5V" H 4115 5973 50  0000 C CNN
F 2 "" H 4100 5800 50  0001 C CNN
F 3 "" H 4100 5800 50  0001 C CNN
	1    4100 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 5800 4100 5850
Wire Wire Line
	4100 5850 4050 5850
Wire Wire Line
	3550 7150 3500 7150
Wire Wire Line
	3500 7150 3500 7250
Wire Wire Line
	3500 7250 3550 7250
Wire Wire Line
	3500 7250 3500 7350
Connection ~ 3500 7250
Wire Wire Line
	4050 7250 4100 7250
Wire Wire Line
	4100 7250 4100 7350
$Comp
L power:GND #PWR026
U 1 1 60B12555
P 4100 7350
F 0 "#PWR026" H 4100 7100 50  0001 C CNN
F 1 "GND" H 4105 7177 50  0000 C CNN
F 2 "" H 4100 7350 50  0001 C CNN
F 3 "" H 4100 7350 50  0001 C CNN
	1    4100 7350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR020
U 1 1 60B1255B
P 3500 7350
F 0 "#PWR020" H 3500 7100 50  0001 C CNN
F 1 "GND" H 3505 7177 50  0000 C CNN
F 2 "" H 3500 7350 50  0001 C CNN
F 3 "" H 3500 7350 50  0001 C CNN
	1    3500 7350
	1    0    0    -1  
$EndComp
Text Label 2850 6850 0    50   ~ 0
Periph_Sync_D_A
Text Label 2850 6950 0    50   ~ 0
Periph_W
Text Label 2850 7050 0    50   ~ 0
Periph_R
Text Label 2850 5950 0    50   ~ 0
PeriphA0
Text Label 2850 6050 0    50   ~ 0
PeriphA1
Text Label 2850 6150 0    50   ~ 0
PeriphA2
Text Label 2850 6250 0    50   ~ 0
PeriphA3
Text Label 2850 6350 0    50   ~ 0
PeriphA4
Text Label 2850 6450 0    50   ~ 0
PeriphA5
Text Label 2850 6550 0    50   ~ 0
PeriphA6
Text Label 2850 6650 0    50   ~ 0
PeriphA7
Text Label 4550 5950 2    50   ~ 0
Int_EN
Text Label 4550 6050 2    50   ~ 0
Int_Active
Text Label 4550 6150 2    50   ~ 0
Int_Assert
Text Label 4550 6250 2    50   ~ 0
DB_OUT
Text Label 4550 6350 2    50   ~ 0
CLK
Text Label 2850 6750 0    50   ~ 0
~RESET
Wire Wire Line
	4050 5950 4550 5950
Wire Wire Line
	4050 6050 4550 6050
Wire Wire Line
	4050 6150 4550 6150
Wire Wire Line
	4050 6250 4550 6250
Wire Wire Line
	4050 6350 4550 6350
Wire Wire Line
	4050 6450 4550 6450
Wire Wire Line
	4050 6550 4550 6550
Wire Wire Line
	4050 6650 4550 6650
Wire Wire Line
	4050 6750 4550 6750
Wire Wire Line
	4050 6850 4550 6850
Wire Wire Line
	4050 6950 4550 6950
Wire Wire Line
	4050 7050 4550 7050
Wire Wire Line
	4050 7150 4550 7150
Wire Wire Line
	2850 5950 3550 5950
Wire Wire Line
	2850 6050 3550 6050
Wire Wire Line
	2850 6150 3550 6150
Wire Wire Line
	2850 6250 3550 6250
Wire Wire Line
	2850 6350 3550 6350
Wire Wire Line
	2850 6450 3550 6450
Wire Wire Line
	2850 6550 3550 6550
Wire Wire Line
	2850 6650 3550 6650
Wire Bus Line
	2750 5800 3250 5800
Entry Wire Line
	4550 6450 4650 6550
Entry Wire Line
	4550 6550 4650 6650
Entry Wire Line
	4550 6650 4650 6750
Entry Wire Line
	4550 6750 4650 6850
Entry Wire Line
	4550 6850 4650 6950
Entry Wire Line
	4550 6950 4650 7050
Entry Wire Line
	4550 7050 4650 7150
Entry Wire Line
	4550 7150 4650 7250
Wire Bus Line
	4650 7650 4300 7650
Text Label 4300 7650 0    50   ~ 0
DB[0..7]
Wire Wire Line
	2850 6750 3550 6750
Wire Wire Line
	2850 6850 3550 6850
Wire Wire Line
	2850 6950 3550 6950
Wire Wire Line
	2850 7050 3550 7050
$Sheet
S 8200 2450 550  300 
U 60B3C537
F0 "Btn_Back" 50
F1 "Btn.sch" 50
F2 "OUT" O R 8750 2600 50 
$EndSheet
$Sheet
S 9200 2450 550  300 
U 60B46F40
F0 "Btn_0" 50
F1 "Btn.sch" 50
F2 "OUT" O R 9750 2600 50 
$EndSheet
$Sheet
S 8200 650  550  300 
U 60B505AD
F0 "Btn_7" 50
F1 "Btn.sch" 50
F2 "OUT" O R 8750 800 50 
$EndSheet
$Sheet
S 9200 650  550  300 
U 60B505B0
F0 "Btn_8" 50
F1 "Btn.sch" 50
F2 "OUT" O R 9750 800 50 
$EndSheet
$Sheet
S 10200 650  550  300 
U 60B505B3
F0 "Btn_9" 50
F1 "Btn.sch" 50
F2 "OUT" O R 10750 800 50 
$EndSheet
$Sheet
S 8200 1250 550  300 
U 60B52532
F0 "Btn_4" 50
F1 "Btn.sch" 50
F2 "OUT" O R 8750 1400 50 
$EndSheet
$Sheet
S 9200 1250 550  300 
U 60B52535
F0 "Btn_5" 50
F1 "Btn.sch" 50
F2 "OUT" O R 9750 1400 50 
$EndSheet
$Sheet
S 10200 1250 550  300 
U 60B52538
F0 "Btn_6" 50
F1 "Btn.sch" 50
F2 "OUT" O R 10750 1400 50 
$EndSheet
$Sheet
S 8200 1850 550  300 
U 60B5446F
F0 "Btn_1" 50
F1 "Btn.sch" 50
F2 "OUT" O R 8750 2000 50 
$EndSheet
$Sheet
S 9200 1850 550  300 
U 60B54472
F0 "Btn_2" 50
F1 "Btn.sch" 50
F2 "OUT" O R 9750 2000 50 
$EndSheet
$Sheet
S 10200 1850 550  300 
U 60B54475
F0 "Btn_3" 50
F1 "Btn.sch" 50
F2 "OUT" O R 10750 2000 50 
$EndSheet
Wire Wire Line
	9750 2600 10050 2600
$Sheet
S 10200 2450 550  300 
U 60B48D03
F0 "Btn_Enter" 50
F1 "Btn.sch" 50
F2 "OUT" O R 10750 2600 50 
$EndSheet
Wire Wire Line
	10750 2000 11050 2000
Wire Wire Line
	10750 1400 11050 1400
Wire Wire Line
	10750 800  11050 800 
Wire Wire Line
	8750 2000 9050 2000
Wire Wire Line
	8750 1400 9050 1400
Wire Wire Line
	8750 800  9050 800 
Wire Wire Line
	9750 2000 10050 2000
Wire Wire Line
	9750 1400 10050 1400
Wire Wire Line
	9750 800  10050 800 
Text Label 10050 2600 2    50   ~ 0
Btn_0
Text Label 9050 2000 2    50   ~ 0
Btn_1
Text Label 10050 2000 2    50   ~ 0
Btn_2
Text Label 11050 2000 2    50   ~ 0
Btn_3
Text Label 9050 1400 2    50   ~ 0
Btn_4
Text Label 10050 1400 2    50   ~ 0
Btn_5
Text Label 11050 1400 2    50   ~ 0
Btn_6
Text Label 9050 800  2    50   ~ 0
Btn_7
Text Label 10050 800  2    50   ~ 0
Btn_8
Text Label 11050 800  2    50   ~ 0
Btn_9
Text Label 11200 2600 2    50   ~ 0
Btn_Enter
Text Label 9150 2600 2    50   ~ 0
Btn_Back
Wire Wire Line
	10750 2600 11200 2600
Wire Wire Line
	8750 2600 9150 2600
Wire Wire Line
	6750 1350 6450 1350
Wire Wire Line
	6750 1650 6450 1650
Wire Wire Line
	6750 1950 6450 1950
Text Label 6450 1350 0    50   ~ 0
Btn_1
Text Label 6450 1650 0    50   ~ 0
Btn_4
Text Label 6450 1950 0    50   ~ 0
Btn_7
Text Label 6350 3600 0    50   ~ 0
Btn_Back
Wire Wire Line
	6750 3600 6350 3600
Wire Wire Line
	6750 1250 6450 1250
Wire Wire Line
	6750 1450 6450 1450
Wire Wire Line
	6750 1750 6450 1750
Wire Wire Line
	6750 3400 6450 3400
Text Label 6450 1250 0    50   ~ 0
Btn_0
Text Label 6450 1450 0    50   ~ 0
Btn_2
Text Label 6450 1750 0    50   ~ 0
Btn_5
Text Label 6450 3400 0    50   ~ 0
Btn_8
Wire Wire Line
	6750 1850 6450 1850
Wire Wire Line
	6750 3500 6450 3500
Text Label 6450 1850 0    50   ~ 0
Btn_6
Text Label 6450 3500 0    50   ~ 0
Btn_9
Text Label 6350 3700 0    50   ~ 0
Btn_Enter
Wire Wire Line
	6750 3700 6350 3700
Text Label 6450 1550 0    50   ~ 0
Btn_3
Wire Wire Line
	6750 1550 6450 1550
$Comp
L Mechanical:MountingHole H4
U 1 1 610061CC
P 6050 7650
F 0 "H4" H 6150 7696 50  0000 L CNN
F 1 "MH" H 6150 7605 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad_Via" H 6050 7650 50  0001 C CNN
F 3 "~" H 6050 7650 50  0001 C CNN
	1    6050 7650
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 6100511B
P 5700 7650
F 0 "H2" H 5800 7696 50  0000 L CNN
F 1 "MH" H 5800 7605 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad_Via" H 5700 7650 50  0001 C CNN
F 3 "~" H 5700 7650 50  0001 C CNN
	1    5700 7650
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 61004110
P 6050 7350
F 0 "H3" H 6150 7396 50  0000 L CNN
F 1 "MH" H 6150 7305 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad_Via" H 6050 7350 50  0001 C CNN
F 3 "~" H 6050 7350 50  0001 C CNN
	1    6050 7350
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H1
U 1 1 610029C5
P 5700 7350
F 0 "H1" H 5800 7396 50  0000 L CNN
F 1 "MH" H 5800 7305 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad_Via" H 5700 7350 50  0001 C CNN
F 3 "~" H 5700 7350 50  0001 C CNN
	1    5700 7350
	1    0    0    -1  
$EndComp
Wire Wire Line
	7250 2600 7250 2550
Wire Wire Line
	7550 850  7500 850 
Wire Wire Line
	7250 850  7250 750 
Connection ~ 7250 850 
Wire Wire Line
	7300 850  7250 850 
Wire Wire Line
	7250 950  7250 850 
Wire Wire Line
	6650 2150 6750 2150
$Comp
L power:GND #PWR?
U 1 1 5F7053EE
P 7250 2600
AR Path="/5ED2705B/5F7053EE" Ref="#PWR?"  Part="1" 
AR Path="/609EB802/5F7053EE" Ref="#PWR?"  Part="1" 
AR Path="/5F3A2F3D/5F7053EE" Ref="#PWR?"  Part="1" 
AR Path="/5F629530/5F7053EE" Ref="#PWR?"  Part="1" 
AR Path="/5F6FD493/5F7053EE" Ref="#PWR?"  Part="1" 
AR Path="/5F7053EE" Ref="#PWR041"  Part="1" 
F 0 "#PWR041" H 7250 2350 50  0001 C CNN
F 1 "GND" H 7450 2550 50  0000 C CNN
F 2 "" H 7250 2600 50  0001 C CNN
F 3 "" H 7250 2600 50  0001 C CNN
	1    7250 2600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F7053F4
P 7550 850
AR Path="/5ED2705B/5F7053F4" Ref="#PWR?"  Part="1" 
AR Path="/609EB802/5F7053F4" Ref="#PWR?"  Part="1" 
AR Path="/5F3A2F3D/5F7053F4" Ref="#PWR?"  Part="1" 
AR Path="/5F629530/5F7053F4" Ref="#PWR?"  Part="1" 
AR Path="/5F6FD493/5F7053F4" Ref="#PWR?"  Part="1" 
AR Path="/5F7053F4" Ref="#PWR044"  Part="1" 
F 0 "#PWR044" H 7550 600 50  0001 C CNN
F 1 "GND" V 7555 722 50  0000 R CNN
F 2 "" H 7550 850 50  0001 C CNN
F 3 "" H 7550 850 50  0001 C CNN
	1    7550 850 
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5F7053FA
P 7250 750
AR Path="/5ED2705B/5F7053FA" Ref="#PWR?"  Part="1" 
AR Path="/609EB802/5F7053FA" Ref="#PWR?"  Part="1" 
AR Path="/5F3A2F3D/5F7053FA" Ref="#PWR?"  Part="1" 
AR Path="/5F629530/5F7053FA" Ref="#PWR?"  Part="1" 
AR Path="/5F6FD493/5F7053FA" Ref="#PWR?"  Part="1" 
AR Path="/5F7053FA" Ref="#PWR040"  Part="1" 
F 0 "#PWR040" H 7250 600 50  0001 C CNN
F 1 "+5V" H 7100 850 50  0000 C CNN
F 2 "" H 7250 750 50  0001 C CNN
F 3 "" H 7250 750 50  0001 C CNN
	1    7250 750 
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC245 U?
U 1 1 5F705400
P 7250 1750
AR Path="/5ED2705B/5F705400" Ref="U?"  Part="1" 
AR Path="/609EB802/5F705400" Ref="U?"  Part="1" 
AR Path="/5F3A2F3D/5F705400" Ref="U?"  Part="1" 
AR Path="/5F629530/5F705400" Ref="U?"  Part="1" 
AR Path="/5F6FD493/5F705400" Ref="U?"  Part="1" 
AR Path="/5F705400" Ref="U8"  Part="1" 
F 0 "U8" H 7350 2500 50  0000 C CNN
F 1 "SN74HC245PW" H 7550 2400 50  0000 C CNN
F 2 "Package_SO:TSSOP-20_4.4x6.5mm_P0.65mm" H 7250 1750 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HC245" H 7250 1750 50  0001 C CNN
	1    7250 1750
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5F705406
P 6650 2150
AR Path="/5ED2705B/5F705406" Ref="#PWR?"  Part="1" 
AR Path="/609EB802/5F705406" Ref="#PWR?"  Part="1" 
AR Path="/5F3A2F3D/5F705406" Ref="#PWR?"  Part="1" 
AR Path="/5F629530/5F705406" Ref="#PWR?"  Part="1" 
AR Path="/5F6FD493/5F705406" Ref="#PWR?"  Part="1" 
AR Path="/5F705406" Ref="#PWR037"  Part="1" 
F 0 "#PWR037" H 6650 2000 50  0001 C CNN
F 1 "+5V" H 6650 2300 50  0000 C CNN
F 2 "" H 6650 2150 50  0001 C CNN
F 3 "" H 6650 2150 50  0001 C CNN
	1    6650 2150
	0    -1   -1   0   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5F705414
P 7400 850
AR Path="/5ED2705B/5F705414" Ref="C?"  Part="1" 
AR Path="/609EB802/5F705414" Ref="C?"  Part="1" 
AR Path="/5F3A2F3D/5F705414" Ref="C?"  Part="1" 
AR Path="/5F629530/5F705414" Ref="C?"  Part="1" 
AR Path="/5F6FD493/5F705414" Ref="C?"  Part="1" 
AR Path="/5F705414" Ref="C8"  Part="1" 
F 0 "C8" V 7171 850 50  0000 C CNN
F 1 "0u1" V 7262 850 50  0000 C CNN
F 2 "NoRef_Footprints:C_0603_1608Metric_NoRef" H 7400 850 50  0001 C CNN
F 3 "~" H 7400 850 50  0001 C CNN
	1    7400 850 
	0    1    1    0   
$EndComp
Wire Wire Line
	5750 2150 5750 2050
Wire Wire Line
	5800 2050 5750 2050
Connection ~ 5750 2050
Wire Wire Line
	5750 2050 5750 2000
Wire Wire Line
	6050 2050 6000 2050
Wire Wire Line
	5750 2450 5750 2350
$Comp
L power:+5V #PWR?
U 1 1 5F7539B6
P 5750 2000
AR Path="/5ED2705B/5F7539B6" Ref="#PWR?"  Part="1" 
AR Path="/5F1CE57C/5F7539B6" Ref="#PWR?"  Part="1" 
AR Path="/609EB802/5F7539B6" Ref="#PWR?"  Part="1" 
AR Path="/5F3A2F3D/5F7539B6" Ref="#PWR?"  Part="1" 
AR Path="/5F6FD493/5F7539B6" Ref="#PWR?"  Part="1" 
AR Path="/5F7539B6" Ref="#PWR029"  Part="1" 
F 0 "#PWR029" H 5750 1850 50  0001 C CNN
F 1 "+5V" H 5692 2037 50  0000 R CNN
F 2 "" H 5750 2000 50  0001 C CNN
F 3 "" H 5750 2000 50  0001 C CNN
	1    5750 2000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F7539BC
P 6050 2050
AR Path="/5ED2705B/5F7539BC" Ref="#PWR?"  Part="1" 
AR Path="/5F1CE57C/5F7539BC" Ref="#PWR?"  Part="1" 
AR Path="/609EB802/5F7539BC" Ref="#PWR?"  Part="1" 
AR Path="/5F3A2F3D/5F7539BC" Ref="#PWR?"  Part="1" 
AR Path="/5F6FD493/5F7539BC" Ref="#PWR?"  Part="1" 
AR Path="/5F7539BC" Ref="#PWR034"  Part="1" 
F 0 "#PWR034" H 6050 1800 50  0001 C CNN
F 1 "GND" V 6055 1922 50  0000 R CNN
F 2 "" H 6050 2050 50  0001 C CNN
F 3 "" H 6050 2050 50  0001 C CNN
	1    6050 2050
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F7539C2
P 5750 2450
AR Path="/5ED2705B/5F7539C2" Ref="#PWR?"  Part="1" 
AR Path="/5F1CE57C/5F7539C2" Ref="#PWR?"  Part="1" 
AR Path="/609EB802/5F7539C2" Ref="#PWR?"  Part="1" 
AR Path="/5F3A2F3D/5F7539C2" Ref="#PWR?"  Part="1" 
AR Path="/5F6FD493/5F7539C2" Ref="#PWR?"  Part="1" 
AR Path="/5F7539C2" Ref="#PWR030"  Part="1" 
F 0 "#PWR030" H 5750 2200 50  0001 C CNN
F 1 "GND" H 5755 2277 50  0000 C CNN
F 2 "" H 5750 2450 50  0001 C CNN
F 3 "" H 5750 2450 50  0001 C CNN
	1    5750 2450
	1    0    0    -1  
$EndComp
$Comp
L 74xGxx:74LVC1G04 U?
U 1 1 5F7539ED
P 5750 2250
AR Path="/5ED2705B/5F7539ED" Ref="U?"  Part="1" 
AR Path="/5F1CE57C/5F7539ED" Ref="U?"  Part="1" 
AR Path="/609EB802/5F7539ED" Ref="U?"  Part="1" 
AR Path="/5F3A2F3D/5F7539ED" Ref="U?"  Part="1" 
AR Path="/5F6FD493/5F7539ED" Ref="U?"  Part="1" 
AR Path="/5F7539ED" Ref="U6"  Part="1" 
F 0 "U6" H 5850 2050 50  0000 C CNN
F 1 "SN74LVC1G04DCK" H 6100 2150 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-353_SC-70-5" H 5750 2250 50  0001 C CNN
F 3 "http://www.ti.com/lit/sg/scyt129e/scyt129e.pdf" H 5750 2250 50  0001 C CNN
	1    5750 2250
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5F7539F3
P 5900 2050
AR Path="/5ED2705B/5F7539F3" Ref="C?"  Part="1" 
AR Path="/5F1CE57C/5F7539F3" Ref="C?"  Part="1" 
AR Path="/609EB802/5F7539F3" Ref="C?"  Part="1" 
AR Path="/5F3A2F3D/5F7539F3" Ref="C?"  Part="1" 
AR Path="/5F6FD493/5F7539F3" Ref="C?"  Part="1" 
AR Path="/5F7539F3" Ref="C6"  Part="1" 
F 0 "C6" V 5671 2050 50  0000 C CNN
F 1 "0u1" V 5762 2050 50  0000 C CNN
F 2 "NoRef_Footprints:C_0603_1608Metric_NoRef" H 5900 2050 50  0001 C CNN
F 3 "~" H 5900 2050 50  0001 C CNN
	1    5900 2050
	0    1    1    0   
$EndComp
Wire Wire Line
	6000 2250 6750 2250
Wire Wire Line
	7250 4750 7250 4700
Wire Wire Line
	7550 3000 7500 3000
Wire Wire Line
	7250 3000 7250 2900
Connection ~ 7250 3000
Wire Wire Line
	7300 3000 7250 3000
Wire Wire Line
	7250 3100 7250 3000
Wire Wire Line
	6650 4300 6750 4300
$Comp
L power:GND #PWR?
U 1 1 60D1829D
P 7250 4750
AR Path="/5ED2705B/60D1829D" Ref="#PWR?"  Part="1" 
AR Path="/609EB802/60D1829D" Ref="#PWR?"  Part="1" 
AR Path="/5F3A2F3D/60D1829D" Ref="#PWR?"  Part="1" 
AR Path="/5F629530/60D1829D" Ref="#PWR?"  Part="1" 
AR Path="/5F6FD493/60D1829D" Ref="#PWR?"  Part="1" 
AR Path="/60D1829D" Ref="#PWR043"  Part="1" 
F 0 "#PWR043" H 7250 4500 50  0001 C CNN
F 1 "GND" H 7450 4700 50  0000 C CNN
F 2 "" H 7250 4750 50  0001 C CNN
F 3 "" H 7250 4750 50  0001 C CNN
	1    7250 4750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60D182A3
P 7550 3000
AR Path="/5ED2705B/60D182A3" Ref="#PWR?"  Part="1" 
AR Path="/609EB802/60D182A3" Ref="#PWR?"  Part="1" 
AR Path="/5F3A2F3D/60D182A3" Ref="#PWR?"  Part="1" 
AR Path="/5F629530/60D182A3" Ref="#PWR?"  Part="1" 
AR Path="/5F6FD493/60D182A3" Ref="#PWR?"  Part="1" 
AR Path="/60D182A3" Ref="#PWR045"  Part="1" 
F 0 "#PWR045" H 7550 2750 50  0001 C CNN
F 1 "GND" V 7555 2872 50  0000 R CNN
F 2 "" H 7550 3000 50  0001 C CNN
F 3 "" H 7550 3000 50  0001 C CNN
	1    7550 3000
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 60D182A9
P 7250 2900
AR Path="/5ED2705B/60D182A9" Ref="#PWR?"  Part="1" 
AR Path="/609EB802/60D182A9" Ref="#PWR?"  Part="1" 
AR Path="/5F3A2F3D/60D182A9" Ref="#PWR?"  Part="1" 
AR Path="/5F629530/60D182A9" Ref="#PWR?"  Part="1" 
AR Path="/5F6FD493/60D182A9" Ref="#PWR?"  Part="1" 
AR Path="/60D182A9" Ref="#PWR042"  Part="1" 
F 0 "#PWR042" H 7250 2750 50  0001 C CNN
F 1 "+5V" H 7100 3000 50  0000 C CNN
F 2 "" H 7250 2900 50  0001 C CNN
F 3 "" H 7250 2900 50  0001 C CNN
	1    7250 2900
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC245 U?
U 1 1 60D182AF
P 7250 3900
AR Path="/5ED2705B/60D182AF" Ref="U?"  Part="1" 
AR Path="/609EB802/60D182AF" Ref="U?"  Part="1" 
AR Path="/5F3A2F3D/60D182AF" Ref="U?"  Part="1" 
AR Path="/5F629530/60D182AF" Ref="U?"  Part="1" 
AR Path="/5F6FD493/60D182AF" Ref="U?"  Part="1" 
AR Path="/60D182AF" Ref="U9"  Part="1" 
F 0 "U9" H 7350 4650 50  0000 C CNN
F 1 "SN74HC245PW" H 7550 4550 50  0000 C CNN
F 2 "Package_SO:TSSOP-20_4.4x6.5mm_P0.65mm" H 7250 3900 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HC245" H 7250 3900 50  0001 C CNN
	1    7250 3900
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 60D182B5
P 6650 4300
AR Path="/5ED2705B/60D182B5" Ref="#PWR?"  Part="1" 
AR Path="/609EB802/60D182B5" Ref="#PWR?"  Part="1" 
AR Path="/5F3A2F3D/60D182B5" Ref="#PWR?"  Part="1" 
AR Path="/5F629530/60D182B5" Ref="#PWR?"  Part="1" 
AR Path="/5F6FD493/60D182B5" Ref="#PWR?"  Part="1" 
AR Path="/60D182B5" Ref="#PWR039"  Part="1" 
F 0 "#PWR039" H 6650 4150 50  0001 C CNN
F 1 "+5V" H 6650 4450 50  0000 C CNN
F 2 "" H 6650 4300 50  0001 C CNN
F 3 "" H 6650 4300 50  0001 C CNN
	1    6650 4300
	0    -1   -1   0   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 60D182BB
P 7400 3000
AR Path="/5ED2705B/60D182BB" Ref="C?"  Part="1" 
AR Path="/609EB802/60D182BB" Ref="C?"  Part="1" 
AR Path="/5F3A2F3D/60D182BB" Ref="C?"  Part="1" 
AR Path="/5F629530/60D182BB" Ref="C?"  Part="1" 
AR Path="/5F6FD493/60D182BB" Ref="C?"  Part="1" 
AR Path="/60D182BB" Ref="C9"  Part="1" 
F 0 "C9" V 7171 3000 50  0000 C CNN
F 1 "0u1" V 7262 3000 50  0000 C CNN
F 2 "NoRef_Footprints:C_0603_1608Metric_NoRef" H 7400 3000 50  0001 C CNN
F 3 "~" H 7400 3000 50  0001 C CNN
	1    7400 3000
	0    1    1    0   
$EndComp
Wire Wire Line
	5750 4300 5750 4200
Wire Wire Line
	5800 4200 5750 4200
Connection ~ 5750 4200
Wire Wire Line
	5750 4200 5750 4150
Wire Wire Line
	6050 4200 6000 4200
Wire Wire Line
	5750 4600 5750 4500
$Comp
L power:+5V #PWR?
U 1 1 60D182C7
P 5750 4150
AR Path="/5ED2705B/60D182C7" Ref="#PWR?"  Part="1" 
AR Path="/5F1CE57C/60D182C7" Ref="#PWR?"  Part="1" 
AR Path="/609EB802/60D182C7" Ref="#PWR?"  Part="1" 
AR Path="/5F3A2F3D/60D182C7" Ref="#PWR?"  Part="1" 
AR Path="/5F6FD493/60D182C7" Ref="#PWR?"  Part="1" 
AR Path="/60D182C7" Ref="#PWR031"  Part="1" 
F 0 "#PWR031" H 5750 4000 50  0001 C CNN
F 1 "+5V" H 5692 4187 50  0000 R CNN
F 2 "" H 5750 4150 50  0001 C CNN
F 3 "" H 5750 4150 50  0001 C CNN
	1    5750 4150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60D182CD
P 6050 4200
AR Path="/5ED2705B/60D182CD" Ref="#PWR?"  Part="1" 
AR Path="/5F1CE57C/60D182CD" Ref="#PWR?"  Part="1" 
AR Path="/609EB802/60D182CD" Ref="#PWR?"  Part="1" 
AR Path="/5F3A2F3D/60D182CD" Ref="#PWR?"  Part="1" 
AR Path="/5F6FD493/60D182CD" Ref="#PWR?"  Part="1" 
AR Path="/60D182CD" Ref="#PWR035"  Part="1" 
F 0 "#PWR035" H 6050 3950 50  0001 C CNN
F 1 "GND" V 6055 4072 50  0000 R CNN
F 2 "" H 6050 4200 50  0001 C CNN
F 3 "" H 6050 4200 50  0001 C CNN
	1    6050 4200
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60D182D3
P 5750 4600
AR Path="/5ED2705B/60D182D3" Ref="#PWR?"  Part="1" 
AR Path="/5F1CE57C/60D182D3" Ref="#PWR?"  Part="1" 
AR Path="/609EB802/60D182D3" Ref="#PWR?"  Part="1" 
AR Path="/5F3A2F3D/60D182D3" Ref="#PWR?"  Part="1" 
AR Path="/5F6FD493/60D182D3" Ref="#PWR?"  Part="1" 
AR Path="/60D182D3" Ref="#PWR032"  Part="1" 
F 0 "#PWR032" H 5750 4350 50  0001 C CNN
F 1 "GND" H 5755 4427 50  0000 C CNN
F 2 "" H 5750 4600 50  0001 C CNN
F 3 "" H 5750 4600 50  0001 C CNN
	1    5750 4600
	1    0    0    -1  
$EndComp
$Comp
L 74xGxx:74LVC1G04 U?
U 1 1 60D182D9
P 5750 4400
AR Path="/5ED2705B/60D182D9" Ref="U?"  Part="1" 
AR Path="/5F1CE57C/60D182D9" Ref="U?"  Part="1" 
AR Path="/609EB802/60D182D9" Ref="U?"  Part="1" 
AR Path="/5F3A2F3D/60D182D9" Ref="U?"  Part="1" 
AR Path="/5F6FD493/60D182D9" Ref="U?"  Part="1" 
AR Path="/60D182D9" Ref="U7"  Part="1" 
F 0 "U7" H 5850 4200 50  0000 C CNN
F 1 "SN74LVC1G04DCK" H 6100 4300 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-353_SC-70-5" H 5750 4400 50  0001 C CNN
F 3 "http://www.ti.com/lit/sg/scyt129e/scyt129e.pdf" H 5750 4400 50  0001 C CNN
	1    5750 4400
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 60D182DF
P 5900 4200
AR Path="/5ED2705B/60D182DF" Ref="C?"  Part="1" 
AR Path="/5F1CE57C/60D182DF" Ref="C?"  Part="1" 
AR Path="/609EB802/60D182DF" Ref="C?"  Part="1" 
AR Path="/5F3A2F3D/60D182DF" Ref="C?"  Part="1" 
AR Path="/5F6FD493/60D182DF" Ref="C?"  Part="1" 
AR Path="/60D182DF" Ref="C7"  Part="1" 
F 0 "C7" V 5671 4200 50  0000 C CNN
F 1 "0u1" V 5762 4200 50  0000 C CNN
F 2 "NoRef_Footprints:C_0603_1608Metric_NoRef" H 5900 4200 50  0001 C CNN
F 3 "~" H 5900 4200 50  0001 C CNN
	1    5900 4200
	0    1    1    0   
$EndComp
Wire Wire Line
	6000 4400 6750 4400
Text Label 7950 3400 2    50   ~ 0
DB0
Text Label 7950 3500 2    50   ~ 0
DB1
Text Label 7950 3600 2    50   ~ 0
DB2
Text Label 7950 3700 2    50   ~ 0
DB3
Text Label 7950 3800 2    50   ~ 0
DB4
Text Label 7950 3900 2    50   ~ 0
DB5
Text Label 7950 4000 2    50   ~ 0
DB6
Text Label 7950 4100 2    50   ~ 0
DB7
Entry Wire Line
	7950 3400 8050 3500
Entry Wire Line
	7950 3500 8050 3600
Entry Wire Line
	7950 3600 8050 3700
Entry Wire Line
	7950 3700 8050 3800
Entry Wire Line
	7950 3800 8050 3900
Entry Wire Line
	7950 3900 8050 4000
Entry Wire Line
	7950 4000 8050 4100
Entry Wire Line
	7950 4100 8050 4200
Wire Wire Line
	7750 3400 7950 3400
Wire Wire Line
	7750 3500 7950 3500
Wire Wire Line
	7750 3600 7950 3600
Wire Wire Line
	7750 3700 7950 3700
Wire Wire Line
	7750 3800 7950 3800
Wire Wire Line
	7750 3900 7950 3900
Wire Wire Line
	7750 4000 7950 4000
Wire Wire Line
	7750 4100 7950 4100
Text Label 7950 1250 2    50   ~ 0
DB0
Text Label 7950 1350 2    50   ~ 0
DB1
Text Label 7950 1450 2    50   ~ 0
DB2
Text Label 7950 1550 2    50   ~ 0
DB3
Text Label 7950 1650 2    50   ~ 0
DB4
Text Label 7950 1750 2    50   ~ 0
DB5
Text Label 7950 1850 2    50   ~ 0
DB6
Text Label 7950 1950 2    50   ~ 0
DB7
Entry Wire Line
	7950 1250 8050 1350
Entry Wire Line
	7950 1350 8050 1450
Entry Wire Line
	7950 1450 8050 1550
Entry Wire Line
	7950 1550 8050 1650
Entry Wire Line
	7950 1650 8050 1750
Entry Wire Line
	7950 1750 8050 1850
Entry Wire Line
	7950 1850 8050 1950
Entry Wire Line
	7950 1950 8050 2050
Wire Wire Line
	7750 1250 7950 1250
Wire Wire Line
	7750 1350 7950 1350
Wire Wire Line
	7750 1450 7950 1450
Wire Wire Line
	7750 1550 7950 1550
Wire Wire Line
	7750 1650 7950 1650
Wire Wire Line
	7750 1750 7950 1750
Wire Wire Line
	7750 1850 7950 1850
Wire Wire Line
	7750 1950 7950 1950
Wire Wire Line
	6750 3800 6700 3800
Wire Wire Line
	6700 3800 6700 3900
Wire Wire Line
	6700 4100 6750 4100
Wire Wire Line
	6750 4000 6700 4000
Connection ~ 6700 4000
Wire Wire Line
	6700 4000 6700 4100
Wire Wire Line
	6750 3900 6700 3900
Connection ~ 6700 3900
Wire Wire Line
	6700 3900 6700 4000
$Comp
L power:GND #PWR?
U 1 1 60DD2030
P 6650 3800
AR Path="/5ED2705B/60DD2030" Ref="#PWR?"  Part="1" 
AR Path="/609EB802/60DD2030" Ref="#PWR?"  Part="1" 
AR Path="/5F3A2F3D/60DD2030" Ref="#PWR?"  Part="1" 
AR Path="/5F629530/60DD2030" Ref="#PWR?"  Part="1" 
AR Path="/5F6FD493/60DD2030" Ref="#PWR?"  Part="1" 
AR Path="/60DD2030" Ref="#PWR038"  Part="1" 
F 0 "#PWR038" H 6650 3550 50  0001 C CNN
F 1 "GND" V 6655 3672 50  0000 R CNN
F 2 "" H 6650 3800 50  0001 C CNN
F 3 "" H 6650 3800 50  0001 C CNN
	1    6650 3800
	0    1    1    0   
$EndComp
Wire Wire Line
	6700 3800 6650 3800
Connection ~ 6700 3800
Text Label 7650 4450 0    50   ~ 0
DB[0..7]
Wire Bus Line
	7650 4450 8050 4450
$Comp
L power:GND #PWR?
U 1 1 6059DA71
P 6400 7200
AR Path="/5ED2705B/6059DA71" Ref="#PWR?"  Part="1" 
AR Path="/5F1CE57C/6059DA71" Ref="#PWR?"  Part="1" 
AR Path="/5F396002/6059DA71" Ref="#PWR?"  Part="1" 
AR Path="/5F394B96/6059DA71" Ref="#PWR?"  Part="1" 
AR Path="/6041A022/6059DA71" Ref="#PWR?"  Part="1" 
AR Path="/604F08FB/6059DA71" Ref="#PWR?"  Part="1" 
AR Path="/6059DA71" Ref="#PWR036"  Part="1" 
F 0 "#PWR036" H 6400 6950 50  0001 C CNN
F 1 "GND" H 6405 7027 50  0000 C CNN
F 2 "" H 6400 7200 50  0001 C CNN
F 3 "" H 6400 7200 50  0001 C CNN
	1    6400 7200
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Pack04 RN1
U 1 1 6059DA7D
P 5700 6850
F 0 "RN1" V 5900 6850 50  0000 L CNN
F 1 "10K" V 5900 6600 50  0000 L CNN
F 2 "NoRef_Footprints:R_Array_Convex_4x0603_NoRef" V 5975 6850 50  0001 C CNN
F 3 "~" H 5700 6850 50  0001 C CNN
	1    5700 6850
	-1   0    0    1   
$EndComp
Wire Wire Line
	6400 7050 6400 7150
Wire Wire Line
	6400 7150 6300 7150
Wire Wire Line
	5700 7050 5700 7150
Wire Wire Line
	5800 7050 5800 7150
Connection ~ 5800 7150
Wire Wire Line
	5800 7150 5700 7150
Wire Wire Line
	5900 7150 5900 7050
Connection ~ 5900 7150
Wire Wire Line
	5900 7150 5800 7150
Wire Wire Line
	6100 7050 6100 7150
Connection ~ 6100 7150
Wire Wire Line
	6100 7150 5900 7150
Wire Wire Line
	6200 7050 6200 7150
Connection ~ 6200 7150
Wire Wire Line
	6200 7150 6100 7150
Wire Wire Line
	6300 7050 6300 7150
Connection ~ 6300 7150
Wire Wire Line
	6300 7150 6200 7150
Wire Wire Line
	6400 7150 6400 7200
Connection ~ 6400 7150
$Comp
L Device:R_Small R1
U 1 1 60FEB11F
P 5600 6150
F 0 "R1" V 5650 6250 50  0000 L CNN
F 1 "10K" V 5650 5900 50  0000 L CNN
F 2 "NoRef_Footprints:R_0603_1608Metric_NoRef" H 5600 6150 50  0001 C CNN
F 3 "~" H 5600 6150 50  0001 C CNN
	1    5600 6150
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R2
U 1 1 610022C4
P 5700 6150
F 0 "R2" V 5750 6250 50  0000 L CNN
F 1 "10K" V 5750 5900 50  0000 L CNN
F 2 "NoRef_Footprints:R_0603_1608Metric_NoRef" H 5700 6150 50  0001 C CNN
F 3 "~" H 5700 6150 50  0001 C CNN
	1    5700 6150
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R3
U 1 1 6100D51B
P 5800 6150
F 0 "R3" V 5850 6250 50  0000 L CNN
F 1 "10K" V 5850 5900 50  0000 L CNN
F 2 "NoRef_Footprints:R_0603_1608Metric_NoRef" H 5800 6150 50  0001 C CNN
F 3 "~" H 5800 6150 50  0001 C CNN
	1    5800 6150
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R4
U 1 1 6101873F
P 5900 6150
F 0 "R4" V 5950 6250 50  0000 L CNN
F 1 "10K" V 5950 5900 50  0000 L CNN
F 2 "NoRef_Footprints:R_0603_1608Metric_NoRef" H 5900 6150 50  0001 C CNN
F 3 "~" H 5900 6150 50  0001 C CNN
	1    5900 6150
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R5
U 1 1 610239F9
P 6100 6150
F 0 "R5" V 6150 6250 50  0000 L CNN
F 1 "10K" V 6150 5900 50  0000 L CNN
F 2 "NoRef_Footprints:R_0603_1608Metric_NoRef" H 6100 6150 50  0001 C CNN
F 3 "~" H 6100 6150 50  0001 C CNN
	1    6100 6150
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R6
U 1 1 6102EBC8
P 6200 6150
F 0 "R6" V 6250 6250 50  0000 L CNN
F 1 "10K" V 6250 5900 50  0000 L CNN
F 2 "NoRef_Footprints:R_0603_1608Metric_NoRef" H 6200 6150 50  0001 C CNN
F 3 "~" H 6200 6150 50  0001 C CNN
	1    6200 6150
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R7
U 1 1 61039D30
P 6300 6150
F 0 "R7" V 6350 6250 50  0000 L CNN
F 1 "10K" V 6350 5900 50  0000 L CNN
F 2 "NoRef_Footprints:R_0603_1608Metric_NoRef" H 6300 6150 50  0001 C CNN
F 3 "~" H 6300 6150 50  0001 C CNN
	1    6300 6150
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Pack04 RN2
U 1 1 6059DA77
P 6200 6850
F 0 "RN2" V 6400 6850 50  0000 L CNN
F 1 "10K" V 6400 6600 50  0000 L CNN
F 2 "NoRef_Footprints:R_Array_Convex_4x0603_NoRef" V 6475 6850 50  0001 C CNN
F 3 "~" H 6200 6850 50  0001 C CNN
	1    6200 6850
	-1   0    0    1   
$EndComp
NoConn ~ 6400 6650
Wire Wire Line
	5600 6050 5600 5850
Wire Wire Line
	5600 5850 5700 5850
Wire Wire Line
	6300 5850 6300 6050
Wire Wire Line
	6200 6050 6200 5850
Connection ~ 6200 5850
Wire Wire Line
	6200 5850 6300 5850
Wire Wire Line
	6100 6050 6100 5850
Connection ~ 6100 5850
Wire Wire Line
	6100 5850 6200 5850
Wire Wire Line
	5900 6050 5900 5850
Connection ~ 5900 5850
Wire Wire Line
	5900 5850 6100 5850
Wire Wire Line
	5800 6050 5800 5850
Connection ~ 5800 5850
Wire Wire Line
	5800 5850 5900 5850
Wire Wire Line
	5700 6050 5700 5850
Connection ~ 5700 5850
Wire Wire Line
	5700 5850 5800 5850
$Comp
L power:+5V #PWR?
U 1 1 61101B37
P 5600 5800
AR Path="/5F396002/61101B37" Ref="#PWR?"  Part="1" 
AR Path="/5FD6B215/61101B37" Ref="#PWR?"  Part="1" 
AR Path="/5FD65262/61101B37" Ref="#PWR?"  Part="1" 
AR Path="/5FD65262/6024637A/61101B37" Ref="#PWR?"  Part="1" 
AR Path="/5FD65291/602624BF/61101B37" Ref="#PWR?"  Part="1" 
AR Path="/5FD65308/60262671/61101B37" Ref="#PWR?"  Part="1" 
AR Path="/5FD65291/6029209E/61101B37" Ref="#PWR?"  Part="1" 
AR Path="/5FD65308/60297285/61101B37" Ref="#PWR?"  Part="1" 
AR Path="/5FD65262/605B62FF/61101B37" Ref="#PWR?"  Part="1" 
AR Path="/61101B37" Ref="#PWR033"  Part="1" 
F 0 "#PWR033" H 5600 5650 50  0001 C CNN
F 1 "+5V" H 5615 5973 50  0000 C CNN
F 2 "" H 5600 5800 50  0001 C CNN
F 3 "" H 5600 5800 50  0001 C CNN
	1    5600 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 5800 5600 5850
Connection ~ 5600 5850
Text Label 5600 6600 1    50   ~ 0
S1
Text Label 5700 6600 1    50   ~ 0
S2
Text Label 5800 6600 1    50   ~ 0
S3
Text Label 5900 6600 1    50   ~ 0
S4
Text Label 6100 6600 1    50   ~ 0
S5
Text Label 6200 6600 1    50   ~ 0
S6
Text Label 6300 6600 1    50   ~ 0
S7
Wire Notes Line
	5300 6450 6650 6450
Wire Notes Line
	6650 5550 5300 5550
Wire Notes Line
	6650 5550 6650 6450
Wire Notes Line
	5300 5550 5300 6450
Text Notes 6400 5550 0    50   ~ 0
Adr Set
Wire Wire Line
	5600 6250 5600 6650
Wire Wire Line
	5700 6250 5700 6650
Wire Wire Line
	5800 6250 5800 6650
Wire Wire Line
	5900 6250 5900 6650
Wire Wire Line
	6100 6250 6100 6650
Wire Wire Line
	6200 6250 6200 6650
Wire Wire Line
	6300 6250 6300 6650
Wire Wire Line
	5600 7050 5600 7150
Wire Wire Line
	5600 7150 5700 7150
Connection ~ 5700 7150
Wire Wire Line
	1850 800  1850 850 
Wire Wire Line
	2150 850  2100 850 
Wire Wire Line
	1900 850  1850 850 
Connection ~ 1850 850 
Wire Wire Line
	1850 850  1850 900 
Wire Wire Line
	1850 2350 1850 2300
Wire Wire Line
	1850 2600 1850 2650
Wire Wire Line
	2150 2650 2100 2650
Wire Wire Line
	1900 2650 1850 2650
Connection ~ 1850 2650
Wire Wire Line
	1850 2650 1850 2700
Wire Wire Line
	1850 4150 1850 4100
Entry Wire Line
	850  3300 750  3200
Entry Wire Line
	850  3200 750  3100
Entry Wire Line
	850  3100 750  3000
Entry Wire Line
	850  3000 750  2900
Wire Wire Line
	2350 1800 2650 1800
Wire Wire Line
	2650 1800 2650 3000
Wire Wire Line
	2650 3000 2350 3000
Wire Wire Line
	2350 1900 2550 1900
Wire Wire Line
	2550 1900 2550 3100
Wire Wire Line
	2550 3100 2350 3100
Wire Wire Line
	2350 2000 2450 2000
Wire Wire Line
	2450 2000 2450 3200
Wire Wire Line
	2450 3200 2350 3200
Wire Wire Line
	2400 1200 2350 1200
Wire Wire Line
	2400 1300 2350 1300
Wire Wire Line
	2750 1400 2350 1400
Entry Wire Line
	850  1400 750  1300
Entry Wire Line
	850  1300 750  1200
Entry Wire Line
	850  1200 750  1100
NoConn ~ 2350 3600
NoConn ~ 2350 3700
Entry Wire Line
	850  3300 750  3200
Entry Wire Line
	850  3200 750  3100
Entry Wire Line
	850  3100 750  3000
Entry Wire Line
	850  3000 750  2900
Entry Wire Line
	850  1400 750  1300
Entry Wire Line
	850  1300 750  1200
Entry Wire Line
	850  1200 750  1100
Entry Wire Line
	850  3300 750  3200
Entry Wire Line
	850  3200 750  3100
Entry Wire Line
	850  3100 750  3000
Entry Wire Line
	850  3000 750  2900
Entry Wire Line
	850  1400 750  1300
Entry Wire Line
	850  1300 750  1200
Entry Wire Line
	850  1200 750  1100
Entry Wire Line
	850  3300 750  3200
Entry Wire Line
	850  3200 750  3100
Entry Wire Line
	850  3100 750  3000
Entry Wire Line
	850  3000 750  2900
Entry Wire Line
	850  1400 750  1300
Entry Wire Line
	850  1300 750  1200
Entry Wire Line
	850  1200 750  1100
Entry Wire Line
	850  3300 750  3200
Entry Wire Line
	850  3200 750  3100
Entry Wire Line
	850  3100 750  3000
Entry Wire Line
	850  3000 750  2900
Entry Wire Line
	850  1400 750  1300
Entry Wire Line
	850  1300 750  1200
Entry Wire Line
	850  1200 750  1100
$Comp
L power:+5V #PWR?
U 1 1 60250BD0
P 1850 800
AR Path="/5F396002/60250BD0" Ref="#PWR?"  Part="1" 
AR Path="/5FD6B215/60250BD0" Ref="#PWR?"  Part="1" 
AR Path="/5FD65262/60250BD0" Ref="#PWR?"  Part="1" 
AR Path="/5FD65262/6024637A/60250BD0" Ref="#PWR?"  Part="1" 
AR Path="/5FD65291/602624BF/60250BD0" Ref="#PWR?"  Part="1" 
AR Path="/5FD65308/60262671/60250BD0" Ref="#PWR?"  Part="1" 
AR Path="/5FD65291/6029209E/60250BD0" Ref="#PWR?"  Part="1" 
AR Path="/5FD65308/60297285/60250BD0" Ref="#PWR?"  Part="1" 
AR Path="/5FD65262/605B62FF/60250BD0" Ref="#PWR?"  Part="1" 
AR Path="/60250BD0" Ref="#PWR05"  Part="1" 
F 0 "#PWR05" H 1850 650 50  0001 C CNN
F 1 "+5V" H 1792 837 50  0000 R CNN
F 2 "" H 1850 800 50  0001 C CNN
F 3 "" H 1850 800 50  0001 C CNN
	1    1850 800 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60250BD8
P 2150 850
AR Path="/5ED2705B/60250BD8" Ref="#PWR?"  Part="1" 
AR Path="/5F1CE57C/60250BD8" Ref="#PWR?"  Part="1" 
AR Path="/5F396002/60250BD8" Ref="#PWR?"  Part="1" 
AR Path="/5FD6B215/60250BD8" Ref="#PWR?"  Part="1" 
AR Path="/5FD65262/60250BD8" Ref="#PWR?"  Part="1" 
AR Path="/5FD65262/6024637A/60250BD8" Ref="#PWR?"  Part="1" 
AR Path="/5FD65291/602624BF/60250BD8" Ref="#PWR?"  Part="1" 
AR Path="/5FD65308/60262671/60250BD8" Ref="#PWR?"  Part="1" 
AR Path="/5FD65291/6029209E/60250BD8" Ref="#PWR?"  Part="1" 
AR Path="/5FD65308/60297285/60250BD8" Ref="#PWR?"  Part="1" 
AR Path="/5FD65262/605B62FF/60250BD8" Ref="#PWR?"  Part="1" 
AR Path="/60250BD8" Ref="#PWR011"  Part="1" 
F 0 "#PWR011" H 2150 600 50  0001 C CNN
F 1 "GND" V 2155 722 50  0000 R CNN
F 2 "" H 2150 850 50  0001 C CNN
F 3 "" H 2150 850 50  0001 C CNN
	1    2150 850 
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60250BE7
P 1850 2350
AR Path="/5ED2705B/60250BE7" Ref="#PWR?"  Part="1" 
AR Path="/5F1CE57C/60250BE7" Ref="#PWR?"  Part="1" 
AR Path="/5F396002/60250BE7" Ref="#PWR?"  Part="1" 
AR Path="/5FD6B215/60250BE7" Ref="#PWR?"  Part="1" 
AR Path="/5FD65262/60250BE7" Ref="#PWR?"  Part="1" 
AR Path="/5FD65262/6024637A/60250BE7" Ref="#PWR?"  Part="1" 
AR Path="/5FD65291/602624BF/60250BE7" Ref="#PWR?"  Part="1" 
AR Path="/5FD65308/60262671/60250BE7" Ref="#PWR?"  Part="1" 
AR Path="/5FD65291/6029209E/60250BE7" Ref="#PWR?"  Part="1" 
AR Path="/5FD65308/60297285/60250BE7" Ref="#PWR?"  Part="1" 
AR Path="/5FD65262/605B62FF/60250BE7" Ref="#PWR?"  Part="1" 
AR Path="/60250BE7" Ref="#PWR06"  Part="1" 
F 0 "#PWR06" H 1850 2100 50  0001 C CNN
F 1 "GND" H 1772 2313 50  0000 R CNN
F 2 "" H 1850 2350 50  0001 C CNN
F 3 "" H 1850 2350 50  0001 C CNN
	1    1850 2350
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 605B829D
P 1850 2600
AR Path="/5F396002/605B829D" Ref="#PWR?"  Part="1" 
AR Path="/5FD6B215/605B829D" Ref="#PWR?"  Part="1" 
AR Path="/5FD65262/605B829D" Ref="#PWR?"  Part="1" 
AR Path="/5FD65262/6024637A/605B829D" Ref="#PWR?"  Part="1" 
AR Path="/5FD65291/602624BF/605B829D" Ref="#PWR?"  Part="1" 
AR Path="/5FD65308/60262671/605B829D" Ref="#PWR?"  Part="1" 
AR Path="/5FD65291/6029209E/605B829D" Ref="#PWR?"  Part="1" 
AR Path="/5FD65308/60297285/605B829D" Ref="#PWR?"  Part="1" 
AR Path="/5FD65262/605B62FF/605B829D" Ref="#PWR?"  Part="1" 
AR Path="/605B829D" Ref="#PWR07"  Part="1" 
F 0 "#PWR07" H 1850 2450 50  0001 C CNN
F 1 "+5V" H 1700 2650 50  0000 C CNN
F 2 "" H 1850 2600 50  0001 C CNN
F 3 "" H 1850 2600 50  0001 C CNN
	1    1850 2600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 605B829E
P 2150 2650
AR Path="/5ED2705B/605B829E" Ref="#PWR?"  Part="1" 
AR Path="/5F1CE57C/605B829E" Ref="#PWR?"  Part="1" 
AR Path="/5F396002/605B829E" Ref="#PWR?"  Part="1" 
AR Path="/5FD6B215/605B829E" Ref="#PWR?"  Part="1" 
AR Path="/5FD65262/605B829E" Ref="#PWR?"  Part="1" 
AR Path="/5FD65262/6024637A/605B829E" Ref="#PWR?"  Part="1" 
AR Path="/5FD65291/602624BF/605B829E" Ref="#PWR?"  Part="1" 
AR Path="/5FD65308/60262671/605B829E" Ref="#PWR?"  Part="1" 
AR Path="/5FD65291/6029209E/605B829E" Ref="#PWR?"  Part="1" 
AR Path="/5FD65308/60297285/605B829E" Ref="#PWR?"  Part="1" 
AR Path="/5FD65262/605B62FF/605B829E" Ref="#PWR?"  Part="1" 
AR Path="/605B829E" Ref="#PWR012"  Part="1" 
F 0 "#PWR012" H 2150 2400 50  0001 C CNN
F 1 "GND" V 2155 2522 50  0000 R CNN
F 2 "" H 2150 2650 50  0001 C CNN
F 3 "" H 2150 2650 50  0001 C CNN
	1    2150 2650
	0    -1   -1   0   
$EndComp
Entry Wire Line
	850  3300 750  3200
Entry Wire Line
	850  3200 750  3100
Entry Wire Line
	850  3100 750  3000
Entry Wire Line
	850  3000 750  2900
$Comp
L power:GND #PWR?
U 1 1 605B82A1
P 2400 1200
AR Path="/5ED2705B/605B82A1" Ref="#PWR?"  Part="1" 
AR Path="/5F1CE57C/605B82A1" Ref="#PWR?"  Part="1" 
AR Path="/5F396002/605B82A1" Ref="#PWR?"  Part="1" 
AR Path="/5FD6B215/605B82A1" Ref="#PWR?"  Part="1" 
AR Path="/5FD6B215/60026810/605B82A1" Ref="#PWR?"  Part="1" 
AR Path="/5FD65262/605B82A1" Ref="#PWR?"  Part="1" 
AR Path="/5FD65262/6024637A/605B82A1" Ref="#PWR?"  Part="1" 
AR Path="/5FD65291/602624BF/605B82A1" Ref="#PWR?"  Part="1" 
AR Path="/5FD65308/60262671/605B82A1" Ref="#PWR?"  Part="1" 
AR Path="/5FD65291/6029209E/605B82A1" Ref="#PWR?"  Part="1" 
AR Path="/5FD65308/60297285/605B82A1" Ref="#PWR?"  Part="1" 
AR Path="/5FD65262/605B62FF/605B82A1" Ref="#PWR?"  Part="1" 
AR Path="/605B82A1" Ref="#PWR013"  Part="1" 
F 0 "#PWR013" H 2400 950 50  0001 C CNN
F 1 "GND" V 2405 1072 50  0000 R CNN
F 2 "" H 2400 1200 50  0001 C CNN
F 3 "" H 2400 1200 50  0001 C CNN
	1    2400 1200
	0    -1   -1   0   
$EndComp
Entry Wire Line
	850  1400 750  1300
Entry Wire Line
	850  1300 750  1200
Entry Wire Line
	850  1200 750  1100
Wire Wire Line
	850  1400 1350 1400
Wire Wire Line
	850  1300 1350 1300
Wire Wire Line
	850  1200 1350 1200
Wire Wire Line
	850  3300 1350 3300
Wire Wire Line
	850  3200 1350 3200
Wire Wire Line
	850  3100 1350 3100
Wire Wire Line
	850  3000 1350 3000
$Comp
L 74xx:74LS85 U?
U 1 1 605A18A4
P 1850 1600
AR Path="/5F396002/605A18A4" Ref="U?"  Part="1" 
AR Path="/5FD6B215/605A18A4" Ref="U?"  Part="1" 
AR Path="/5FD65262/605A18A4" Ref="U?"  Part="1" 
AR Path="/5FD65262/6024637A/605A18A4" Ref="U?"  Part="1" 
AR Path="/5FD65291/602624BF/605A18A4" Ref="U?"  Part="1" 
AR Path="/5FD65308/60262671/605A18A4" Ref="U?"  Part="1" 
AR Path="/5FD65291/6029209E/605A18A4" Ref="U?"  Part="1" 
AR Path="/5FD65308/60297285/605A18A4" Ref="U?"  Part="1" 
AR Path="/5FD65262/605B62FF/605A18A4" Ref="U?"  Part="1" 
AR Path="/605A18A4" Ref="U1"  Part="1" 
F 0 "U1" H 1950 2250 50  0000 C CNN
F 1 "74HC85PW" H 2050 2150 50  0000 C CNN
F 2 "Package_SO:TSSOP-16_4.4x5mm_P0.65mm" H 1850 1600 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS85" H 1850 1600 50  0001 C CNN
	1    1850 1600
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 605B829F
P 2000 2650
AR Path="/5ED2705B/605B829F" Ref="C?"  Part="1" 
AR Path="/5F1CE57C/605B829F" Ref="C?"  Part="1" 
AR Path="/5F396002/605B829F" Ref="C?"  Part="1" 
AR Path="/5FD6B215/605B829F" Ref="C?"  Part="1" 
AR Path="/5FD65262/605B829F" Ref="C?"  Part="1" 
AR Path="/5FD65262/6024637A/605B829F" Ref="C?"  Part="1" 
AR Path="/5FD65291/602624BF/605B829F" Ref="C?"  Part="1" 
AR Path="/5FD65308/60262671/605B829F" Ref="C?"  Part="1" 
AR Path="/5FD65291/6029209E/605B829F" Ref="C?"  Part="1" 
AR Path="/5FD65308/60297285/605B829F" Ref="C?"  Part="1" 
AR Path="/5FD65262/605B62FF/605B829F" Ref="C?"  Part="1" 
AR Path="/605B829F" Ref="C2"  Part="1" 
F 0 "C2" V 1771 2650 50  0000 C CNN
F 1 "0u1" V 1862 2650 50  0000 C CNN
F 2 "NoRef_Footprints:C_0603_1608Metric_NoRef" H 2000 2650 50  0001 C CNN
F 3 "~" H 2000 2650 50  0001 C CNN
	1    2000 2650
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 605A18A2
P 2400 1300
AR Path="/5ED2705B/605A18A2" Ref="#PWR?"  Part="1" 
AR Path="/5F1CE57C/605A18A2" Ref="#PWR?"  Part="1" 
AR Path="/5F396002/605A18A2" Ref="#PWR?"  Part="1" 
AR Path="/5FD6B215/605A18A2" Ref="#PWR?"  Part="1" 
AR Path="/5FD6B215/60026810/605A18A2" Ref="#PWR?"  Part="1" 
AR Path="/5FD65262/605A18A2" Ref="#PWR?"  Part="1" 
AR Path="/5FD65262/6024637A/605A18A2" Ref="#PWR?"  Part="1" 
AR Path="/5FD65291/602624BF/605A18A2" Ref="#PWR?"  Part="1" 
AR Path="/5FD65308/60262671/605A18A2" Ref="#PWR?"  Part="1" 
AR Path="/5FD65291/6029209E/605A18A2" Ref="#PWR?"  Part="1" 
AR Path="/5FD65308/60297285/605A18A2" Ref="#PWR?"  Part="1" 
AR Path="/5FD65262/605B62FF/605A18A2" Ref="#PWR?"  Part="1" 
AR Path="/605A18A2" Ref="#PWR014"  Part="1" 
F 0 "#PWR014" H 2400 1050 50  0001 C CNN
F 1 "GND" V 2405 1172 50  0000 R CNN
F 2 "" H 2400 1300 50  0001 C CNN
F 3 "" H 2400 1300 50  0001 C CNN
	1    2400 1300
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 605A18A3
P 2750 1400
AR Path="/5F396002/605A18A3" Ref="#PWR?"  Part="1" 
AR Path="/5FD6B215/605A18A3" Ref="#PWR?"  Part="1" 
AR Path="/5FD6B215/60026810/605A18A3" Ref="#PWR?"  Part="1" 
AR Path="/5FD65262/605A18A3" Ref="#PWR?"  Part="1" 
AR Path="/5FD65262/6024637A/605A18A3" Ref="#PWR?"  Part="1" 
AR Path="/5FD65291/602624BF/605A18A3" Ref="#PWR?"  Part="1" 
AR Path="/5FD65308/60262671/605A18A3" Ref="#PWR?"  Part="1" 
AR Path="/5FD65291/6029209E/605A18A3" Ref="#PWR?"  Part="1" 
AR Path="/5FD65308/60297285/605A18A3" Ref="#PWR?"  Part="1" 
AR Path="/5FD65262/605B62FF/605A18A3" Ref="#PWR?"  Part="1" 
AR Path="/605A18A3" Ref="#PWR015"  Part="1" 
F 0 "#PWR015" H 2750 1250 50  0001 C CNN
F 1 "+5V" H 2750 1550 50  0000 C CNN
F 2 "" H 2750 1400 50  0001 C CNN
F 3 "" H 2750 1400 50  0001 C CNN
	1    2750 1400
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 605A189A
P 2000 850
AR Path="/5ED2705B/605A189A" Ref="C?"  Part="1" 
AR Path="/5F1CE57C/605A189A" Ref="C?"  Part="1" 
AR Path="/5F396002/605A189A" Ref="C?"  Part="1" 
AR Path="/5FD6B215/605A189A" Ref="C?"  Part="1" 
AR Path="/5FD65262/605A189A" Ref="C?"  Part="1" 
AR Path="/5FD65262/6024637A/605A189A" Ref="C?"  Part="1" 
AR Path="/5FD65291/602624BF/605A189A" Ref="C?"  Part="1" 
AR Path="/5FD65308/60262671/605A189A" Ref="C?"  Part="1" 
AR Path="/5FD65291/6029209E/605A189A" Ref="C?"  Part="1" 
AR Path="/5FD65308/60297285/605A189A" Ref="C?"  Part="1" 
AR Path="/5FD65262/605B62FF/605A189A" Ref="C?"  Part="1" 
AR Path="/605A189A" Ref="C1"  Part="1" 
F 0 "C1" V 1771 850 50  0000 C CNN
F 1 "0u1" V 1862 850 50  0000 C CNN
F 2 "NoRef_Footprints:C_0603_1608Metric_NoRef" H 2000 850 50  0001 C CNN
F 3 "~" H 2000 850 50  0001 C CNN
	1    2000 850 
	0    1    1    0   
$EndComp
Text Label 850  1400 0    50   ~ 0
PeriphA1
Text Label 850  1300 0    50   ~ 0
PeriphA2
Text Label 850  1200 0    50   ~ 0
PeriphA3
Text Label 850  3300 0    50   ~ 0
PeriphA4
Text Label 850  3200 0    50   ~ 0
PeriphA5
Text Label 850  3100 0    50   ~ 0
PeriphA6
Text Label 850  3000 0    50   ~ 0
PeriphA7
$Comp
L power:GND #PWR?
U 1 1 60E6F807
P 1300 1500
AR Path="/5ED2705B/60E6F807" Ref="#PWR?"  Part="1" 
AR Path="/5F1CE57C/60E6F807" Ref="#PWR?"  Part="1" 
AR Path="/5F396002/60E6F807" Ref="#PWR?"  Part="1" 
AR Path="/5FD6B215/60E6F807" Ref="#PWR?"  Part="1" 
AR Path="/5FD65262/60E6F807" Ref="#PWR?"  Part="1" 
AR Path="/5FD65262/6024637A/60E6F807" Ref="#PWR?"  Part="1" 
AR Path="/5FD65291/602624BF/60E6F807" Ref="#PWR?"  Part="1" 
AR Path="/5FD65308/60262671/60E6F807" Ref="#PWR?"  Part="1" 
AR Path="/5FD65291/6029209E/60E6F807" Ref="#PWR?"  Part="1" 
AR Path="/5FD65308/60297285/60E6F807" Ref="#PWR?"  Part="1" 
AR Path="/5FD65262/605B62FF/60E6F807" Ref="#PWR?"  Part="1" 
AR Path="/60E6F807" Ref="#PWR01"  Part="1" 
F 0 "#PWR01" H 1300 1250 50  0001 C CNN
F 1 "GND" V 1305 1372 50  0000 R CNN
F 2 "" H 1300 1500 50  0001 C CNN
F 3 "" H 1300 1500 50  0001 C CNN
	1    1300 1500
	0    1    1    0   
$EndComp
Wire Wire Line
	1350 1500 1300 1500
Text Label 1300 1000 2    50   ~ 0
PeriphA[0..7]
Wire Bus Line
	750  1000 1300 1000
Text Label 1150 1900 0    50   ~ 0
S1
Text Label 1150 1800 0    50   ~ 0
S2
Text Label 1150 1700 0    50   ~ 0
S3
Text Label 1150 3800 0    50   ~ 0
S4
Text Label 1150 3700 0    50   ~ 0
S5
Text Label 1150 3600 0    50   ~ 0
S6
Text Label 1150 3500 0    50   ~ 0
S7
Wire Wire Line
	1150 1900 1350 1900
Wire Wire Line
	1150 1800 1350 1800
Wire Wire Line
	1150 1700 1350 1700
Wire Wire Line
	1150 3800 1350 3800
Wire Wire Line
	1150 3700 1350 3700
Wire Wire Line
	1150 3600 1350 3600
Wire Wire Line
	1150 3500 1350 3500
$Comp
L 74xGxx:74LVC1G08 U?
U 1 1 5FFF6FCC
P 4300 3900
AR Path="/608BF85D/5FFF6FCC" Ref="U?"  Part="1" 
AR Path="/608BF85D/5FFAAF6D/5FFF6FCC" Ref="U?"  Part="1" 
AR Path="/5FFF6FCC" Ref="U4"  Part="1" 
F 0 "U4" H 4450 3800 50  0000 C CNN
F 1 "SN74LVC1G08DCK" H 4650 3700 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-353_SC-70-5" H 4300 3900 50  0001 C CNN
F 3 "http://www.ti.com/lit/sg/scyt129e/scyt129e.pdf" H 4300 3900 50  0001 C CNN
	1    4300 3900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FFF6FD2
P 4300 4100
AR Path="/5ED2705B/5FFF6FD2" Ref="#PWR?"  Part="1" 
AR Path="/5F1CE57C/5FFF6FD2" Ref="#PWR?"  Part="1" 
AR Path="/608BF85D/5FFF6FD2" Ref="#PWR?"  Part="1" 
AR Path="/608BF85D/5FFAAF6D/5FFF6FD2" Ref="#PWR?"  Part="1" 
AR Path="/5FFF6FD2" Ref="#PWR022"  Part="1" 
F 0 "#PWR022" H 4300 3850 50  0001 C CNN
F 1 "GND" H 4305 3927 50  0000 C CNN
F 2 "" H 4300 4100 50  0001 C CNN
F 3 "" H 4300 4100 50  0001 C CNN
	1    4300 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 4100 4300 4000
Wire Wire Line
	4300 3800 4300 3700
$Comp
L power:+5V #PWR?
U 1 1 5FFF6FDA
P 4300 3650
AR Path="/5ED2705B/5FFF6FDA" Ref="#PWR?"  Part="1" 
AR Path="/5F1CE57C/5FFF6FDA" Ref="#PWR?"  Part="1" 
AR Path="/608BF85D/5FFF6FDA" Ref="#PWR?"  Part="1" 
AR Path="/608BF85D/5FFAAF6D/5FFF6FDA" Ref="#PWR?"  Part="1" 
AR Path="/5FFF6FDA" Ref="#PWR021"  Part="1" 
F 0 "#PWR021" H 4300 3500 50  0001 C CNN
F 1 "+5V" H 4242 3687 50  0000 R CNN
F 2 "" H 4300 3650 50  0001 C CNN
F 3 "" H 4300 3650 50  0001 C CNN
	1    4300 3650
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5FFF6FE0
P 4450 3700
AR Path="/5ED2705B/5FFF6FE0" Ref="C?"  Part="1" 
AR Path="/5F1CE57C/5FFF6FE0" Ref="C?"  Part="1" 
AR Path="/608BF85D/5FFF6FE0" Ref="C?"  Part="1" 
AR Path="/608BF85D/5FFAAF6D/5FFF6FE0" Ref="C?"  Part="1" 
AR Path="/5FFF6FE0" Ref="C4"  Part="1" 
F 0 "C4" V 4221 3700 50  0000 C CNN
F 1 "0u1" V 4312 3700 50  0000 C CNN
F 2 "NoRef_Footprints:C_0603_1608Metric_NoRef" H 4450 3700 50  0001 C CNN
F 3 "~" H 4450 3700 50  0001 C CNN
	1    4450 3700
	0    1    1    0   
$EndComp
Wire Wire Line
	4350 3700 4300 3700
Connection ~ 4300 3700
Wire Wire Line
	4300 3700 4300 3650
$Comp
L power:GND #PWR?
U 1 1 5FFF6FE9
P 4600 3700
AR Path="/5ED2705B/5FFF6FE9" Ref="#PWR?"  Part="1" 
AR Path="/5F1CE57C/5FFF6FE9" Ref="#PWR?"  Part="1" 
AR Path="/608BF85D/5FFF6FE9" Ref="#PWR?"  Part="1" 
AR Path="/608BF85D/5FFAAF6D/5FFF6FE9" Ref="#PWR?"  Part="1" 
AR Path="/5FFF6FE9" Ref="#PWR027"  Part="1" 
F 0 "#PWR027" H 4600 3450 50  0001 C CNN
F 1 "GND" V 4605 3572 50  0000 R CNN
F 2 "" H 4600 3700 50  0001 C CNN
F 3 "" H 4600 3700 50  0001 C CNN
	1    4600 3700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4600 3700 4550 3700
Wire Wire Line
	4550 3900 4950 3900
$Comp
L power:GND #PWR?
U 1 1 613F7A63
P 1850 4150
AR Path="/5ED2705B/613F7A63" Ref="#PWR?"  Part="1" 
AR Path="/5F1CE57C/613F7A63" Ref="#PWR?"  Part="1" 
AR Path="/5F396002/613F7A63" Ref="#PWR?"  Part="1" 
AR Path="/5FD6B215/613F7A63" Ref="#PWR?"  Part="1" 
AR Path="/5FD65262/613F7A63" Ref="#PWR?"  Part="1" 
AR Path="/5FD65262/6024637A/613F7A63" Ref="#PWR?"  Part="1" 
AR Path="/5FD65291/602624BF/613F7A63" Ref="#PWR?"  Part="1" 
AR Path="/5FD65308/60262671/613F7A63" Ref="#PWR?"  Part="1" 
AR Path="/5FD65291/6029209E/613F7A63" Ref="#PWR?"  Part="1" 
AR Path="/5FD65308/60297285/613F7A63" Ref="#PWR?"  Part="1" 
AR Path="/5FD65262/605B62FF/613F7A63" Ref="#PWR?"  Part="1" 
AR Path="/613F7A63" Ref="#PWR08"  Part="1" 
F 0 "#PWR08" H 1850 3900 50  0001 C CNN
F 1 "GND" H 1772 4113 50  0000 R CNN
F 2 "" H 1850 4150 50  0001 C CNN
F 3 "" H 1850 4150 50  0001 C CNN
	1    1850 4150
	1    0    0    -1  
$EndComp
$Comp
L 74xGxx:74LVC1G08 U?
U 1 1 6140D4C0
P 4300 4800
AR Path="/608BF85D/6140D4C0" Ref="U?"  Part="1" 
AR Path="/608BF85D/5FFAAF6D/6140D4C0" Ref="U?"  Part="1" 
AR Path="/6140D4C0" Ref="U5"  Part="1" 
F 0 "U5" H 4450 4700 50  0000 C CNN
F 1 "SN74LVC1G08DCK" H 4650 4600 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-353_SC-70-5" H 4300 4800 50  0001 C CNN
F 3 "http://www.ti.com/lit/sg/scyt129e/scyt129e.pdf" H 4300 4800 50  0001 C CNN
	1    4300 4800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6140D4C6
P 4300 5000
AR Path="/5ED2705B/6140D4C6" Ref="#PWR?"  Part="1" 
AR Path="/5F1CE57C/6140D4C6" Ref="#PWR?"  Part="1" 
AR Path="/608BF85D/6140D4C6" Ref="#PWR?"  Part="1" 
AR Path="/608BF85D/5FFAAF6D/6140D4C6" Ref="#PWR?"  Part="1" 
AR Path="/6140D4C6" Ref="#PWR024"  Part="1" 
F 0 "#PWR024" H 4300 4750 50  0001 C CNN
F 1 "GND" H 4305 4827 50  0000 C CNN
F 2 "" H 4300 5000 50  0001 C CNN
F 3 "" H 4300 5000 50  0001 C CNN
	1    4300 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 5000 4300 4900
Wire Wire Line
	4300 4700 4300 4600
$Comp
L power:+5V #PWR?
U 1 1 6140D4CE
P 4300 4550
AR Path="/5ED2705B/6140D4CE" Ref="#PWR?"  Part="1" 
AR Path="/5F1CE57C/6140D4CE" Ref="#PWR?"  Part="1" 
AR Path="/608BF85D/6140D4CE" Ref="#PWR?"  Part="1" 
AR Path="/608BF85D/5FFAAF6D/6140D4CE" Ref="#PWR?"  Part="1" 
AR Path="/6140D4CE" Ref="#PWR023"  Part="1" 
F 0 "#PWR023" H 4300 4400 50  0001 C CNN
F 1 "+5V" H 4242 4587 50  0000 R CNN
F 2 "" H 4300 4550 50  0001 C CNN
F 3 "" H 4300 4550 50  0001 C CNN
	1    4300 4550
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 6140D4D4
P 4450 4600
AR Path="/5ED2705B/6140D4D4" Ref="C?"  Part="1" 
AR Path="/5F1CE57C/6140D4D4" Ref="C?"  Part="1" 
AR Path="/608BF85D/6140D4D4" Ref="C?"  Part="1" 
AR Path="/608BF85D/5FFAAF6D/6140D4D4" Ref="C?"  Part="1" 
AR Path="/6140D4D4" Ref="C5"  Part="1" 
F 0 "C5" V 4221 4600 50  0000 C CNN
F 1 "0u1" V 4312 4600 50  0000 C CNN
F 2 "NoRef_Footprints:C_0603_1608Metric_NoRef" H 4450 4600 50  0001 C CNN
F 3 "~" H 4450 4600 50  0001 C CNN
	1    4450 4600
	0    1    1    0   
$EndComp
Wire Wire Line
	4350 4600 4300 4600
Connection ~ 4300 4600
Wire Wire Line
	4300 4600 4300 4550
$Comp
L power:GND #PWR?
U 1 1 6140D4DD
P 4600 4600
AR Path="/5ED2705B/6140D4DD" Ref="#PWR?"  Part="1" 
AR Path="/5F1CE57C/6140D4DD" Ref="#PWR?"  Part="1" 
AR Path="/608BF85D/6140D4DD" Ref="#PWR?"  Part="1" 
AR Path="/608BF85D/5FFAAF6D/6140D4DD" Ref="#PWR?"  Part="1" 
AR Path="/6140D4DD" Ref="#PWR028"  Part="1" 
F 0 "#PWR028" H 4600 4350 50  0001 C CNN
F 1 "GND" V 4605 4472 50  0000 R CNN
F 2 "" H 4600 4600 50  0001 C CNN
F 3 "" H 4600 4600 50  0001 C CNN
	1    4600 4600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4600 4600 4550 4600
Wire Wire Line
	4550 4800 4950 4800
Wire Wire Line
	3100 4550 3100 4450
Wire Wire Line
	3150 4450 3100 4450
Connection ~ 3100 4450
Wire Wire Line
	3100 4450 3100 4400
Wire Wire Line
	3400 4450 3350 4450
Wire Wire Line
	3100 4850 3100 4750
$Comp
L power:+5V #PWR?
U 1 1 6149506A
P 3100 4400
AR Path="/5ED2705B/6149506A" Ref="#PWR?"  Part="1" 
AR Path="/5F1CE57C/6149506A" Ref="#PWR?"  Part="1" 
AR Path="/609EB802/6149506A" Ref="#PWR?"  Part="1" 
AR Path="/5F3A2F3D/6149506A" Ref="#PWR?"  Part="1" 
AR Path="/5F6FD493/6149506A" Ref="#PWR?"  Part="1" 
AR Path="/6149506A" Ref="#PWR016"  Part="1" 
F 0 "#PWR016" H 3100 4250 50  0001 C CNN
F 1 "+5V" H 3042 4437 50  0000 R CNN
F 2 "" H 3100 4400 50  0001 C CNN
F 3 "" H 3100 4400 50  0001 C CNN
	1    3100 4400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61495070
P 3400 4450
AR Path="/5ED2705B/61495070" Ref="#PWR?"  Part="1" 
AR Path="/5F1CE57C/61495070" Ref="#PWR?"  Part="1" 
AR Path="/609EB802/61495070" Ref="#PWR?"  Part="1" 
AR Path="/5F3A2F3D/61495070" Ref="#PWR?"  Part="1" 
AR Path="/5F6FD493/61495070" Ref="#PWR?"  Part="1" 
AR Path="/61495070" Ref="#PWR018"  Part="1" 
F 0 "#PWR018" H 3400 4200 50  0001 C CNN
F 1 "GND" V 3405 4322 50  0000 R CNN
F 2 "" H 3400 4450 50  0001 C CNN
F 3 "" H 3400 4450 50  0001 C CNN
	1    3400 4450
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61495076
P 3100 4850
AR Path="/5ED2705B/61495076" Ref="#PWR?"  Part="1" 
AR Path="/5F1CE57C/61495076" Ref="#PWR?"  Part="1" 
AR Path="/609EB802/61495076" Ref="#PWR?"  Part="1" 
AR Path="/5F3A2F3D/61495076" Ref="#PWR?"  Part="1" 
AR Path="/5F6FD493/61495076" Ref="#PWR?"  Part="1" 
AR Path="/61495076" Ref="#PWR017"  Part="1" 
F 0 "#PWR017" H 3100 4600 50  0001 C CNN
F 1 "GND" H 3105 4677 50  0000 C CNN
F 2 "" H 3100 4850 50  0001 C CNN
F 3 "" H 3100 4850 50  0001 C CNN
	1    3100 4850
	1    0    0    -1  
$EndComp
$Comp
L 74xGxx:74LVC1G04 U?
U 1 1 6149507C
P 3100 4650
AR Path="/5ED2705B/6149507C" Ref="U?"  Part="1" 
AR Path="/5F1CE57C/6149507C" Ref="U?"  Part="1" 
AR Path="/609EB802/6149507C" Ref="U?"  Part="1" 
AR Path="/5F3A2F3D/6149507C" Ref="U?"  Part="1" 
AR Path="/5F6FD493/6149507C" Ref="U?"  Part="1" 
AR Path="/6149507C" Ref="U3"  Part="1" 
F 0 "U3" H 3200 4450 50  0000 C CNN
F 1 "SN74LVC1G04DCK" H 3450 4550 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-353_SC-70-5" H 3100 4650 50  0001 C CNN
F 3 "http://www.ti.com/lit/sg/scyt129e/scyt129e.pdf" H 3100 4650 50  0001 C CNN
	1    3100 4650
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 61495082
P 3250 4450
AR Path="/5ED2705B/61495082" Ref="C?"  Part="1" 
AR Path="/5F1CE57C/61495082" Ref="C?"  Part="1" 
AR Path="/609EB802/61495082" Ref="C?"  Part="1" 
AR Path="/5F3A2F3D/61495082" Ref="C?"  Part="1" 
AR Path="/5F6FD493/61495082" Ref="C?"  Part="1" 
AR Path="/61495082" Ref="C3"  Part="1" 
F 0 "C3" V 3021 4450 50  0000 C CNN
F 1 "0u1" V 3112 4450 50  0000 C CNN
F 2 "NoRef_Footprints:C_0603_1608Metric_NoRef" H 3250 4450 50  0001 C CNN
F 3 "~" H 3250 4450 50  0001 C CNN
	1    3250 4450
	0    1    1    0   
$EndComp
Wire Wire Line
	4000 4750 3850 4750
Text Label 4950 3900 2    50   ~ 0
Read_Low
Text Label 4950 4800 2    50   ~ 0
Read_High
Wire Wire Line
	5450 2250 5050 2250
Wire Wire Line
	5450 4400 5050 4400
Text Label 5050 2250 0    50   ~ 0
Read_Low
Text Label 5050 4400 0    50   ~ 0
Read_High
$Comp
L Device:R_Small R?
U 1 1 60EDFE13
P 10450 4600
AR Path="/60F73904/60EDFE13" Ref="R?"  Part="1" 
AR Path="/60FA12D6/60EDFE13" Ref="R?"  Part="1" 
AR Path="/60FA686E/60EDFE13" Ref="R?"  Part="1" 
AR Path="/60FA7824/60EDFE13" Ref="R?"  Part="1" 
AR Path="/60FA8167/60EDFE13" Ref="R?"  Part="1" 
AR Path="/60FA8857/60EDFE13" Ref="R?"  Part="1" 
AR Path="/60FAB88D/60EDFE13" Ref="R?"  Part="1" 
AR Path="/60FAB893/60EDFE13" Ref="R?"  Part="1" 
AR Path="/60EDFE13" Ref="R32"  Part="1" 
AR Path="/60B3C537/60EDFE13" Ref="R?"  Part="1" 
AR Path="/60B46F40/60EDFE13" Ref="R?"  Part="1" 
AR Path="/60B48D03/60EDFE13" Ref="R?"  Part="1" 
AR Path="/60B505AD/60EDFE13" Ref="R?"  Part="1" 
AR Path="/60B505B0/60EDFE13" Ref="R?"  Part="1" 
AR Path="/60B505B3/60EDFE13" Ref="R?"  Part="1" 
AR Path="/60B52532/60EDFE13" Ref="R?"  Part="1" 
AR Path="/60B52535/60EDFE13" Ref="R?"  Part="1" 
AR Path="/60B52538/60EDFE13" Ref="R?"  Part="1" 
AR Path="/60B5446F/60EDFE13" Ref="R?"  Part="1" 
AR Path="/60B54472/60EDFE13" Ref="R?"  Part="1" 
AR Path="/60B54475/60EDFE13" Ref="R?"  Part="1" 
F 0 "R32" H 10350 4650 50  0000 R CNN
F 1 "rled" H 10350 4550 50  0000 R CNN
F 2 "NoRef_Footprints:R_0603_1608Metric_NoRef" H 10450 4600 50  0001 C CNN
F 3 "~" H 10450 4600 50  0001 C CNN
	1    10450 4600
	-1   0    0    -1  
$EndComp
Wire Wire Line
	10450 5000 10450 5050
$Comp
L power:GND #PWR?
U 1 1 60EDFE1B
P 10450 5050
AR Path="/60F73904/60EDFE1B" Ref="#PWR?"  Part="1" 
AR Path="/60FA12D6/60EDFE1B" Ref="#PWR?"  Part="1" 
AR Path="/60FA686E/60EDFE1B" Ref="#PWR?"  Part="1" 
AR Path="/60FA7824/60EDFE1B" Ref="#PWR?"  Part="1" 
AR Path="/60FA8167/60EDFE1B" Ref="#PWR?"  Part="1" 
AR Path="/60FA8857/60EDFE1B" Ref="#PWR?"  Part="1" 
AR Path="/60FAB88D/60EDFE1B" Ref="#PWR?"  Part="1" 
AR Path="/60FAB893/60EDFE1B" Ref="#PWR?"  Part="1" 
AR Path="/60EDFE1B" Ref="#PWR0101"  Part="1" 
AR Path="/60B3C537/60EDFE1B" Ref="#PWR?"  Part="1" 
AR Path="/60B46F40/60EDFE1B" Ref="#PWR?"  Part="1" 
AR Path="/60B48D03/60EDFE1B" Ref="#PWR?"  Part="1" 
AR Path="/60B505AD/60EDFE1B" Ref="#PWR?"  Part="1" 
AR Path="/60B505B0/60EDFE1B" Ref="#PWR?"  Part="1" 
AR Path="/60B505B3/60EDFE1B" Ref="#PWR?"  Part="1" 
AR Path="/60B52532/60EDFE1B" Ref="#PWR?"  Part="1" 
AR Path="/60B52535/60EDFE1B" Ref="#PWR?"  Part="1" 
AR Path="/60B52538/60EDFE1B" Ref="#PWR?"  Part="1" 
AR Path="/60B5446F/60EDFE1B" Ref="#PWR?"  Part="1" 
AR Path="/60B54472/60EDFE1B" Ref="#PWR?"  Part="1" 
AR Path="/60B54475/60EDFE1B" Ref="#PWR?"  Part="1" 
F 0 "#PWR0101" H 10450 4800 50  0001 C CNN
F 1 "GND" H 10455 4877 50  0000 C CNN
F 2 "" H 10450 5050 50  0001 C CNN
F 3 "" H 10450 5050 50  0001 C CNN
	1    10450 5050
	-1   0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 60EF4746
P 10850 4600
AR Path="/60F73904/60EF4746" Ref="R?"  Part="1" 
AR Path="/60FA12D6/60EF4746" Ref="R?"  Part="1" 
AR Path="/60FA686E/60EF4746" Ref="R?"  Part="1" 
AR Path="/60FA7824/60EF4746" Ref="R?"  Part="1" 
AR Path="/60FA8167/60EF4746" Ref="R?"  Part="1" 
AR Path="/60FA8857/60EF4746" Ref="R?"  Part="1" 
AR Path="/60FAB88D/60EF4746" Ref="R?"  Part="1" 
AR Path="/60FAB893/60EF4746" Ref="R?"  Part="1" 
AR Path="/60EF4746" Ref="R33"  Part="1" 
AR Path="/60B3C537/60EF4746" Ref="R?"  Part="1" 
AR Path="/60B46F40/60EF4746" Ref="R?"  Part="1" 
AR Path="/60B48D03/60EF4746" Ref="R?"  Part="1" 
AR Path="/60B505AD/60EF4746" Ref="R?"  Part="1" 
AR Path="/60B505B0/60EF4746" Ref="R?"  Part="1" 
AR Path="/60B505B3/60EF4746" Ref="R?"  Part="1" 
AR Path="/60B52532/60EF4746" Ref="R?"  Part="1" 
AR Path="/60B52535/60EF4746" Ref="R?"  Part="1" 
AR Path="/60B52538/60EF4746" Ref="R?"  Part="1" 
AR Path="/60B5446F/60EF4746" Ref="R?"  Part="1" 
AR Path="/60B54472/60EF4746" Ref="R?"  Part="1" 
AR Path="/60B54475/60EF4746" Ref="R?"  Part="1" 
F 0 "R33" H 10750 4650 50  0000 R CNN
F 1 "rled" H 10750 4550 50  0000 R CNN
F 2 "NoRef_Footprints:R_0603_1608Metric_NoRef" H 10850 4600 50  0001 C CNN
F 3 "~" H 10850 4600 50  0001 C CNN
	1    10850 4600
	-1   0    0    -1  
$EndComp
Wire Wire Line
	10850 5000 10850 5050
$Comp
L power:GND #PWR?
U 1 1 60EF474E
P 10850 5050
AR Path="/60F73904/60EF474E" Ref="#PWR?"  Part="1" 
AR Path="/60FA12D6/60EF474E" Ref="#PWR?"  Part="1" 
AR Path="/60FA686E/60EF474E" Ref="#PWR?"  Part="1" 
AR Path="/60FA7824/60EF474E" Ref="#PWR?"  Part="1" 
AR Path="/60FA8167/60EF474E" Ref="#PWR?"  Part="1" 
AR Path="/60FA8857/60EF474E" Ref="#PWR?"  Part="1" 
AR Path="/60FAB88D/60EF474E" Ref="#PWR?"  Part="1" 
AR Path="/60FAB893/60EF474E" Ref="#PWR?"  Part="1" 
AR Path="/60EF474E" Ref="#PWR0102"  Part="1" 
AR Path="/60B3C537/60EF474E" Ref="#PWR?"  Part="1" 
AR Path="/60B46F40/60EF474E" Ref="#PWR?"  Part="1" 
AR Path="/60B48D03/60EF474E" Ref="#PWR?"  Part="1" 
AR Path="/60B505AD/60EF474E" Ref="#PWR?"  Part="1" 
AR Path="/60B505B0/60EF474E" Ref="#PWR?"  Part="1" 
AR Path="/60B505B3/60EF474E" Ref="#PWR?"  Part="1" 
AR Path="/60B52532/60EF474E" Ref="#PWR?"  Part="1" 
AR Path="/60B52535/60EF474E" Ref="#PWR?"  Part="1" 
AR Path="/60B52538/60EF474E" Ref="#PWR?"  Part="1" 
AR Path="/60B5446F/60EF474E" Ref="#PWR?"  Part="1" 
AR Path="/60B54472/60EF474E" Ref="#PWR?"  Part="1" 
AR Path="/60B54475/60EF474E" Ref="#PWR?"  Part="1" 
F 0 "#PWR0102" H 10850 4800 50  0001 C CNN
F 1 "GND" H 10855 4877 50  0000 C CNN
F 2 "" H 10850 5050 50  0001 C CNN
F 3 "" H 10850 5050 50  0001 C CNN
	1    10850 5050
	-1   0    0    -1  
$EndComp
Text Label 10450 4050 3    50   ~ 0
Read_Low
Text Label 10850 4050 3    50   ~ 0
Read_High
$Comp
L Device:LED_Small D13
U 1 1 60F5A923
P 10450 4900
F 0 "D13" V 10496 4830 50  0000 R CNN
F 1 "LED" V 10405 4830 50  0000 R CNN
F 2 "NoRef_Footprints:D_0603_1608Metric_NoRef" V 10450 4900 50  0001 C CNN
F 3 "~" V 10450 4900 50  0001 C CNN
	1    10450 4900
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED_Small D14
U 1 1 60F8451E
P 10850 4900
F 0 "D14" V 10896 4830 50  0000 R CNN
F 1 "LED" V 10805 4830 50  0000 R CNN
F 2 "NoRef_Footprints:D_0603_1608Metric_NoRef" V 10850 4900 50  0001 C CNN
F 3 "~" V 10850 4900 50  0001 C CNN
	1    10850 4900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	10850 4700 10850 4800
Wire Wire Line
	10450 4700 10450 4800
Wire Wire Line
	10450 4050 10450 4500
Wire Wire Line
	10850 4050 10850 4500
$Comp
L 74xGxx:74LVC1G08 U?
U 1 1 6109E301
P 3100 3850
AR Path="/608BF85D/6109E301" Ref="U?"  Part="1" 
AR Path="/608BF85D/5FFAAF6D/6109E301" Ref="U?"  Part="1" 
AR Path="/6109E301" Ref="U10"  Part="1" 
F 0 "U10" H 3250 3750 50  0000 C CNN
F 1 "SN74LVC1G08DCK" H 3450 3650 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-353_SC-70-5" H 3100 3850 50  0001 C CNN
F 3 "http://www.ti.com/lit/sg/scyt129e/scyt129e.pdf" H 3100 3850 50  0001 C CNN
	1    3100 3850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6109E307
P 3100 4050
AR Path="/5ED2705B/6109E307" Ref="#PWR?"  Part="1" 
AR Path="/5F1CE57C/6109E307" Ref="#PWR?"  Part="1" 
AR Path="/608BF85D/6109E307" Ref="#PWR?"  Part="1" 
AR Path="/608BF85D/5FFAAF6D/6109E307" Ref="#PWR?"  Part="1" 
AR Path="/6109E307" Ref="#PWR0103"  Part="1" 
F 0 "#PWR0103" H 3100 3800 50  0001 C CNN
F 1 "GND" H 3105 3877 50  0000 C CNN
F 2 "" H 3100 4050 50  0001 C CNN
F 3 "" H 3100 4050 50  0001 C CNN
	1    3100 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 4050 3100 3950
Wire Wire Line
	3100 3750 3100 3650
$Comp
L power:+5V #PWR?
U 1 1 6109E30F
P 3100 3600
AR Path="/5ED2705B/6109E30F" Ref="#PWR?"  Part="1" 
AR Path="/5F1CE57C/6109E30F" Ref="#PWR?"  Part="1" 
AR Path="/608BF85D/6109E30F" Ref="#PWR?"  Part="1" 
AR Path="/608BF85D/5FFAAF6D/6109E30F" Ref="#PWR?"  Part="1" 
AR Path="/6109E30F" Ref="#PWR0104"  Part="1" 
F 0 "#PWR0104" H 3100 3450 50  0001 C CNN
F 1 "+5V" H 3042 3637 50  0000 R CNN
F 2 "" H 3100 3600 50  0001 C CNN
F 3 "" H 3100 3600 50  0001 C CNN
	1    3100 3600
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 6109E315
P 3250 3650
AR Path="/5ED2705B/6109E315" Ref="C?"  Part="1" 
AR Path="/5F1CE57C/6109E315" Ref="C?"  Part="1" 
AR Path="/608BF85D/6109E315" Ref="C?"  Part="1" 
AR Path="/608BF85D/5FFAAF6D/6109E315" Ref="C?"  Part="1" 
AR Path="/6109E315" Ref="C10"  Part="1" 
F 0 "C10" V 3021 3650 50  0000 C CNN
F 1 "0u1" V 3112 3650 50  0000 C CNN
F 2 "NoRef_Footprints:C_0603_1608Metric_NoRef" H 3250 3650 50  0001 C CNN
F 3 "~" H 3250 3650 50  0001 C CNN
	1    3250 3650
	0    1    1    0   
$EndComp
Wire Wire Line
	3150 3650 3100 3650
Connection ~ 3100 3650
Wire Wire Line
	3100 3650 3100 3600
$Comp
L power:GND #PWR?
U 1 1 6109E31E
P 3400 3650
AR Path="/5ED2705B/6109E31E" Ref="#PWR?"  Part="1" 
AR Path="/5F1CE57C/6109E31E" Ref="#PWR?"  Part="1" 
AR Path="/608BF85D/6109E31E" Ref="#PWR?"  Part="1" 
AR Path="/608BF85D/5FFAAF6D/6109E31E" Ref="#PWR?"  Part="1" 
AR Path="/6109E31E" Ref="#PWR0105"  Part="1" 
F 0 "#PWR0105" H 3400 3400 50  0001 C CNN
F 1 "GND" V 3405 3522 50  0000 R CNN
F 2 "" H 3400 3650 50  0001 C CNN
F 3 "" H 3400 3650 50  0001 C CNN
	1    3400 3650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3400 3650 3350 3650
Wire Wire Line
	4000 3850 3850 3850
Wire Wire Line
	2400 3900 2800 3900
Text Label 2400 3900 0    50   ~ 0
Periph_R
$Comp
L 74xx:74LS85 U?
U 1 1 605A189C
P 1850 3400
AR Path="/5F396002/605A189C" Ref="U?"  Part="1" 
AR Path="/5FD6B215/605A189C" Ref="U?"  Part="1" 
AR Path="/5FD65262/605A189C" Ref="U?"  Part="1" 
AR Path="/5FD65262/6024637A/605A189C" Ref="U?"  Part="1" 
AR Path="/5FD65291/602624BF/605A189C" Ref="U?"  Part="1" 
AR Path="/5FD65308/60262671/605A189C" Ref="U?"  Part="1" 
AR Path="/5FD65291/6029209E/605A189C" Ref="U?"  Part="1" 
AR Path="/5FD65308/60297285/605A189C" Ref="U?"  Part="1" 
AR Path="/5FD65262/605B62FF/605A189C" Ref="U?"  Part="1" 
AR Path="/605A189C" Ref="U2"  Part="1" 
F 0 "U2" H 1950 4050 50  0000 C CNN
F 1 "74HC85PW" H 2050 3950 50  0000 C CNN
F 2 "Package_SO:TSSOP-16_4.4x5mm_P0.65mm" H 1850 3400 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS85" H 1850 3400 50  0001 C CNN
	1    1850 3400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6117D886
P 1300 2000
AR Path="/5ED2705B/6117D886" Ref="#PWR?"  Part="1" 
AR Path="/5F1CE57C/6117D886" Ref="#PWR?"  Part="1" 
AR Path="/5F396002/6117D886" Ref="#PWR?"  Part="1" 
AR Path="/5FD6B215/6117D886" Ref="#PWR?"  Part="1" 
AR Path="/5FD65262/6117D886" Ref="#PWR?"  Part="1" 
AR Path="/5FD65262/6024637A/6117D886" Ref="#PWR?"  Part="1" 
AR Path="/5FD65291/602624BF/6117D886" Ref="#PWR?"  Part="1" 
AR Path="/5FD65308/60262671/6117D886" Ref="#PWR?"  Part="1" 
AR Path="/5FD65291/6029209E/6117D886" Ref="#PWR?"  Part="1" 
AR Path="/5FD65308/60297285/6117D886" Ref="#PWR?"  Part="1" 
AR Path="/5FD65262/605B62FF/6117D886" Ref="#PWR?"  Part="1" 
AR Path="/6117D886" Ref="#PWR0106"  Part="1" 
F 0 "#PWR0106" H 1300 1750 50  0001 C CNN
F 1 "GND" V 1305 1872 50  0000 R CNN
F 2 "" H 1300 2000 50  0001 C CNN
F 3 "" H 1300 2000 50  0001 C CNN
	1    1300 2000
	0    1    1    0   
$EndComp
Wire Wire Line
	1300 2000 1350 2000
Connection ~ 3850 3850
Wire Wire Line
	3850 3850 3350 3850
Wire Wire Line
	4000 3950 3950 3950
Wire Wire Line
	3950 4650 3950 3950
Wire Wire Line
	4000 4850 3850 4850
Wire Wire Line
	2500 5100 2500 4650
Wire Wire Line
	3850 4850 3850 5100
Wire Wire Line
	3850 3850 3850 4750
Wire Wire Line
	3350 4650 3950 4650
Entry Wire Line
	850  4650 750  4550
Entry Wire Line
	850  4650 750  4550
Entry Wire Line
	850  4650 750  4550
Entry Wire Line
	850  4650 750  4550
Entry Wire Line
	850  4650 750  4550
Entry Wire Line
	850  4650 750  4550
Text Label 850  4650 0    50   ~ 0
PeriphA0
Wire Wire Line
	850  4650 2500 4650
Wire Wire Line
	2350 3800 2800 3800
Wire Wire Line
	2500 4650 2800 4650
Connection ~ 2500 4650
Wire Wire Line
	2500 5100 3850 5100
Wire Bus Line
	4650 6550 4650 7650
Wire Bus Line
	2750 5800 2750 6550
Wire Bus Line
	2550 6550 2550 7650
Wire Bus Line
	650  5800 650  6550
Wire Bus Line
	750  1000 750  4550
Wire Bus Line
	8050 1350 8050 4450
$EndSCHEMATC
