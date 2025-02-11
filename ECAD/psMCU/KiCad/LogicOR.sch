EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 82 97
Title "psMCU"
Date "2021-05-31"
Rev "v1.0"
Comp "Philipp Schilk"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 "Calculate Reg A OR Operand B"
$EndDescr
Text HLabel 7350 2050 2    50   3State ~ 0
DB[0..7]
Text HLabel 5300 4700 0    50   Input ~ 0
OE
Wire Wire Line
	5450 4700 5300 4700
Wire Bus Line
	7000 2050 7350 2050
$Comp
L power:+5V #PWR?
U 1 1 60419340
P 5600 2150
AR Path="/5ED2705B/60419340" Ref="#PWR?"  Part="1" 
AR Path="/5F3ED0F9/60419340" Ref="#PWR?"  Part="1" 
AR Path="/5FF66C9F/600BE39A/60419340" Ref="#PWR?"  Part="1" 
AR Path="/5FF66C9F/600C00E8/60419340" Ref="#PWR0634"  Part="1" 
F 0 "#PWR0634" H 5600 2000 50  0001 C CNN
F 1 "+5V" H 5650 2300 50  0000 C CNN
F 2 "" H 5600 2150 50  0001 C CNN
F 3 "" H 5600 2150 50  0001 C CNN
	1    5600 2150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5650 2150 5600 2150
Wire Wire Line
	6150 2600 6150 2550
$Comp
L power:GND #PWR?
U 1 1 60419341
P 6150 2600
AR Path="/5ED2705B/60419341" Ref="#PWR?"  Part="1" 
AR Path="/5F3ED0F9/60419341" Ref="#PWR?"  Part="1" 
AR Path="/5FF66C9F/600BE39A/60419341" Ref="#PWR?"  Part="1" 
AR Path="/5FF66C9F/600C00E8/60419341" Ref="#PWR0637"  Part="1" 
F 0 "#PWR0637" H 6150 2350 50  0001 C CNN
F 1 "GND" H 6350 2550 50  0000 C CNN
F 2 "" H 6150 2600 50  0001 C CNN
F 3 "" H 6150 2600 50  0001 C CNN
	1    6150 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 850  6400 850 
$Comp
L power:GND #PWR?
U 1 1 60419342
P 6450 850
AR Path="/5ED2705B/60419342" Ref="#PWR?"  Part="1" 
AR Path="/5F3ED0F9/60419342" Ref="#PWR?"  Part="1" 
AR Path="/5FF66C9F/600BE39A/60419342" Ref="#PWR?"  Part="1" 
AR Path="/5FF66C9F/600C00E8/60419342" Ref="#PWR0642"  Part="1" 
F 0 "#PWR0642" H 6450 600 50  0001 C CNN
F 1 "GND" V 6455 722 50  0000 R CNN
F 2 "" H 6450 850 50  0001 C CNN
F 3 "" H 6450 850 50  0001 C CNN
	1    6450 850 
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6150 850  6150 750 
Connection ~ 6150 850 
Wire Wire Line
	6200 850  6150 850 
$Comp
L Device:C_Small C?
U 1 1 60419343
P 6300 850
AR Path="/5ED2705B/60419343" Ref="C?"  Part="1" 
AR Path="/5F3ED0F9/60419343" Ref="C?"  Part="1" 
AR Path="/5FF66C9F/600BE39A/60419343" Ref="C?"  Part="1" 
AR Path="/5FF66C9F/600C00E8/60419343" Ref="C139"  Part="1" 
F 0 "C139" V 6071 850 50  0000 C CNN
F 1 "0u1" V 6162 850 50  0000 C CNN
F 2 "NoRef_Footprints:C_0603_1608Metric_NoRef" H 6300 850 50  0001 C CNN
F 3 "~" H 6300 850 50  0001 C CNN
	1    6300 850 
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 60419344
P 6150 750
AR Path="/5ED2705B/60419344" Ref="#PWR?"  Part="1" 
AR Path="/5F3ED0F9/60419344" Ref="#PWR?"  Part="1" 
AR Path="/5FF66C9F/600BE39A/60419344" Ref="#PWR?"  Part="1" 
AR Path="/5FF66C9F/600C00E8/60419344" Ref="#PWR0636"  Part="1" 
F 0 "#PWR0636" H 6150 600 50  0001 C CNN
F 1 "+5V" H 6000 850 50  0000 C CNN
F 2 "" H 6150 750 50  0001 C CNN
F 3 "" H 6150 750 50  0001 C CNN
	1    6150 750 
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 950  6150 850 
$Comp
L 74xx:74HC245 U?
U 1 1 6012266F
P 6150 1750
AR Path="/5ED2705B/6012266F" Ref="U?"  Part="1" 
AR Path="/5F3ED0F9/6012266F" Ref="U?"  Part="1" 
AR Path="/5FF66C9F/600BE39A/6012266F" Ref="U?"  Part="1" 
AR Path="/5FF66C9F/600C00E8/6012266F" Ref="U139"  Part="1" 
F 0 "U139" H 6250 2500 50  0000 C CNN
F 1 "SN74HC245PW" H 6450 2400 50  0000 C CNN
F 2 "Package_SO:TSSOP-20_4.4x6.5mm_P0.65mm" H 6150 1750 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HC245" H 6150 1750 50  0001 C CNN
	1    6150 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 2250 5650 2250
