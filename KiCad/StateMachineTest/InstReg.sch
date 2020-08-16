EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 8268 11693 portrait
encoding utf-8
Sheet 13 62
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
S 1650 8600 700  200 
U 5F190609
F0 "INST_LATCH_EN" 50
F1 "1BitLED.sch" 50
F2 "VAL" I L 1650 8700 50 
$EndSheet
Text HLabel 1350 8700 0    50   Input ~ 0
LATCH_EN
Wire Wire Line
	1350 8700 1500 8700
Text HLabel 2900 7450 0    50   Input ~ 0
CLK
$Comp
L 74xGxx:74LVC1G04 U?
U 1 1 5F19EB99
P 1950 7950
AR Path="/5ED2705B/5F19EB99" Ref="U?"  Part="1" 
AR Path="/5F1CE57C/5F19EB99" Ref="U?"  Part="1" 
AR Path="/5F18F3CA/5F19EB99" Ref="U?"  Part="1" 
F 0 "U?" H 2050 7750 50  0000 C CNN
F 1 "74LVC1G04" H 2200 7850 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-353_SC-70-5" H 1950 7950 50  0001 C CNN
F 3 "http://www.ti.com/lit/sg/scyt129e/scyt129e.pdf" H 1950 7950 50  0001 C CNN
	1    1950 7950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 7850 1950 7750
$Comp
L power:+5V #PWR?
U 1 1 5F19EBA0
P 1950 7700
AR Path="/5ED2705B/5F19EBA0" Ref="#PWR?"  Part="1" 
AR Path="/5F1CE57C/5F19EBA0" Ref="#PWR?"  Part="1" 
AR Path="/5F18F3CA/5F19EBA0" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 1950 7550 50  0001 C CNN
F 1 "+5V" H 1965 7873 50  0000 C CNN
F 2 "" H 1950 7700 50  0001 C CNN
F 3 "" H 1950 7700 50  0001 C CNN
	1    1950 7700
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5F19EBA6
P 2100 7750
AR Path="/5ED2705B/5F19EBA6" Ref="C?"  Part="1" 
AR Path="/5F1CE57C/5F19EBA6" Ref="C?"  Part="1" 
AR Path="/5F18F3CA/5F19EBA6" Ref="C?"  Part="1" 
F 0 "C?" V 2200 7850 50  0000 C CNN
F 1 "0u1" V 2050 7850 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2100 7750 50  0001 C CNN
F 3 "~" H 2100 7750 50  0001 C CNN
	1    2100 7750
	0    1    1    0   
$EndComp
Wire Wire Line
	2000 7750 1950 7750
Connection ~ 1950 7750
Wire Wire Line
	1950 7750 1950 7700
$Comp
L power:GND #PWR?
U 1 1 5F19EBAF
P 2250 7750
AR Path="/5ED2705B/5F19EBAF" Ref="#PWR?"  Part="1" 
AR Path="/5F1CE57C/5F19EBAF" Ref="#PWR?"  Part="1" 
AR Path="/5F18F3CA/5F19EBAF" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2250 7500 50  0001 C CNN
F 1 "GND" V 2255 7622 50  0000 R CNN
F 2 "" H 2250 7750 50  0001 C CNN
F 3 "" H 2250 7750 50  0001 C CNN
	1    2250 7750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2250 7750 2200 7750
$Comp
L power:GND #PWR?
U 1 1 5F19EBB6
P 1950 8150
AR Path="/5ED2705B/5F19EBB6" Ref="#PWR?"  Part="1" 
AR Path="/5F1CE57C/5F19EBB6" Ref="#PWR?"  Part="1" 
AR Path="/5F18F3CA/5F19EBB6" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 1950 7900 50  0001 C CNN
F 1 "GND" H 1955 7977 50  0000 C CNN
F 2 "" H 1950 8150 50  0001 C CNN
F 3 "" H 1950 8150 50  0001 C CNN
	1    1950 8150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 8150 1950 8050
Wire Wire Line
	1650 7950 1500 7950
Wire Wire Line
	1500 7950 1500 8700
Connection ~ 1500 8700
Wire Wire Line
	1500 8700 1650 8700
Wire Wire Line
	5300 1350 4950 1350
