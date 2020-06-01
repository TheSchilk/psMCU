EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 13 58
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
S 2100 6550 700  200 
U 5F190609
F0 "INST_LATCH_EN" 50
F1 "1BitLED.sch" 50
F2 "VAL" I L 2100 6650 50 
$EndSheet
Text HLabel 1800 6650 0    50   Input ~ 0
LATCH_EN
Wire Wire Line
	1800 6650 1950 6650
Text HLabel 2850 2350 0    50   Input ~ 0
CLK
$Comp
L 74xx:74LS377 U25
U 1 1 5F1944C2
P 4450 1950
F 0 "U25" H 4550 2700 50  0000 C CNN
F 1 "74HC377" H 4650 2600 50  0000 C CNN
F 2 "Package_SO:SOIC-20W_7.5x12.8mm_P1.27mm" H 4450 1950 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS377" H 4450 1950 50  0001 C CNN
	1    4450 1950
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C26
U 1 1 5F1966CD
P 4600 1050
F 0 "C26" V 4400 1050 50  0000 C CNN
F 1 "0u1" V 4500 1050 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4600 1050 50  0001 C CNN
F 3 "~" H 4600 1050 50  0001 C CNN
	1    4600 1050
	0    1    1    0   
$EndComp
Wire Wire Line
	4450 1150 4450 1050
Wire Wire Line
	4500 1050 4450 1050
Connection ~ 4450 1050
Wire Wire Line
	4450 1050 4450 950 
Wire Wire Line
	4700 1050 4750 1050
$Comp
L power:+5V #PWR0199
U 1 1 5F197455
P 4450 950
F 0 "#PWR0199" H 4450 800 50  0001 C CNN
F 1 "+5V" H 4465 1123 50  0000 C CNN
F 2 "" H 4450 950 50  0001 C CNN
F 3 "" H 4450 950 50  0001 C CNN
	1    4450 950 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0200
U 1 1 5F1979F2
P 4750 1050
F 0 "#PWR0200" H 4750 800 50  0001 C CNN
F 1 "GND" V 4755 922 50  0000 R CNN
F 2 "" H 4750 1050 50  0001 C CNN
F 3 "" H 4750 1050 50  0001 C CNN
	1    4750 1050
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0201
U 1 1 5F197FB7
P 4450 2800
F 0 "#PWR0201" H 4450 2550 50  0001 C CNN
F 1 "GND" H 4455 2627 50  0000 C CNN
F 2 "" H 4450 2800 50  0001 C CNN
F 3 "" H 4450 2800 50  0001 C CNN
	1    4450 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 2800 4450 2750
Wire Wire Line
	3950 2350 3100 2350
$Comp
L 74xGxx:74LVC1G04 U?
U 1 1 5F19EB99
P 2400 5900
AR Path="/5ED2705B/5F19EB99" Ref="U?"  Part="1" 
AR Path="/5F1CE57C/5F19EB99" Ref="U?"  Part="1" 
AR Path="/5F18F3CA/5F19EB99" Ref="U24"  Part="1" 
F 0 "U24" H 2500 5700 50  0000 C CNN
F 1 "74LVC1G04" H 2650 5800 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-353_SC-70-5" H 2400 5900 50  0001 C CNN
F 3 "http://www.ti.com/lit/sg/scyt129e/scyt129e.pdf" H 2400 5900 50  0001 C CNN
	1    2400 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 5800 2400 5700
$Comp
L power:+5V #PWR?
U 1 1 5F19EBA0
P 2400 5650
AR Path="/5ED2705B/5F19EBA0" Ref="#PWR?"  Part="1" 
AR Path="/5F1CE57C/5F19EBA0" Ref="#PWR?"  Part="1" 
AR Path="/5F18F3CA/5F19EBA0" Ref="#PWR0202"  Part="1" 
F 0 "#PWR0202" H 2400 5500 50  0001 C CNN
F 1 "+5V" H 2415 5823 50  0000 C CNN
F 2 "" H 2400 5650 50  0001 C CNN
F 3 "" H 2400 5650 50  0001 C CNN
	1    2400 5650
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5F19EBA6
P 2550 5700
AR Path="/5ED2705B/5F19EBA6" Ref="C?"  Part="1" 
AR Path="/5F1CE57C/5F19EBA6" Ref="C?"  Part="1" 
AR Path="/5F18F3CA/5F19EBA6" Ref="C25"  Part="1" 
F 0 "C25" V 2650 5800 50  0000 C CNN
F 1 "0u1" V 2500 5800 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2550 5700 50  0001 C CNN
F 3 "~" H 2550 5700 50  0001 C CNN
	1    2550 5700
	0    1    1    0   