Wire Wire Line
	4350 1250 5650 1250
$Comp
L 74xGxx:74LVC1G04 U?
U 1 1 6013C9A2
P 6150 3850
AR Path="/5ED2705B/6013C9A2" Ref="U?"  Part="1" 
AR Path="/5F3ED0F9/6013C9A2" Ref="U?"  Part="1" 
AR Path="/5FF66C9F/600BE39A/6013C9A2" Ref="U?"  Part="1" 
AR Path="/5FF66C9F/600C00E8/6013C9A2" Ref="U140"  Part="1" 
F 0 "U140" H 6250 3650 50  0000 C CNN
F 1 "SN74LVC1G04DCK" H 6500 3750 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-353_SC-70-5" H 6150 3850 50  0001 C CNN
F 3 "http://www.ti.com/lit/sg/scyt129e/scyt129e.pdf" H 6150 3850 50  0001 C CNN
	1    6150 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 3750 6150 3650
$Comp
L power:+5V #PWR?
U 1 1 60419347
P 6150 3600
AR Path="/5ED2705B/60419347" Ref="#PWR?"  Part="1" 
AR Path="/5F3ED0F9/60419347" Ref="#PWR?"  Part="1" 
AR Path="/5FF66C9F/600BE39A/60419347" Ref="#PWR?"  Part="1" 
AR Path="/5FF66C9F/600C00E8/60419347" Ref="#PWR0638"  Part="1" 
F 0 "#PWR0638" H 6150 3450 50  0001 C CNN
F 1 "+5V" H 6165 3773 50  0000 C CNN
F 2 "" H 6150 3600 50  0001 C CNN
F 3 "" H 6150 3600 50  0001 C CNN
	1    6150 3600
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 6013C9AF
P 6300 3650
AR Path="/5ED2705B/6013C9AF" Ref="C?"  Part="1" 
AR Path="/5F3ED0F9/6013C9AF" Ref="C?"  Part="1" 
AR Path="/5FF66C9F/600BE39A/6013C9AF" Ref="C?"  Part="1" 
AR Path="/5FF66C9F/600C00E8/6013C9AF" Ref="C140"  Part="1" 
F 0 "C140" V 6400 3750 50  0000 C CNN
F 1 "0u1" V 6250 3750 50  0000 C CNN
F 2 "NoRef_Footprints:C_0603_1608Metric_NoRef" H 6300 3650 50  0001 C CNN
F 3 "~" H 6300 3650 50  0001 C CNN
	1    6300 3650
	0    1    1    0   
$EndComp
Wire Wire Line
	6200 3650 6150 3650
Connection ~ 6150 3650
Wire Wire Line
	6150 3650 6150 3600
$Comp
L power:GND #PWR?
U 1 1 6013C9B8
P 6450 3650
AR Path="/5ED2705B/6013C9B8" Ref="#PWR?"  Part="1" 
AR Path="/5F3ED0F9/6013C9B8" Ref="#PWR?"  Part="1" 
AR Path="/5FF66C9F/600BE39A/6013C9B8" Ref="#PWR?"  Part="1" 
AR Path="/5FF66C9F/600C00E8/6013C9B8" Ref="#PWR0643"  Part="1" 
F 0 "#PWR0643" H 6450 3400 50  0001 C CNN
F 1 "GND" V 6455 3522 50  0000 R CNN
F 2 "" H 6450 3650 50  0001 C CNN
F 3 "" H 6450 3650 50  0001 C CNN
	1    6450 3650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6450 3650 6400 3650