Wire Wire Line
	5300 1450 4950 1450
Wire Wire Line
	5300 1550 4950 1550
Wire Wire Line
	5300 1650 4950 1650
Wire Wire Line
	5300 3550 4950 3550
Wire Wire Line
	5300 3650 4950 3650
Wire Wire Line
	5300 3750 4950 3750
Wire Wire Line
	5300 3850 4950 3850
Wire Wire Line
	4950 5750 5300 5750
Wire Wire Line
	4950 5850 5300 5850
Wire Wire Line
	4950 5950 5300 5950
Wire Wire Line
	4950 6050 5300 6050
Wire Wire Line
	4950 7950 5300 7950
Wire Wire Line
	4950 8050 5300 8050
Wire Wire Line
	4950 8150 5300 8150
Wire Wire Line
	4950 8250 5300 8250
Text HLabel 1750 600  0    50   Input ~ 0
NextInst[0..15]
Text HLabel 6950 600  2    50   Output ~ 0
Inst[0..15]
Text Label 3550 1350 0    50   ~ 0
NextInst0
Text Label 3550 1450 0    50   ~ 0
NextInst1
Text Label 3550 1550 0    50   ~ 0
NextInst2
Text Label 3550 1650 0    50   ~ 0
NextInst3
Text Label 3550 3550 0    50   ~ 0
NextInst4
Text Label 3550 3650 0    50   ~ 0
NextInst5
Text Label 3550 3750 0    50   ~ 0
NextInst6
Text Label 3550 3850 0    50   ~ 0
NextInst7
Text Label 3550 5750 0    50   ~ 0
NextInst8
Text Label 3550 5850 0    50   ~ 0
NextInst9
Text Label 3550 5950 0    50   ~ 0
NextInst10
Text Label 3550 6050 0    50   ~ 0
NextInst11
Text Label 3550 7950 0    50   ~ 0
NextInst12
Text Label 3550 8050 0    50   ~ 0
NextInst13
Text Label 3550 8150 0    50   ~ 0
NextInst14
Text Label 3550 8250 0    50   ~ 0
NextInst15
Wire Wire Line
	3550 1350 3950 1350
Wire Wire Line
	3550 1450 3950 1450
Wire Wire Line
	3550 1550 3950 1550
Wire Wire Line
	3550 1650 3950 1650
Wire Wire Line
	3550 3550 3950 3550
Wire Wire Line
	3550 3650 3950 3650
Wire Wire Line
	3550 3750 3950 3750
Wire Wire Line
	3550 3850 3950 3850
Wire Wire Line
	3550 5750 3950 5750
Wire Wire Line
	3550 5850 3950 5850
Wire Wire Line
	3550 5950 3950 5950
Wire Wire Line
	3550 6050 3950 6050
Wire Wire Line
	3550 7950 3950 7950
Wire Wire Line
	3550 8050 3950 8050
Wire Wire Line
	3550 8150 3950 8150
Wire Wire Line
	3550 8250 3950 8250
Text Label 5300 1350 2    50   ~ 0
Inst0
Text Label 5300 1450 2    50   ~ 0
Inst1
Text Label 5300 1550 2    50   ~ 0
Inst2
Text Label 5300 1650 2    50   ~ 0
Inst3
Text Label 5300 3550 2    50   ~ 0
Inst4
Text Label 5300 3650 2    50   ~ 0
Inst5
Text Label 5300 3750 2    50   ~ 0
Inst6
Text Label 5300 3850 2    50   ~ 0
Inst7
Text Label 5300 5750 2    50   ~ 0
Inst8
Text Label 5300 5850 2    50   ~ 0
Inst9
Text Label 5300 5950 2    50   ~ 0
Inst10
Text Label 5300 6050 2    50   ~ 0
Inst11
Text Label 5300 7950 2    50   ~ 0
Inst12
Text Label 5300 8050 2    50   ~ 0
Inst13
Text Label 5300 8150 2    50   ~ 0
Inst14
Text Label 5300 8250 2    50   ~ 0
Inst15
$Sheet
S 7000 4650 700  200 
U 5F225B33
F0 "Inst[0..7]" 50
F1 "8BitLED.sch" 50
F2 "VAL[0..7]" I L 7000 4750 50 
$EndSheet
$Sheet
S 7000 5800 700  200 
U 5F225B36
F0 "Inst[8..15]" 50
F1 "8BitLED.sch" 50
F2 "VAL[0..7]" I L 7000 5900 50 
$EndSheet
Entry Wire Line
	6450 3850 6550 3950