$EndComp
Wire Wire Line
	2450 5700 2400 5700
Connection ~ 2400 5700
Wire Wire Line
	2400 5700 2400 5650
$Comp
L power:GND #PWR?
U 1 1 5F19EBAF
P 2700 5700
AR Path="/5ED2705B/5F19EBAF" Ref="#PWR?"  Part="1" 
AR Path="/5F1CE57C/5F19EBAF" Ref="#PWR?"  Part="1" 
AR Path="/5F18F3CA/5F19EBAF" Ref="#PWR0203"  Part="1" 
F 0 "#PWR0203" H 2700 5450 50  0001 C CNN
F 1 "GND" V 2705 5572 50  0000 R CNN
F 2 "" H 2700 5700 50  0001 C CNN
F 3 "" H 2700 5700 50  0001 C CNN
	1    2700 5700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2700 5700 2650 5700
$Comp
L power:GND #PWR?
U 1 1 5F19EBB6
P 2400 6100
AR Path="/5ED2705B/5F19EBB6" Ref="#PWR?"  Part="1" 
AR Path="/5F1CE57C/5F19EBB6" Ref="#PWR?"  Part="1" 
AR Path="/5F18F3CA/5F19EBB6" Ref="#PWR0204"  Part="1" 
F 0 "#PWR0204" H 2400 5850 50  0001 C CNN
F 1 "GND" H 2405 5927 50  0000 C CNN
F 2 "" H 2400 6100 50  0001 C CNN
F 3 "" H 2400 6100 50  0001 C CNN
	1    2400 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 6100 2400 6000
Wire Wire Line
	2100 5900 1950 5900
Wire Wire Line
	1950 5900 1950 6650
Connection ~ 1950 6650
Wire Wire Line
	1950 6650 2100 6650
Wire Wire Line
	2650 5900 3000 5900
$Comp
L 74xx:74LS377 U26
U 1 1 5F1A511B
P 4450 4350
F 0 "U26" H 4550 5100 50  0000 C CNN
F 1 "74HC377" H 4650 5000 50  0000 C CNN
F 2 "Package_SO:SOIC-20W_7.5x12.8mm_P1.27mm" H 4450 4350 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS377" H 4450 4350 50  0001 C CNN
	1    4450 4350
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C27
U 1 1 5F1A5121
P 4600 3450
F 0 "C27" V 4400 3450 50  0000 C CNN
F 1 "0u1" V 4500 3450 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4600 3450 50  0001 C CNN
F 3 "~" H 4600 3450 50  0001 C CNN
	1    4600 3450
	0    1    1    0   
$EndComp
Wire Wire Line
	4450 3550 4450 3450
Wire Wire Line
	4500 3450 4450 3450
Connection ~ 4450 3450
Wire Wire Line
	4450 3450 4450 3350
Wire Wire Line
	4700 3450 4750 3450
$Comp
L power:+5V #PWR0205
U 1 1 5F1A512C
P 4450 3350
F 0 "#PWR0205" H 4450 3200 50  0001 C CNN
F 1 "+5V" H 4465 3523 50  0000 C CNN
F 2 "" H 4450 3350 50  0001 C CNN
F 3 "" H 4450 3350 50  0001 C CNN
	1    4450 3350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0206
U 1 1 5F1A5132
P 4750 3450
F 0 "#PWR0206" H 4750 3200 50  0001 C CNN
F 1 "GND" V 4755 3322 50  0000 R CNN
F 2 "" H 4750 3450 50  0001 C CNN
F 3 "" H 4750 3450 50  0001 C CNN
	1    4750 3450
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0207
U 1 1 5F1A5138
P 4450 5200
F 0 "#PWR0207" H 4450 4950 50  0001 C CNN
F 1 "GND" H 4455 5027 50  0000 C CNN
F 2 "" H 4450 5200 50  0001 C CNN
F 3 "" H 4450 5200 50  0001 C CNN
	1    4450 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 5200 4450 5150