$Comp
L power:GND #PWR?
U 1 1 6013C9BF
P 6150 4050
AR Path="/5ED2705B/6013C9BF" Ref="#PWR?"  Part="1" 
AR Path="/5F3ED0F9/6013C9BF" Ref="#PWR?"  Part="1" 
AR Path="/5FF66C9F/600BE39A/6013C9BF" Ref="#PWR?"  Part="1" 
AR Path="/5FF66C9F/600C00E8/6013C9BF" Ref="#PWR0639"  Part="1" 
F 0 "#PWR0639" H 6150 3800 50  0001 C CNN
F 1 "GND" H 6155 3877 50  0000 C CNN
F 2 "" H 6150 4050 50  0001 C CNN
F 3 "" H 6150 4050 50  0001 C CNN
	1    6150 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 4050 6150 3950
Wire Wire Line
	5850 3850 5450 3850
Text HLabel 6550 4750 2    50   3State ~ 0
DB_OUT
$Comp
L 74xGxx:74LVC1G126 U?
U 1 1 6041934B
P 6150 4750
AR Path="/5ED2705B/6041934B" Ref="U?"  Part="1" 
AR Path="/5F1CE57C/6041934B" Ref="U?"  Part="1" 
AR Path="/5F3ED0F9/6041934B" Ref="U?"  Part="1" 
AR Path="/5FF66C9F/600BE39A/6041934B" Ref="U?"  Part="1" 
AR Path="/5FF66C9F/600C00E8/6041934B" Ref="U141"  Part="1" 
F 0 "U141" H 6400 4700 50  0000 C CNN
F 1 "SN74LVC1G126DCK" H 6650 4600 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-353_SC-70-5" H 6150 4750 50  0001 C CNN
F 3 "http://www.ti.com/lit/sg/scyt129e/scyt129e.pdf" H 6150 4750 50  0001 C CNN
	1    6150 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 4850 6200 4800
$Comp
L power:GND #PWR?
U 1 1 60142E99
P 6200 4850
AR Path="/5ED2705B/60142E99" Ref="#PWR?"  Part="1" 
AR Path="/5F1CE57C/60142E99" Ref="#PWR?"  Part="1" 
AR Path="/5F3ED0F9/60142E99" Ref="#PWR?"  Part="1" 
AR Path="/5FF66C9F/600BE39A/60142E99" Ref="#PWR?"  Part="1" 
AR Path="/5FF66C9F/600C00E8/60142E99" Ref="#PWR0641"  Part="1" 
F 0 "#PWR0641" H 6200 4600 50  0001 C CNN
F 1 "GND" H 6205 4677 50  0000 C CNN
F 2 "" H 6200 4850 50  0001 C CNN
F 3 "" H 6200 4850 50  0001 C CNN
	1    6200 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 4600 6450 4600
$Comp
L power:GND #PWR?
U 1 1 60142EA0
P 6500 4600
AR Path="/5ED2705B/60142EA0" Ref="#PWR?"  Part="1" 
AR Path="/5F1CE57C/60142EA0" Ref="#PWR?"  Part="1" 
AR Path="/5F3ED0F9/60142EA0" Ref="#PWR?"  Part="1" 
AR Path="/5FF66C9F/600BE39A/60142EA0" Ref="#PWR?"  Part="1" 
AR Path="/5FF66C9F/600C00E8/60142EA0" Ref="#PWR0644"  Part="1" 
F 0 "#PWR0644" H 6500 4350 50  0001 C CNN
F 1 "GND" V 6505 4472 50  0000 R CNN
F 2 "" H 6500 4600 50  0001 C CNN
F 3 "" H 6500 4600 50  0001 C CNN
	1    6500 4600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6200 4600 6200 4550
Connection ~ 6200 4600
Wire Wire Line
	6250 4600 6200 4600