Entry Wire Line
	6450 3950 6550 4050
Entry Wire Line
	6450 4050 6550 4150
Entry Wire Line
	6450 4150 6550 4250
Entry Wire Line
	6450 4250 6550 4350
Entry Wire Line
	6450 4350 6550 4450
Entry Wire Line
	6450 4450 6550 4550
Entry Wire Line
	6450 4550 6550 4650
Entry Wire Line
	6450 5000 6550 5100
Entry Wire Line
	6450 5100 6550 5200
Entry Wire Line
	6450 5200 6550 5300
Entry Wire Line
	6450 5300 6550 5400
Entry Wire Line
	6450 5400 6550 5500
Entry Wire Line
	6450 5500 6550 5600
Entry Wire Line
	6450 5600 6550 5700
Entry Wire Line
	6450 5700 6550 5800
Entry Wire Line
	5750 3750 5850 3850
Entry Wire Line
	5750 3850 5850 3950
Entry Wire Line
	5750 3950 5850 4050
Entry Wire Line
	5750 4050 5850 4150
Entry Wire Line
	5750 4150 5850 4250
Entry Wire Line
	5750 4250 5850 4350
Entry Wire Line
	5750 4350 5850 4450
Entry Wire Line
	5750 4450 5850 4550
Entry Wire Line
	5750 4900 5850 5000
Entry Wire Line
	5750 5000 5850 5100
Entry Wire Line
	5750 5100 5850 5200
Entry Wire Line
	5750 5200 5850 5300
Entry Wire Line
	5750 5300 5850 5400
Entry Wire Line
	5750 5400 5850 5500
Entry Wire Line
	5750 5500 5850 5600
Entry Wire Line
	5750 5600 5850 5700
Text Label 5850 3850 0    50   ~ 0
Inst0
Text Label 5850 3950 0    50   ~ 0
Inst1
Text Label 5850 4050 0    50   ~ 0
Inst2
Text Label 5850 4150 0    50   ~ 0
Inst3
Text Label 5850 4250 0    50   ~ 0
Inst4
Text Label 5850 4350 0    50   ~ 0
Inst5
Text Label 5850 4450 0    50   ~ 0
Inst6
Text Label 5850 4550 0    50   ~ 0
Inst7
Text Label 5850 5000 0    50   ~ 0
Inst8
Text Label 5850 5100 0    50   ~ 0
Inst9
Text Label 5850 5200 0    50   ~ 0
Inst10
Text Label 5850 5300 0    50   ~ 0
Inst11
Text Label 5850 5400 0    50   ~ 0
Inst12
Text Label 5850 5500 0    50   ~ 0
Inst13
Text Label 5850 5600 0    50   ~ 0
Inst14
Text Label 5850 5700 0    50   ~ 0
Inst15
Wire Wire Line
	5850 3850 6450 3850
Wire Wire Line
	5850 3950 6450 3950
Wire Wire Line
	5850 4050 6450 4050
Wire Wire Line
	5850 4150 6450 4150
Wire Wire Line
	5850 4250 6450 4250
Wire Wire Line
	5850 4350 6450 4350
Wire Wire Line
	5850 4450 6450 4450
Wire Wire Line
	5850 4550 6450 4550
Wire Wire Line
	5850 5000 6450 5000
Wire Wire Line
	5850 5100 6450 5100
Wire Wire Line
	5850 5200 6450 5200
Wire Wire Line
	5850 5300 6450 5300
Wire Wire Line
	5850 5400 6450 5400
Wire Wire Line
	5850 5500 6450 5500
Wire Wire Line
	5850 5600 6450 5600
Wire Wire Line
	5850 5700 6450 5700