Entry Wire Line
	3450 1350 3550 1450
Entry Wire Line
	3450 1450 3550 1550
Entry Wire Line
	3450 1550 3550 1650
Entry Wire Line
	3450 1650 3550 1750
Entry Wire Line
	3450 1750 3550 1850
Entry Wire Line
	3450 1850 3550 1950
Entry Wire Line
	3450 1950 3550 2050
Entry Wire Line
	3450 2050 3550 2150
Entry Wire Line
	3450 3750 3550 3850
Entry Wire Line
	3450 3850 3550 3950
Entry Wire Line
	3450 3950 3550 4050
Entry Wire Line
	3450 4050 3550 4150
Entry Wire Line
	3450 4150 3550 4250
Entry Wire Line
	3450 4250 3550 4350
Entry Wire Line
	3450 4350 3550 4450
Entry Wire Line
	3450 4450 3550 4550
Wire Wire Line
	5300 1450 4950 1450
Wire Wire Line
	5300 1550 4950 1550
Wire Wire Line
	5300 1650 4950 1650
Wire Wire Line
	5300 1750 4950 1750
Wire Wire Line
	5300 1850 4950 1850
Wire Wire Line
	5300 1950 4950 1950
Wire Wire Line
	5300 2050 4950 2050
Wire Wire Line
	5300 2150 4950 2150
Wire Wire Line
	4950 3850 5300 3850
Wire Wire Line
	4950 3950 5300 3950
Wire Wire Line
	4950 4050 5300 4050
Wire Wire Line
	4950 4150 5300 4150
Wire Wire Line
	4950 4250 5300 4250
Wire Wire Line
	4950 4350 5300 4350
Wire Wire Line
	4950 4450 5300 4450
Wire Wire Line
	4950 4550 5300 4550
Entry Wire Line
	5300 1450 5400 1550
Entry Wire Line
	5300 1550 5400 1650
Entry Wire Line
	5300 1650 5400 1750
Entry Wire Line
	5300 1750 5400 1850
Entry Wire Line
	5300 1850 5400 1950
Entry Wire Line
	5300 1950 5400 2050
Entry Wire Line
	5300 2050 5400 2150
Entry Wire Line
	5300 2150 5400 2250
Entry Wire Line
	5300 3850 5400 3950
Entry Wire Line
	5300 3950 5400 4050
Entry Wire Line
	5300 4050 5400 4150
Entry Wire Line
	5300 4150 5400 4250
Entry Wire Line
	5300 4250 5400 4350
Entry Wire Line
	5300 4350 5400 4450
Entry Wire Line
	5300 4450 5400 4550
Entry Wire Line
	5300 4550 5400 4650
Wire Bus Line
	3450 950  2800 950 
Text HLabel 2800 950  0    50   Input ~ 0
NextInst[0..15]
Text HLabel 6100 950  2    50   Output ~ 0
Inst[0..15]
Text Label 3550 1450 0    50   ~ 0
NextInst0
Text Label 3550 1550 0    50   ~ 0
NextInst1
Text Label 3550 1650 0    50   ~ 0
NextInst2
Text Label 3550 1750 0    50   ~ 0
NextInst3
Text Label 3550 1850 0    50   ~ 0
NextInst4
Text Label 3550 1950 0    50   ~ 0
NextInst5
Text Label 3550 2050 0    50   ~ 0
NextInst6
Text Label 3550 2150 0    50   ~ 0
NextInst7
Text Label 3550 3850 0    50   ~ 0
NextInst8
Text Label 3550 3950 0    50   ~ 0
NextInst9
Text Label 3550 4050 0    50   ~ 0
NextInst10
Text Label 3550 4150 0    50   ~ 0
NextInst11
Text Label 3550 4250 0    50   ~ 0
NextInst12
Text Label 3550 4350 0    50   ~ 0
NextInst13
Text Label 3550 4450 0    50   ~ 0
NextInst14
Text Label 3550 4550 0    50   ~ 0
NextInst15
Wire Wire Line
	3550 1450 3950 1450