$Comp
L Device:C_Small C?
U 1 1 6041934E
P 6350 4600
AR Path="/5ED2705B/6041934E" Ref="C?"  Part="1" 
AR Path="/5F1CE57C/6041934E" Ref="C?"  Part="1" 
AR Path="/5F3ED0F9/6041934E" Ref="C?"  Part="1" 
AR Path="/5FF66C9F/600BE39A/6041934E" Ref="C?"  Part="1" 
AR Path="/5FF66C9F/600C00E8/6041934E" Ref="C141"  Part="1" 
F 0 "C141" V 6450 4700 50  0000 C CNN
F 1 "0u1" V 6300 4700 50  0000 C CNN
F 2 "NoRef_Footprints:C_0603_1608Metric_NoRef" H 6350 4600 50  0001 C CNN
F 3 "~" H 6350 4600 50  0001 C CNN
	1    6350 4600
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 6041934F
P 6200 4550
AR Path="/5ED2705B/6041934F" Ref="#PWR?"  Part="1" 
AR Path="/5F1CE57C/6041934F" Ref="#PWR?"  Part="1" 
AR Path="/5F3ED0F9/6041934F" Ref="#PWR?"  Part="1" 
AR Path="/5FF66C9F/600BE39A/6041934F" Ref="#PWR?"  Part="1" 
AR Path="/5FF66C9F/600C00E8/6041934F" Ref="#PWR0640"  Part="1" 
F 0 "#PWR0640" H 6200 4400 50  0001 C CNN
F 1 "+5V" H 6215 4723 50  0000 C CNN
F 2 "" H 6200 4550 50  0001 C CNN
F 3 "" H 6200 4550 50  0001 C CNN
	1    6200 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 4700 6200 4600
Wire Wire Line
	6400 4750 6550 4750
$Comp
L power:+5V #PWR?
U 1 1 60142EB7
P 5800 4750
AR Path="/5ED2705B/60142EB7" Ref="#PWR?"  Part="1" 
AR Path="/5F1CE57C/60142EB7" Ref="#PWR?"  Part="1" 
AR Path="/5F3ED0F9/60142EB7" Ref="#PWR?"  Part="1" 
AR Path="/5FF66C9F/600BE39A/60142EB7" Ref="#PWR?"  Part="1" 
AR Path="/5FF66C9F/600C00E8/60142EB7" Ref="#PWR0635"  Part="1" 
F 0 "#PWR0635" H 5800 4600 50  0001 C CNN
F 1 "+5V" H 5815 4923 50  0000 C CNN
F 2 "" H 5800 4750 50  0001 C CNN
F 3 "" H 5800 4750 50  0001 C CNN
	1    5800 4750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5800 4750 5850 4750
Wire Wire Line
	6150 4550 6150 4450
Wire Wire Line
	6150 4450 5450 4450
Wire Wire Line
	5450 3850 5450 4450
Connection ~ 5450 4450
Wire Wire Line
	5450 4450 5450 4700
Wire Wire Line
	6750 3850 6400 3850
Text HLabel 1050 900  0    50   Input ~ 0
A[0..7]
Wire Bus Line
	1400 900  1050 900 
Entry Wire Line
	1500 1700 1400 1600
Entry Wire Line
	1500 1600 1400 1500
Entry Wire Line
	1500 1500 1400 1400
Entry Wire Line
	1500 1400 1400 1300
Entry Wire Line
	1500 1300 1400 1200
Entry Wire Line
	1500 1200 1400 1100
Entry Wire Line
	1500 1100 1400 1000
Entry Wire Line
	1500 1000 1400 900 
Text HLabel 1050 2250 0    50   Input ~ 0
B[0..7]
Wire Bus Line
	1400 2250 1050 2250
Entry Wire Line
	1500 3050 1400 2950
Entry Wire Line
	1500 2950 1400 2850
Entry Wire Line
	1500 2850 1400 2750
Entry Wire Line
	1500 2750 1400 2650
Entry Wire Line
	1500 2650 1400 2550
Entry Wire Line
	1500 2550 1400 2450
Entry Wire Line
	1500 2450 1400 2350
Entry Wire Line
	1500 2350 1400 2250
Wire Wire Line
	1600 2650 1500 2650
Wire Wire Line
	1600 2550 1500 2550
Wire Wire Line
	1600 2450 1500 2450
Wire Wire Line
	1600 2350 1500 2350
Text Label 1500 1000 0    50   ~ 0
A0
Text Label 1500 1100 0    50   ~ 0
A1
Text Label 1500 1200 0    50   ~ 0
A2
Text Label 1500 1300 0    50   ~ 0
A3
Text Label 1500 1400 0    50   ~ 0
A4
Text Label 1500 1500 0    50   ~ 0
A5
Text Label 1500 1600 0    50   ~ 0
A6
Text Label 1500 1700 0    50   ~ 0
A7
Text Label 1500 2350 0    50   ~ 0
B0
Text Label 1500 2450 0    50   ~ 0
B1
Text Label 1500 2550 0    50   ~ 0
B2
Text Label 1500 2650 0    50   ~ 0
B3
Text Label 1500 2750 0    50   ~ 0
B4
Text Label 1500 2850 0    50   ~ 0
B5
Text Label 1500 2950 0    50   ~ 0
B6
Text Label 1500 3050 0    50   ~ 0
B7
Wire Wire Line
	1500 1000 1600 1000