Text Label 6450 3850 2    50   ~ 0
VALL0
Text Label 6450 3950 2    50   ~ 0
VALL1
Text Label 6450 4050 2    50   ~ 0
VALL2
Text Label 6450 4150 2    50   ~ 0
VALL3
Text Label 6450 4250 2    50   ~ 0
VALL4
Text Label 6450 4350 2    50   ~ 0
VALL5
Text Label 6450 4450 2    50   ~ 0
VALL6
Text Label 6450 4550 2    50   ~ 0
VALL7
Text Label 6450 5000 2    50   ~ 0
VALH0
Text Label 6450 5100 2    50   ~ 0
VALH1
Text Label 6450 5200 2    50   ~ 0
VALH2
Text Label 6450 5300 2    50   ~ 0
VALH3
Text Label 6450 5400 2    50   ~ 0
VALH4
Text Label 6450 5500 2    50   ~ 0
VALH5
Text Label 6450 5600 2    50   ~ 0
VALH6
Text Label 6450 5700 2    50   ~ 0
VALH7
Wire Bus Line
	6550 4750 7000 4750
Text Label 6600 4750 0    50   ~ 0
VALL[0..7]
Wire Bus Line
	6550 5900 7000 5900
Text Label 6600 5900 0    50   ~ 0
VALH[0..7]
Wire Wire Line
	4450 2900 4450 2850
$Comp
L power:GND #PWR?
U 1 1 5EE475BB
P 4450 2900
AR Path="/5ED2705B/5EE475BB" Ref="#PWR?"  Part="1" 
AR Path="/5F18F3CA/5EE475BB" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4450 2650 50  0001 C CNN
F 1 "GND" H 4600 2850 50  0000 C CNN
F 2 "" H 4450 2900 50  0001 C CNN
F 3 "" H 4450 2900 50  0001 C CNN
	1    4450 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 1000 4700 1000
$Comp
L power:GND #PWR?
U 1 1 5EE475C2
P 4750 1000
AR Path="/5ED2705B/5EE475C2" Ref="#PWR?"  Part="1" 
AR Path="/5F18F3CA/5EE475C2" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4750 750 50  0001 C CNN
F 1 "GND" V 4755 872 50  0000 R CNN
F 2 "" H 4750 1000 50  0001 C CNN
F 3 "" H 4750 1000 50  0001 C CNN
	1    4750 1000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4450 1000 4450 950 
Connection ~ 4450 1000
Wire Wire Line
	4500 1000 4450 1000
$Comp
L Device:C_Small C?
U 1 1 5EE475CB
P 4600 1000
AR Path="/5ED2705B/5EE475CB" Ref="C?"  Part="1" 
AR Path="/5F18F3CA/5EE475CB" Ref="C?"  Part="1" 
F 0 "C?" V 4500 1000 50  0000 C CNN
F 1 "0u1" V 4700 1000 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4600 1000 50  0001 C CNN
F 3 "~" H 4600 1000 50  0001 C CNN
	1    4600 1000
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5EE475D1
P 4450 950
AR Path="/5ED2705B/5EE475D1" Ref="#PWR?"  Part="1" 
AR Path="/5F18F3CA/5EE475D1" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4450 800 50  0001 C CNN
F 1 "+5V" H 4300 1000 50  0000 C CNN
F 2 "" H 4450 950 50  0001 C CNN
F 3 "" H 4450 950 50  0001 C CNN
	1    4450 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 1050 4450 1000
$Comp
L 74xx:74LS173 U?
U 1 1 5EE475D8
P 4450 1950
AR Path="/5ED2705B/5EE475D8" Ref="U?"  Part="1" 
AR Path="/5F18F3CA/5EE475D8" Ref="U?"  Part="1" 
F 0 "U?" H 4200 2700 50  0000 C CNN
F 1 "74HC173" H 4700 2700 50  0000 C CNN
F 2 "Package_SO:TSSOP-16_4.4x5mm_P0.65mm" H 4450 1950 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS173" H 4450 1950 50  0001 C CNN
	1    4450 1950
	1    0    0    -1  
$EndComp
Text Notes 4500 2300 1    50   ~ 0
4-bit Register
Wire Wire Line
	4450 5100 4450 5050
$Comp
L power:GND #PWR?
U 1 1 5EE7B162
P 4450 5100
AR Path="/5ED2705B/5EE7B162" Ref="#PWR?"  Part="1" 
AR Path="/5F18F3CA/5EE7B162" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4450 4850 50  0001 C CNN
F 1 "GND" H 4600 5050 50  0000 C CNN
F 2 "" H 4450 5100 50  0001 C CNN
F 3 "" H 4450 5100 50  0001 C CNN
	1    4450 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 3200 4700 3200