Wire Wire Line
	3550 1550 3950 1550
Wire Wire Line
	3550 1650 3950 1650
Wire Wire Line
	3550 1750 3950 1750
Wire Wire Line
	3550 1850 3950 1850
Wire Wire Line
	3550 1950 3950 1950
Wire Wire Line
	3550 2050 3950 2050
Wire Wire Line
	3550 2150 3950 2150
Wire Wire Line
	3550 3850 3950 3850
Wire Wire Line
	3550 3950 3950 3950
Wire Wire Line
	3550 4050 3950 4050
Wire Wire Line
	3550 4150 3950 4150
Wire Wire Line
	3550 4250 3950 4250
Wire Wire Line
	3550 4350 3950 4350
Wire Wire Line
	3550 4450 3950 4450
Wire Wire Line
	3550 4550 3950 4550
Text Label 5300 1450 2    50   ~ 0
Inst0
Text Label 5300 1550 2    50   ~ 0
Inst1
Text Label 5300 1650 2    50   ~ 0
Inst2
Text Label 5300 1750 2    50   ~ 0
Inst3
Text Label 5300 1850 2    50   ~ 0
Inst4
Text Label 5300 1950 2    50   ~ 0
Inst5
Text Label 5300 2050 2    50   ~ 0
Inst6
Text Label 5300 2150 2    50   ~ 0
Inst7
Text Label 5300 3850 2    50   ~ 0
Inst8
Text Label 5300 3950 2    50   ~ 0
Inst9
Text Label 5300 4050 2    50   ~ 0
Inst10
Text Label 5300 4150 2    50   ~ 0
Inst11
Text Label 5300 4250 2    50   ~ 0
Inst12
Text Label 5300 4350 2    50   ~ 0
Inst13
Text Label 5300 4450 2    50   ~ 0
Inst14
Text Label 5300 4550 2    50   ~ 0
Inst15
Wire Wire Line
	3000 5900 3000 4850
Wire Wire Line
	3000 2450 3950 2450
Wire Wire Line
	3100 2350 3100 4750
Wire Wire Line
	3100 4750 3950 4750
Connection ~ 3100 2350
Wire Wire Line
	3100 2350 2850 2350
Wire Wire Line
	3950 4850 3000 4850
Connection ~ 3000 4850
Wire Wire Line
	3000 4850 3000 2450
$Sheet
S 6900 3300 700  200 
U 5F225B33
F0 "Inst[0..7]" 50
F1 "8BitLED.sch" 50
F2 "VAL[0..7]" I L 6900 3400 50 
$EndSheet
$Sheet
S 6900 4450 700  200 
U 5F225B36
F0 "Inst[8..15]" 50
F1 "8BitLED.sch" 50
F2 "VAL[0..7]" I L 6900 4550 50 
$EndSheet
Entry Wire Line
	6550 2500 6650 2600
Entry Wire Line
	6550 2600 6650 2700
Entry Wire Line
	6550 2700 6650 2800
Entry Wire Line
	6550 2800 6650 2900
Entry Wire Line
	6550 2900 6650 3000
Entry Wire Line
	6550 3000 6650 3100
Entry Wire Line
	6550 3100 6650 3200
Entry Wire Line
	6550 3200 6650 3300
Entry Wire Line
	6550 3650 6650 3750
Entry Wire Line
	6550 3750 6650 3850
Entry Wire Line
	6550 3850 6650 3950
Entry Wire Line
	6550 3950 6650 4050
Entry Wire Line
	6550 4050 6650 4150
Entry Wire Line
	6550 4150 6650 4250
Wire Bus Line
	6650 3400 6900 3400
Wire Bus Line
	6650 4550 6900 4550
Wire Wire Line
	5950 2500 6550 2500
Wire Wire Line
	5950 2600 6550 2600
Wire Wire Line
	5950 2700 6550 2700
Wire Wire Line
	5950 2800 6550 2800
Wire Wire Line
	5950 2900 6550 2900
Wire Wire Line
	5950 3000 6550 3000