Wire Wire Line
	1500 1100 1600 1100
Wire Wire Line
	1500 1200 1600 1200
Wire Wire Line
	1500 1300 1600 1300
Wire Wire Line
	1500 1400 1600 1400
Wire Wire Line
	1500 1500 1600 1500
Wire Wire Line
	1500 1600 1600 1600
Wire Wire Line
	1500 1700 1600 1700
Wire Wire Line
	1500 2750 1600 2750
Wire Wire Line
	1500 2850 1600 2850
Wire Wire Line
	1500 2950 1600 2950
Wire Wire Line
	1500 3050 1600 3050
Text Label 3550 850  0    50   ~ 0
A0
Text Label 3550 1400 0    50   ~ 0
A1
Text Label 3550 1950 0    50   ~ 0
A2
Text Label 3550 2500 0    50   ~ 0
A3
Text Label 3550 3100 0    50   ~ 0
A4
Text Label 3550 3650 0    50   ~ 0
A5
Text Label 3550 4200 0    50   ~ 0
A6
Text Label 3550 4750 0    50   ~ 0
A7
Wire Wire Line
	3550 850  3650 850 
Wire Wire Line
	3550 1400 3650 1400
Wire Wire Line
	3550 1950 3650 1950
Wire Wire Line
	3550 2500 3650 2500
Wire Wire Line
	3550 3100 3650 3100
Wire Wire Line
	3550 3650 3650 3650
Wire Wire Line
	3550 4200 3650 4200
Wire Wire Line
	3550 4750 3650 4750
Wire Wire Line
	3650 2700 3550 2700
Wire Wire Line
	3650 1600 3550 1600
Wire Wire Line
	3650 1050 3550 1050
Text Label 3550 1050 0    50   ~ 0
B0
Text Label 3550 1600 0    50   ~ 0
B1
Text Label 3550 2700 0    50   ~ 0
B3
Text Label 3550 3300 0    50   ~ 0
B4
Text Label 3550 3850 0    50   ~ 0
B5
Text Label 3550 4400 0    50   ~ 0
B6
Text Label 3550 4950 0    50   ~ 0
B7
Wire Wire Line
	3550 3300 3650 3300
Wire Wire Line
	3550 3850 3650 3850
Wire Wire Line
	3550 4400 3650 4400
Wire Wire Line
	3550 4950 3650 4950
Wire Wire Line
	3650 2150 3550 2150
Text Label 3550 2150 0    50   ~ 0
B2
Wire Wire Line
	6750 3850 6750 2750
Wire Wire Line
	6750 2750 5500 2750
Wire Wire Line
	5500 2750 5500 2250
Wire Wire Line
	4250 950  4350 950 
Wire Wire Line
	4350 950  4350 1250
Wire Wire Line
	4350 1350 4350 1500
Wire Wire Line
	4350 1500 4250 1500
Wire Wire Line
	4350 1350 5650 1350
Wire Wire Line
	4450 1450 4450 2050
Wire Wire Line
	4450 2050 4250 2050
Wire Wire Line
	4450 1450 5650 1450
Wire Wire Line
	4550 1550 4550 2600
Wire Wire Line
	4550 2600 4250 2600
Wire Wire Line
	4550 1550 5650 1550
Wire Wire Line
	4650 1650 4650 3200
Wire Wire Line
	4650 3200 4250 3200
Wire Wire Line
	4650 1650 5650 1650
Wire Wire Line
	4750 1750 4750 3750
Wire Wire Line
	4750 3750 4250 3750
Wire Wire Line
	4750 1750 5650 1750
Wire Wire Line
	4850 1850 4850 4300
Wire Wire Line
	4850 4300 4250 4300
Wire Wire Line
	4850 1850 5650 1850
Wire Wire Line
	4250 4850 4950 4850
Wire Wire Line
	4950 4850 4950 1950
Wire Wire Line
	4950 1950 5650 1950