$Comp
L power:GND #PWR?
U 1 1 5EE7B169
P 4750 3200
AR Path="/5ED2705B/5EE7B169" Ref="#PWR?"  Part="1" 
AR Path="/5F18F3CA/5EE7B169" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4750 2950 50  0001 C CNN
F 1 "GND" V 4755 3072 50  0000 R CNN
F 2 "" H 4750 3200 50  0001 C CNN
F 3 "" H 4750 3200 50  0001 C CNN
	1    4750 3200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4450 3200 4450 3150
Connection ~ 4450 3200
Wire Wire Line
	4500 3200 4450 3200
$Comp
L Device:C_Small C?
U 1 1 5EE7B172
P 4600 3200
AR Path="/5ED2705B/5EE7B172" Ref="C?"  Part="1" 
AR Path="/5F18F3CA/5EE7B172" Ref="C?"  Part="1" 
F 0 "C?" V 4500 3200 50  0000 C CNN
F 1 "0u1" V 4700 3200 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4600 3200 50  0001 C CNN
F 3 "~" H 4600 3200 50  0001 C CNN
	1    4600 3200
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5EE7B178
P 4450 3150
AR Path="/5ED2705B/5EE7B178" Ref="#PWR?"  Part="1" 
AR Path="/5F18F3CA/5EE7B178" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4450 3000 50  0001 C CNN
F 1 "+5V" H 4300 3200 50  0000 C CNN
F 2 "" H 4450 3150 50  0001 C CNN
F 3 "" H 4450 3150 50  0001 C CNN
	1    4450 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 3250 4450 3200
$Comp
L 74xx:74LS173 U?
U 1 1 5EE7B17F
P 4450 4150
AR Path="/5ED2705B/5EE7B17F" Ref="U?"  Part="1" 
AR Path="/5F18F3CA/5EE7B17F" Ref="U?"  Part="1" 
F 0 "U?" H 4200 4900 50  0000 C CNN
F 1 "74HC173" H 4700 4900 50  0000 C CNN
F 2 "Package_SO:TSSOP-16_4.4x5mm_P0.65mm" H 4450 4150 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS173" H 4450 4150 50  0001 C CNN
	1    4450 4150
	1    0    0    -1  
$EndComp
Text Notes 4500 4500 1    50   ~ 0
4-bit Register
Wire Wire Line
	4450 7300 4450 7250
$Comp
L power:GND #PWR?
U 1 1 5EE82A11
P 4450 7300
AR Path="/5ED2705B/5EE82A11" Ref="#PWR?"  Part="1" 
AR Path="/5F18F3CA/5EE82A11" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4450 7050 50  0001 C CNN
F 1 "GND" H 4600 7250 50  0000 C CNN
F 2 "" H 4450 7300 50  0001 C CNN
F 3 "" H 4450 7300 50  0001 C CNN
	1    4450 7300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 5400 4700 5400
$Comp
L power:GND #PWR?
U 1 1 5EE82A18
P 4750 5400
AR Path="/5ED2705B/5EE82A18" Ref="#PWR?"  Part="1" 
AR Path="/5F18F3CA/5EE82A18" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4750 5150 50  0001 C CNN
F 1 "GND" V 4755 5272 50  0000 R CNN
F 2 "" H 4750 5400 50  0001 C CNN
F 3 "" H 4750 5400 50  0001 C CNN
	1    4750 5400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4450 5400 4450 5350
Connection ~ 4450 5400
Wire Wire Line
	4500 5400 4450 5400
$Comp
L Device:C_Small C?
U 1 1 5EE82A21
P 4600 5400
AR Path="/5ED2705B/5EE82A21" Ref="C?"  Part="1" 
AR Path="/5F18F3CA/5EE82A21" Ref="C?"  Part="1" 
F 0 "C?" V 4500 5400 50  0000 C CNN
F 1 "0u1" V 4700 5400 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4600 5400 50  0001 C CNN
F 3 "~" H 4600 5400 50  0001 C CNN
	1    4600 5400
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5EE82A27
P 4450 5350
AR Path="/5ED2705B/5EE82A27" Ref="#PWR?"  Part="1" 
AR Path="/5F18F3CA/5EE82A27" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4450 5200 50  0001 C CNN
F 1 "+5V" H 4300 5400 50  0000 C CNN
F 2 "" H 4450 5350 50  0001 C CNN
F 3 "" H 4450 5350 50  0001 C CNN
	1    4450 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 5450 4450 5400
