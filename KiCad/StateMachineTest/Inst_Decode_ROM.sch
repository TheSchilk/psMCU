EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 38 65
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 3050 1000 0    50   Input ~ 0
Inst[0..15]
Text HLabel 5900 2150 2    50   Output ~ 0
InstCode3
Text HLabel 5900 2250 2    50   Output ~ 0
InstCode4
Text HLabel 5900 2350 2    50   Output ~ 0
InstCode5
Text HLabel 5900 2450 2    50   Output ~ 0
InstCode6
Text HLabel 5900 2550 2    50   Output ~ 0
InstCode7
Wire Wire Line
	4950 2050 4950 1850
$Comp
L Device:C_Small C?
U 1 1 5F6D43FB
P 5100 1850
AR Path="/5F28170E/5F6D43FB" Ref="C?"  Part="1" 
AR Path="/60E33DBC/5F3D8E0D/5F6D43FB" Ref="C?"  Part="1" 
F 0 "C?" V 4871 1850 50  0000 C CNN
F 1 "0u1" V 4962 1850 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5100 1850 50  0001 C CNN
F 3 "~" H 5100 1850 50  0001 C CNN
	1    5100 1850
	0    1    1    0   
$EndComp
Wire Wire Line
	5000 1850 4950 1850
Connection ~ 4950 1850
Wire Wire Line
	4950 1850 4950 1750
$Comp
L power:+5V #PWR?
U 1 1 5F6D4404
P 4950 1750
AR Path="/5F28170E/5F6D4404" Ref="#PWR?"  Part="1" 
AR Path="/60E33DBC/5F3D8E0D/5F6D4404" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4950 1600 50  0001 C CNN
F 1 "+5V" H 4965 1923 50  0000 C CNN
F 2 "" H 4950 1750 50  0001 C CNN
F 3 "" H 4950 1750 50  0001 C CNN
	1    4950 1750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F6D440A
P 5250 1850
AR Path="/5F28170E/5F6D440A" Ref="#PWR?"  Part="1" 
AR Path="/60E33DBC/5F3D8E0D/5F6D440A" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5250 1600 50  0001 C CNN
F 1 "GND" V 5255 1722 50  0000 R CNN
F 2 "" H 5250 1850 50  0001 C CNN
F 3 "" H 5250 1850 50  0001 C CNN
	1    5250 1850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5250 1850 5200 1850
Wire Wire Line
	4950 4600 4950 4550
$Comp
L Memory_Flash:SST39SF010 U?
U 1 1 5F6D4418
P 4950 3350
AR Path="/5F28170E/5F6D4418" Ref="U?"  Part="1" 
AR Path="/60E33DBC/5F3D8E0D/5F6D4418" Ref="U?"  Part="1" 
F 0 "U?" H 5100 4750 50  0000 C CNN
F 1 "SST39SF010" H 5250 4650 50  0000 C CNN
F 2 "PLCC-32_11.4x14.0mm_P1.27mm_SMD-Socket:PLCC-32_11.4x14.0mm_P1.27mm_SMD-Socket" H 4950 3650 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/25022B.pdf" H 4950 3650 50  0001 C CNN
	1    4950 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 2850 4250 2850
Wire Wire Line
	4250 2850 4250 2950
Wire Wire Line
	4250 3750 4350 3750
Wire Wire Line
	4350 3650 4250 3650
Connection ~ 4250 3650
Wire Wire Line
	4250 3650 4250 3750
Wire Wire Line
	4350 2950 4250 2950
Connection ~ 4250 2950
Wire Wire Line
	4250 2950 4250 3050
Wire Wire Line
	4350 3050 4250 3050
Connection ~ 4250 3050
Wire Wire Line
	4250 3050 4250 3150
Wire Wire Line
	4350 3150 4250 3150
Connection ~ 4250 3150
Wire Wire Line
	4250 3150 4250 3250
Wire Wire Line
	4350 3250 4250 3250
Connection ~ 4250 3250
Wire Wire Line
	4250 3250 4250 3350
Wire Wire Line
	4350 3350 4250 3350
Connection ~ 4250 3350
Wire Wire Line
	4250 3350 4250 3450
Wire Wire Line
	4350 3450 4250 3450
Connection ~ 4250 3450
Wire Wire Line
	4250 3450 4250 3550
Wire Wire Line
	4350 3550 4250 3550
Connection ~ 4250 3550
$Comp
L power:GND #PWR?
U 1 1 5F6D6925
P 4200 3750
F 0 "#PWR?" H 4200 3500 50  0001 C CNN
F 1 "GND" V 4205 3622 50  0000 R CNN
F 2 "" H 4200 3750 50  0001 C CNN
F 3 "" H 4200 3750 50  0001 C CNN
	1    4200 3750
	0    1    1    0   
$EndComp
Wire Wire Line
	4200 3750 4250 3750
Wire Wire Line
	4350 2250 3650 2250
Wire Wire Line
	4350 2350 3650 2350
Wire Wire Line
	4350 2450 3650 2450