$Comp
L 74xx:74LS32 U?
U 1 1 604E37CC
P 3950 950
AR Path="/5F396002/604E37CC" Ref="U?"  Part="1" 
AR Path="/5FF66C9F/600C00E8/604E37CC" Ref="U137"  Part="1" 
F 0 "U137" H 3950 1275 50  0000 C CNN
F 1 "SN74HC32PW" H 3950 1184 50  0000 C CNN
F 2 "Package_SO:TSSOP-14_4.4x5mm_P0.65mm" H 3950 950 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 3950 950 50  0001 C CNN
	1    3950 950 
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS32 U?
U 2 1 604E37D2
P 3950 1500
AR Path="/5F396002/604E37D2" Ref="U?"  Part="2" 
AR Path="/5FF66C9F/600C00E8/604E37D2" Ref="U137"  Part="2" 
F 0 "U137" H 3950 1825 50  0000 C CNN
F 1 "SN74HC32PW" H 3950 1734 50  0000 C CNN
F 2 "Package_SO:TSSOP-14_4.4x5mm_P0.65mm" H 3950 1500 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 3950 1500 50  0001 C CNN
	2    3950 1500
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS32 U?
U 3 1 604E37D8
P 3950 2050
AR Path="/5F396002/604E37D8" Ref="U?"  Part="3" 
AR Path="/5FF66C9F/600C00E8/604E37D8" Ref="U137"  Part="3" 
F 0 "U137" H 3950 2375 50  0000 C CNN
F 1 "SN74HC32PW" H 3950 2284 50  0000 C CNN
F 2 "Package_SO:TSSOP-14_4.4x5mm_P0.65mm" H 3950 2050 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 3950 2050 50  0001 C CNN
	3    3950 2050
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS32 U?
U 4 1 604E37DE
P 3950 2600
AR Path="/5F396002/604E37DE" Ref="U?"  Part="4" 
AR Path="/5FF66C9F/600C00E8/604E37DE" Ref="U137"  Part="4" 
F 0 "U137" H 3950 2925 50  0000 C CNN
F 1 "SN74HC32PW" H 3950 2834 50  0000 C CNN
F 2 "Package_SO:TSSOP-14_4.4x5mm_P0.65mm" H 3950 2600 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 3950 2600 50  0001 C CNN
	4    3950 2600
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS32 U?
U 5 1 604E37E4
P 3600 6800
AR Path="/5F396002/604E37E4" Ref="U?"  Part="5" 
AR Path="/5FF66C9F/600C00E8/604E37E4" Ref="U137"  Part="5" 
F 0 "U137" H 3830 6846 50  0000 L CNN
F 1 "SN74HC32PW" H 3830 6755 50  0000 L CNN
F 2 "Package_SO:TSSOP-14_4.4x5mm_P0.65mm" H 3600 6800 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 3600 6800 50  0001 C CNN
	5    3600 6800
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 604E37EA
P 3600 6200
AR Path="/5F396002/604E37EA" Ref="#PWR?"  Part="1" 
AR Path="/5FF66C9F/600C00E8/604E37EA" Ref="#PWR0628"  Part="1" 
F 0 "#PWR0628" H 3600 6050 50  0001 C CNN
F 1 "+5V" H 3615 6373 50  0000 C CNN
F 2 "" H 3600 6200 50  0001 C CNN
F 3 "" H 3600 6200 50  0001 C CNN
	1    3600 6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 6200 3600 6250
Wire Wire Line
	3900 6250 3850 6250
$Comp
L Device:C_Small C?
U 1 1 604E37F2
P 3750 6250
AR Path="/5ED2705B/604E37F2" Ref="C?"  Part="1" 
AR Path="/5F1CE57C/604E37F2" Ref="C?"  Part="1" 
AR Path="/5F396002/604E37F2" Ref="C?"  Part="1" 
AR Path="/5FF66C9F/600C00E8/604E37F2" Ref="C137"  Part="1" 
F 0 "C137" V 3850 6350 50  0000 C CNN
F 1 "0u1" V 3700 6350 50  0000 C CNN
F 2 "NoRef_Footprints:C_0603_1608Metric_NoRef" H 3750 6250 50  0001 C CNN
F 3 "~" H 3750 6250 50  0001 C CNN
	1    3750 6250
	0    1    1    0   
$EndComp
Wire Wire Line
	3650 6250 3600 6250
Connection ~ 3600 6250
Wire Wire Line
	3600 6250 3600 6300