$Comp
L 74xx:74LS173 U?
U 1 1 5EE82A2E
P 4450 6350
AR Path="/5ED2705B/5EE82A2E" Ref="U?"  Part="1" 
AR Path="/5F18F3CA/5EE82A2E" Ref="U?"  Part="1" 
F 0 "U?" H 4200 7100 50  0000 C CNN
F 1 "74HC173" H 4700 7100 50  0000 C CNN
F 2 "Package_SO:TSSOP-16_4.4x5mm_P0.65mm" H 4450 6350 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS173" H 4450 6350 50  0001 C CNN
	1    4450 6350
	1    0    0    -1  
$EndComp
Text Notes 4500 6700 1    50   ~ 0
4-bit Register
Wire Wire Line
	4450 9500 4450 9450
$Comp
L power:GND #PWR?
U 1 1 5EE82A36
P 4450 9500
AR Path="/5ED2705B/5EE82A36" Ref="#PWR?"  Part="1" 
AR Path="/5F18F3CA/5EE82A36" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4450 9250 50  0001 C CNN
F 1 "GND" H 4600 9450 50  0000 C CNN
F 2 "" H 4450 9500 50  0001 C CNN
F 3 "" H 4450 9500 50  0001 C CNN
	1    4450 9500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 7600 4700 7600
$Comp
L power:GND #PWR?
U 1 1 5EE82A3D
P 4750 7600
AR Path="/5ED2705B/5EE82A3D" Ref="#PWR?"  Part="1" 
AR Path="/5F18F3CA/5EE82A3D" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4750 7350 50  0001 C CNN
F 1 "GND" V 4755 7472 50  0000 R CNN
F 2 "" H 4750 7600 50  0001 C CNN
F 3 "" H 4750 7600 50  0001 C CNN
	1    4750 7600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4450 7600 4450 7550
Connection ~ 4450 7600
Wire Wire Line
	4500 7600 4450 7600
$Comp
L Device:C_Small C?
U 1 1 5EE82A46
P 4600 7600
AR Path="/5ED2705B/5EE82A46" Ref="C?"  Part="1" 
AR Path="/5F18F3CA/5EE82A46" Ref="C?"  Part="1" 
F 0 "C?" V 4500 7600 50  0000 C CNN
F 1 "0u1" V 4700 7600 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4600 7600 50  0001 C CNN
F 3 "~" H 4600 7600 50  0001 C CNN
	1    4600 7600
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5EE82A4C
P 4450 7550
AR Path="/5ED2705B/5EE82A4C" Ref="#PWR?"  Part="1" 
AR Path="/5F18F3CA/5EE82A4C" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4450 7400 50  0001 C CNN
F 1 "+5V" H 4300 7600 50  0000 C CNN
F 2 "" H 4450 7550 50  0001 C CNN
F 3 "" H 4450 7550 50  0001 C CNN
	1    4450 7550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 7650 4450 7600
$Comp
L 74xx:74LS173 U?
U 1 1 5EE82A53
P 4450 8550
AR Path="/5ED2705B/5EE82A53" Ref="U?"  Part="1" 
AR Path="/5F18F3CA/5EE82A53" Ref="U?"  Part="1" 
F 0 "U?" H 4200 9300 50  0000 C CNN
F 1 "74HC173" H 4700 9300 50  0000 C CNN
F 2 "Package_SO:TSSOP-16_4.4x5mm_P0.65mm" H 4450 8550 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS173" H 4450 8550 50  0001 C CNN
	1    4450 8550
	1    0    0    -1  
$EndComp
Text Notes 4500 8900 1    50   ~ 0
4-bit Register
Entry Wire Line
	3450 1250 3550 1350
Entry Wire Line
	3450 1350 3550 1450