Wire Wire Line
	4350 2550 3650 2550
Wire Wire Line
	4350 2650 3650 2650
Wire Wire Line
	4350 2750 3650 2750
Text Label 3650 1250 0    50   ~ 0
Inst0
Text Label 3650 1350 0    50   ~ 0
Inst1
Text Label 3650 1450 0    50   ~ 0
Inst2
Text Label 3650 1550 0    50   ~ 0
Inst3
Text Label 3650 1650 0    50   ~ 0
Inst4
Text Label 3650 1750 0    50   ~ 0
Inst5
Text Label 3650 1850 0    50   ~ 0
Inst6
Text Label 3650 1950 0    50   ~ 0
Inst7
Text Label 3650 2750 0    50   ~ 0
Inst15
Text Label 3650 2650 0    50   ~ 0
Inst14
Text Label 3650 2550 0    50   ~ 0
Inst13
Text Label 3650 2450 0    50   ~ 0
Inst12
Text Label 3650 2350 0    50   ~ 0
Inst11
Text Label 3650 2250 0    50   ~ 0
Inst10
Text Label 3650 2150 0    50   ~ 0
Inst9
Text Label 3650 2050 0    50   ~ 0
Inst8
Entry Wire Line
	3550 2050 3650 2150
Entry Wire Line
	3550 2150 3650 2250
Entry Wire Line
	3550 2250 3650 2350
Entry Wire Line
	3550 2350 3650 2450
Entry Wire Line
	3550 2450 3650 2550
Entry Wire Line
	3550 2550 3650 2650
Entry Wire Line
	3550 2650 3650 2750
Entry Wire Line
	3550 1150 3650 1250
Entry Wire Line
	3550 1250 3650 1350
Entry Wire Line
	3550 1350 3650 1450
Entry Wire Line
	3550 1450 3650 1550
Entry Wire Line
	3550 1550 3650 1650
Entry Wire Line
	3550 1650 3650 1750
Entry Wire Line
	3550 1750 3650 1850
Entry Wire Line
	3550 1850 3650 1950
Entry Wire Line
	3550 1950 3650 2050
Wire Bus Line
	3550 1000 3050 1000
NoConn ~ 4350 3850
NoConn ~ 4350 3950
Connection ~ 4250 3750
Wire Wire Line
	4250 3550 4250 3650
NoConn ~ 5550 2650
NoConn ~ 5550 2750
NoConn ~ 5550 2850
Wire Wire Line
	5900 2150 5550 2150
Wire Wire Line
	5900 2250 5550 2250
Wire Wire Line
	5900 2350 5550 2350
Wire Wire Line
	5900 2450 5550 2450
Wire Wire Line
	5900 2550 5550 2550
Wire Wire Line
	4350 4450 4250 4450
Wire Wire Line
	4250 4450 4250 4350
Wire Wire Line
	4250 4350 4350 4350
$Comp
L power:GND #PWR?
U 1 1 5F6D4411
P 4950 4600
AR Path="/5F28170E/5F6D4411" Ref="#PWR?"  Part="1" 
AR Path="/60E33DBC/5F3D8E0D/5F6D4411" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4950 4350 50  0001 C CNN
F 1 "GND" H 5200 4550 50  0000 R CNN
F 2 "" H 4950 4600 50  0001 C CNN
F 3 "" H 4950 4600 50  0001 C CNN
	1    4950 4600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F72D02A
P 4250 4500
AR Path="/5F28170E/5F72D02A" Ref="#PWR?"  Part="1" 
AR Path="/60E33DBC/5F3D8E0D/5F72D02A" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4250 4250 50  0001 C CNN
F 1 "GND" H 4500 4450 50  0000 R CNN
F 2 "" H 4250 4500 50  0001 C CNN
F 3 "" H 4250 4500 50  0001 C CNN
	1    4250 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 4500 4250 4450
Connection ~ 4250 4450
$Comp
L power:+5V #PWR?
U 1 1 5F72E411
P 4200 4150
AR Path="/5F28170E/5F72E411" Ref="#PWR?"  Part="1" 
AR Path="/60E33DBC/5F3D8E0D/5F72E411" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4200 4000 50  0001 C CNN
F 1 "+5V" H 4215 4323 50  0000 C CNN
F 2 "" H 4200 4150 50  0001 C CNN
F 3 "" H 4200 4150 50  0001 C CNN
	1    4200 4150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4200 4150 4350 4150
Wire Wire Line
	3650 1250 3950 1250
Wire Wire Line
	3650 1350 3950 1350
Wire Wire Line
	3650 1450 3950 1450
Wire Wire Line
	3650 1550 3950 1550
Wire Wire Line
	3650 1650 3950 1650
Wire Wire Line
	3650 1750 3950 1750
Wire Wire Line
	3650 1850 3950 1850
Wire Wire Line
	3650 1950 3950 1950
Wire Wire Line
	3650 2050 3950 2050
Wire Wire Line
	4350 2150 3650 2150
Wire Bus Line
	3550 1000 3550 2650
$EndSCHEMATC