$Comp
L power:GND #PWR?
U 1 1 604E37FB
P 3900 6250
AR Path="/5ED2705B/604E37FB" Ref="#PWR?"  Part="1" 
AR Path="/5F1CE57C/604E37FB" Ref="#PWR?"  Part="1" 
AR Path="/5F396002/604E37FB" Ref="#PWR?"  Part="1" 
AR Path="/5FF66C9F/600C00E8/604E37FB" Ref="#PWR0630"  Part="1" 
F 0 "#PWR0630" H 3900 6000 50  0001 C CNN
F 1 "GND" V 3905 6122 50  0000 R CNN
F 2 "" H 3900 6250 50  0001 C CNN
F 3 "" H 3900 6250 50  0001 C CNN
	1    3900 6250
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 604E3801
P 3600 7350
AR Path="/5ED2705B/604E3801" Ref="#PWR?"  Part="1" 
AR Path="/5F1CE57C/604E3801" Ref="#PWR?"  Part="1" 
AR Path="/5F396002/604E3801" Ref="#PWR?"  Part="1" 
AR Path="/5FF66C9F/600C00E8/604E3801" Ref="#PWR0629"  Part="1" 
F 0 "#PWR0629" H 3600 7100 50  0001 C CNN
F 1 "GND" V 3605 7222 50  0000 R CNN
F 2 "" H 3600 7350 50  0001 C CNN
F 3 "" H 3600 7350 50  0001 C CNN
	1    3600 7350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 7350 3600 7300
$Comp
L 74xx:74LS32 U?
U 1 1 605087E7
P 3950 3200
AR Path="/5F396002/605087E7" Ref="U?"  Part="1" 
AR Path="/5FF66C9F/600C00E8/605087E7" Ref="U138"  Part="1" 
F 0 "U138" H 3950 3525 50  0000 C CNN
F 1 "SN74HC32PW" H 3950 3434 50  0000 C CNN
F 2 "Package_SO:TSSOP-14_4.4x5mm_P0.65mm" H 3950 3200 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 3950 3200 50  0001 C CNN
	1    3950 3200
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS32 U?
U 2 1 605087ED
P 3950 3750
AR Path="/5F396002/605087ED" Ref="U?"  Part="2" 
AR Path="/5FF66C9F/600C00E8/605087ED" Ref="U138"  Part="2" 
F 0 "U138" H 3950 4075 50  0000 C CNN
F 1 "SN74HC32PW" H 3950 3984 50  0000 C CNN
F 2 "Package_SO:TSSOP-14_4.4x5mm_P0.65mm" H 3950 3750 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 3950 3750 50  0001 C CNN
	2    3950 3750
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS32 U?
U 3 1 605087F3
P 3950 4300
AR Path="/5F396002/605087F3" Ref="U?"  Part="3" 
AR Path="/5FF66C9F/600C00E8/605087F3" Ref="U138"  Part="3" 
F 0 "U138" H 3950 4625 50  0000 C CNN
F 1 "SN74HC32PW" H 3950 4534 50  0000 C CNN
F 2 "Package_SO:TSSOP-14_4.4x5mm_P0.65mm" H 3950 4300 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 3950 4300 50  0001 C CNN
	3    3950 4300
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS32 U?
U 4 1 605087F9
P 3950 4850
AR Path="/5F396002/605087F9" Ref="U?"  Part="4" 
AR Path="/5FF66C9F/600C00E8/605087F9" Ref="U138"  Part="4" 
F 0 "U138" H 3950 5175 50  0000 C CNN
F 1 "SN74HC32PW" H 3950 5084 50  0000 C CNN
F 2 "Package_SO:TSSOP-14_4.4x5mm_P0.65mm" H 3950 4850 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 3950 4850 50  0001 C CNN
	4    3950 4850
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS32 U?
U 5 1 605087FF
P 4550 6800
AR Path="/5F396002/605087FF" Ref="U?"  Part="5" 
AR Path="/5FF66C9F/600C00E8/605087FF" Ref="U138"  Part="5" 
F 0 "U138" H 4780 6846 50  0000 L CNN
F 1 "SN74HC32PW" H 4780 6755 50  0000 L CNN
F 2 "Package_SO:TSSOP-14_4.4x5mm_P0.65mm" H 4550 6800 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 4550 6800 50  0001 C CNN
	5    4550 6800
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 60508805
P 4550 6200
AR Path="/5F396002/60508805" Ref="#PWR?"  Part="1" 
AR Path="/5FF66C9F/600C00E8/60508805" Ref="#PWR0631"  Part="1" 
F 0 "#PWR0631" H 4550 6050 50  0001 C CNN
F 1 "+5V" H 4565 6373 50  0000 C CNN
F 2 "" H 4550 6200 50  0001 C CNN
F 3 "" H 4550 6200 50  0001 C CNN
	1    4550 6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 6200 4550 6250