Entry Wire Line
	3450 1450 3550 1550
Entry Wire Line
	3450 1550 3550 1650
Entry Wire Line
	3450 3450 3550 3550
Entry Wire Line
	3450 3550 3550 3650
Entry Wire Line
	3450 3650 3550 3750
Entry Wire Line
	3450 3750 3550 3850
Entry Wire Line
	3450 5650 3550 5750
Entry Wire Line
	3450 5750 3550 5850
Entry Wire Line
	3450 5850 3550 5950
Entry Wire Line
	3450 5950 3550 6050
Entry Wire Line
	3450 7850 3550 7950
Entry Wire Line
	3450 7950 3550 8050
Entry Wire Line
	3450 8050 3550 8150
Entry Wire Line
	3450 8150 3550 8250
Entry Wire Line
	5300 1350 5400 1450
Entry Wire Line
	5300 1450 5400 1550
Entry Wire Line
	5300 1550 5400 1650
Entry Wire Line
	5300 1650 5400 1750
Entry Wire Line
	5300 3550 5400 3650
Entry Wire Line
	5300 3650 5400 3750
Entry Wire Line
	5300 3750 5400 3850
Entry Wire Line
	5300 3850 5400 3950
Entry Wire Line
	5300 5750 5400 5850
Entry Wire Line
	5300 5850 5400 5950
Entry Wire Line
	5300 5950 5400 6050
Entry Wire Line
	5300 6050 5400 6150
Entry Wire Line
	5300 7950 5400 8050
Entry Wire Line
	5300 8050 5400 8150
Entry Wire Line
	5300 8150 5400 8250
Entry Wire Line
	5300 8250 5400 8350
Wire Bus Line
	1750 600  3450 600 
Wire Bus Line
	5400 600  6950 600 
Wire Bus Line
	5750 3100 5400 3100
Connection ~ 5400 3100
Wire Wire Line
	3950 6250 3900 6250
Wire Wire Line
	3900 6250 3900 6300
Wire Wire Line
	3900 6350 3950 6350
$Comp
L power:GND #PWR?
U 1 1 5EF51731
P 3850 6300
AR Path="/5ED2705B/5EF51731" Ref="#PWR?"  Part="1" 
AR Path="/5F18F3CA/5EF51731" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3850 6050 50  0001 C CNN
F 1 "GND" H 3850 6150 50  0000 C CNN
F 2 "" H 3850 6300 50  0001 C CNN
F 3 "" H 3850 6300 50  0001 C CNN
	1    3850 6300
	0    1    1    0   
$EndComp
Wire Wire Line
	3850 6300 3900 6300
Connection ~ 3900 6300
Wire Wire Line
	3900 6300 3900 6350
Wire Wire Line
	3950 4050 3900 4050
Wire Wire Line
	3900 4050 3900 4100
Wire Wire Line
	3900 4150 3950 4150
$Comp
L power:GND #PWR?
U 1 1 5EF5602C
P 3850 4100
AR Path="/5ED2705B/5EF5602C" Ref="#PWR?"  Part="1" 
AR Path="/5F18F3CA/5EF5602C" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3850 3850 50  0001 C CNN
F 1 "GND" H 3850 3950 50  0000 C CNN
F 2 "" H 3850 4100 50  0001 C CNN
F 3 "" H 3850 4100 50  0001 C CNN
	1    3850 4100
	0    1    1    0   
$EndComp
Wire Wire Line
	3850 4100 3900 4100
Connection ~ 3900 4100
Wire Wire Line
	3900 4100 3900 4150
Wire Wire Line
	3950 1850 3900 1850
Wire Wire Line
	3900 1850 3900 1900
Wire Wire Line
	3900 1950 3950 1950
$Comp
L power:GND #PWR?
U 1 1 5EF59A00
P 3850 1900
AR Path="/5ED2705B/5EF59A00" Ref="#PWR?"  Part="1" 
AR Path="/5F18F3CA/5EF59A00" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3850 1650 50  0001 C CNN
F 1 "GND" H 3850 1750 50  0000 C CNN
F 2 "" H 3850 1900 50  0001 C CNN
F 3 "" H 3850 1900 50  0001 C CNN
	1    3850 1900
	0    1    1    0   