Wire Wire Line
	5950 3100 6550 3100
Wire Wire Line
	5950 3200 6550 3200
Wire Wire Line
	5950 3650 6550 3650
Wire Wire Line
	5950 3750 6550 3750
Wire Wire Line
	5950 3850 6550 3850
Wire Wire Line
	5950 3950 6550 3950
Wire Wire Line
	5950 4050 6550 4050
Wire Wire Line
	5950 4150 6550 4150
Text Label 6550 2500 2    50   ~ 0
VAL0
Text Label 6550 2600 2    50   ~ 0
VAL1
Text Label 6550 2700 2    50   ~ 0
VAL2
Text Label 6550 2800 2    50   ~ 0
VAL3
Text Label 6550 2900 2    50   ~ 0
VAL4
Text Label 6550 3000 2    50   ~ 0
VAL5
Text Label 6550 3100 2    50   ~ 0
VAL6
Text Label 6550 3200 2    50   ~ 0
VAL7
Text Label 6550 3650 2    50   ~ 0
VAL8
Text Label 6550 3750 2    50   ~ 0
VAL9
Text Label 6550 3850 2    50   ~ 0
VAL10
Text Label 6550 3950 2    50   ~ 0
VAL11
Text Label 6550 4050 2    50   ~ 0
VAL12
Text Label 6550 4150 2    50   ~ 0
VAL13
Wire Wire Line
	5950 4250 6550 4250
Wire Wire Line
	5950 4350 6550 4350
Entry Wire Line
	6550 4250 6650 4350
Entry Wire Line
	6550 4350 6650 4450
Text Label 6550 4250 2    50   ~ 0
VAL14
Text Label 6550 4350 2    50   ~ 0
VAL15
Entry Wire Line
	5850 2400 5950 2500
Entry Wire Line
	5850 2500 5950 2600
Entry Wire Line
	5850 2600 5950 2700
Entry Wire Line
	5850 2700 5950 2800
Entry Wire Line
	5850 2800 5950 2900
Entry Wire Line
	5850 2900 5950 3000
Entry Wire Line
	5850 3000 5950 3100
Entry Wire Line
	5850 3100 5950 3200
Entry Wire Line
	5850 3550 5950 3650
Entry Wire Line
	5850 3650 5950 3750
Entry Wire Line
	5850 3750 5950 3850
Entry Wire Line
	5850 3850 5950 3950
Entry Wire Line
	5850 3950 5950 4050
Entry Wire Line
	5850 4050 5950 4150
Entry Wire Line
	5850 4150 5950 4250
Entry Wire Line
	5850 4250 5950 4350
Text Label 5950 2500 0    50   ~ 0
Inst0
Text Label 5950 2600 0    50   ~ 0
Inst1
Text Label 5950 2700 0    50   ~ 0
Inst2
Text Label 5950 2800 0    50   ~ 0
Inst3
Text Label 5950 2900 0    50   ~ 0
Inst4
Text Label 5950 3000 0    50   ~ 0
Inst5
Text Label 5950 3100 0    50   ~ 0
Inst6
Text Label 5950 3200 0    50   ~ 0
Inst7
Text Label 5950 3650 0    50   ~ 0
Inst8
Text Label 5950 3750 0    50   ~ 0
Inst9
Text Label 5950 3850 0    50   ~ 0
Inst10
Text Label 5950 3950 0    50   ~ 0
Inst11
Text Label 5950 4050 0    50   ~ 0
Inst12
Text Label 5950 4150 0    50   ~ 0
Inst13
Text Label 5950 4250 0    50   ~ 0
Inst14
Text Label 5950 4350 0    50   ~ 0
Inst15
Wire Bus Line
	5400 950  6100 950 
Wire Bus Line
	5850 2350 5400 2350
Connection ~ 5400 2350
Wire Bus Line
	6650 3750 6650 4550
Wire Bus Line
	6650 2600 6650 3400
Wire Bus Line
	5400 950  5400 2350
Wire Bus Line
	5400 2350 5400 4650
Wire Bus Line
	3450 950  3450 4450
Wire Bus Line
	5850 2350 5850 4250
$EndSCHEMATC