Wire Wire Line
	4850 6250 4800 6250
$Comp
L Device:C_Small C?
U 1 1 6050880D
P 4700 6250
AR Path="/5ED2705B/6050880D" Ref="C?"  Part="1" 
AR Path="/5F1CE57C/6050880D" Ref="C?"  Part="1" 
AR Path="/5F396002/6050880D" Ref="C?"  Part="1" 
AR Path="/5FF66C9F/600C00E8/6050880D" Ref="C138"  Part="1" 
F 0 "C138" V 4800 6350 50  0000 C CNN
F 1 "0u1" V 4650 6350 50  0000 C CNN
F 2 "NoRef_Footprints:C_0603_1608Metric_NoRef" H 4700 6250 50  0001 C CNN
F 3 "~" H 4700 6250 50  0001 C CNN
	1    4700 6250
	0    1    1    0   
$EndComp
Wire Wire Line
	4600 6250 4550 6250
Connection ~ 4550 6250
Wire Wire Line
	4550 6250 4550 6300
$Comp
L power:GND #PWR?
U 1 1 60508816
P 4850 6250
AR Path="/5ED2705B/60508816" Ref="#PWR?"  Part="1" 
AR Path="/5F1CE57C/60508816" Ref="#PWR?"  Part="1" 
AR Path="/5F396002/60508816" Ref="#PWR?"  Part="1" 
AR Path="/5FF66C9F/600C00E8/60508816" Ref="#PWR0633"  Part="1" 
F 0 "#PWR0633" H 4850 6000 50  0001 C CNN
F 1 "GND" V 4855 6122 50  0000 R CNN
F 2 "" H 4850 6250 50  0001 C CNN
F 3 "" H 4850 6250 50  0001 C CNN
	1    4850 6250
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6050881C
P 4550 7350
AR Path="/5ED2705B/6050881C" Ref="#PWR?"  Part="1" 
AR Path="/5F1CE57C/6050881C" Ref="#PWR?"  Part="1" 
AR Path="/5F396002/6050881C" Ref="#PWR?"  Part="1" 
AR Path="/5FF66C9F/600C00E8/6050881C" Ref="#PWR0632"  Part="1" 
F 0 "#PWR0632" H 4550 7100 50  0001 C CNN
F 1 "GND" V 4555 7222 50  0000 R CNN
F 2 "" H 4550 7350 50  0001 C CNN
F 3 "" H 4550 7350 50  0001 C CNN
	1    4550 7350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 7350 4550 7300
Wire Wire Line
	6650 1250 6900 1250
Wire Wire Line
	6650 1350 6900 1350
Wire Wire Line
	6650 1450 6900 1450
Wire Wire Line
	6650 1550 6900 1550
Wire Wire Line
	6650 1650 6900 1650
Wire Wire Line
	6650 1750 6900 1750
Wire Wire Line
	6650 1850 6900 1850
Wire Wire Line
	6650 1950 6900 1950
Text Label 6900 1950 2    50   ~ 0
DB7
Text Label 6900 1850 2    50   ~ 0
DB6
Text Label 6900 1750 2    50   ~ 0
DB5
Text Label 6900 1650 2    50   ~ 0
DB4
Text Label 6900 1550 2    50   ~ 0
DB3
Text Label 6900 1450 2    50   ~ 0
DB2
Text Label 6900 1350 2    50   ~ 0
DB1
Text Label 6900 1250 2    50   ~ 0
DB0
Entry Wire Line
	6900 1950 7000 2050
Entry Wire Line
	6900 1850 7000 1950
Entry Wire Line
	6900 1750 7000 1850
Entry Wire Line
	6900 1650 7000 1750
Entry Wire Line
	6900 1550 7000 1650
Entry Wire Line
	6900 1450 7000 1550
Entry Wire Line
	6900 1350 7000 1450
Entry Wire Line
	6900 1250 7000 1350
Wire Bus Line
	1400 900  1400 1600
Wire Bus Line
	1400 2250 1400 2950
Wire Bus Line
	7000 1350 7000 2050
$EndSCHEMATC