$EndComp
Wire Wire Line
	3850 1900 3900 1900
Connection ~ 3900 1900
Wire Wire Line
	3900 1900 3900 1950
Wire Wire Line
	3950 8450 3900 8450
Wire Wire Line
	3900 8450 3900 8500
Wire Wire Line
	3900 8550 3950 8550
$Comp
L power:GND #PWR?
U 1 1 5EF5E1BB
P 3850 8500
AR Path="/5ED2705B/5EF5E1BB" Ref="#PWR?"  Part="1" 
AR Path="/5F18F3CA/5EF5E1BB" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3850 8250 50  0001 C CNN
F 1 "GND" H 3850 8350 50  0000 C CNN
F 2 "" H 3850 8500 50  0001 C CNN
F 3 "" H 3850 8500 50  0001 C CNN
	1    3850 8500
	0    1    1    0   
$EndComp
Wire Wire Line
	3850 8500 3900 8500
Connection ~ 3900 8500
Wire Wire Line
	3900 8500 3900 8550
Wire Wire Line
	3950 8750 3900 8750
Wire Wire Line
	3900 8750 3900 8800
Wire Wire Line
	3900 8850 3950 8850
Wire Wire Line
	3900 8800 3250 8800
Wire Wire Line
	3250 8800 3250 7950
Wire Wire Line
	3250 6600 3900 6600
Wire Wire Line
	3900 6600 3900 6550
Wire Wire Line
	3900 6550 3950 6550
Connection ~ 3900 8800
Wire Wire Line
	3900 8800 3900 8850
Wire Wire Line
	3900 6600 3900 6650
Wire Wire Line
	3900 6650 3950 6650
Connection ~ 3900 6600
Wire Wire Line
	3250 6600 3250 4400
Wire Wire Line
	3250 2200 3900 2200
Wire Wire Line
	3900 2200 3900 2150
Wire Wire Line
	3900 2150 3950 2150
Connection ~ 3250 6600
Wire Wire Line
	3900 2200 3900 2250
Wire Wire Line
	3900 2250 3950 2250
Connection ~ 3900 2200
Wire Wire Line
	3950 4350 3900 4350
Wire Wire Line
	3900 4350 3900 4400
Wire Wire Line
	3900 4450 3950 4450
Wire Wire Line
	3900 4400 3250 4400
Connection ~ 3900 4400
Wire Wire Line
	3900 4400 3900 4450
Connection ~ 3250 4400
Wire Wire Line
	3250 4400 3250 2200
Wire Wire Line
	3950 2350 3150 2350
Wire Wire Line
	3150 2350 3150 4550
Wire Wire Line
	3150 8950 3950 8950
Wire Wire Line
	3950 6750 3150 6750
Connection ~ 3150 6750
Wire Wire Line
	3150 6750 3150 7450
Wire Wire Line
	3950 4550 3150 4550
Connection ~ 3150 4550
Wire Wire Line
	3150 4550 3150 6750
Wire Wire Line
	3950 2550 3050 2550
Wire Wire Line
	3050 2550 3050 4750
Wire Wire Line
	3050 9150 3950 9150
Wire Wire Line
	3950 6950 3050 6950
Connection ~ 3050 6950
Wire Wire Line
	3050 6950 3050 9100
Wire Wire Line
	3950 4750 3050 4750
Connection ~ 3050 4750
Wire Wire Line
	3050 4750 3050 6950
Wire Wire Line
	2200 7950 3250 7950
Connection ~ 3250 7950
Wire Wire Line
	3250 7950 3250 6600
Wire Wire Line
	2900 7450 3150 7450
Connection ~ 3150 7450
Wire Wire Line
	3150 7450 3150 8950
Text HLabel 2900 9100 0    50   Input ~ 0
RESET
Wire Wire Line
	2900 9100 3050 9100
Connection ~ 3050 9100
Wire Wire Line
	3050 9100 3050 9150
Wire Bus Line
	5400 600  5400 3100
Wire Bus Line
	6550 5100 6550 5900
Wire Bus Line
	6550 3950 6550 4750
Wire Bus Line
	5400 3100 5400 8350
Wire Bus Line
	3450 600  3450 8150
Wire Bus Line
	5750 3100 5750 5600
$EndSCHEMATC
