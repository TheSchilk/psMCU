EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 89 94
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Entry Wire Line
	5150 3750 5250 3850
Entry Wire Line
	5150 3850 5250 3950
Entry Wire Line
	5150 3950 5250 4050
Entry Wire Line
	5150 4050 5250 4150
Entry Wire Line
	5150 4150 5250 4250
Entry Wire Line
	5150 4250 5250 4350
Entry Wire Line
	5150 4350 5250 4450
Entry Wire Line
	5150 4450 5250 4550
Wire Bus Line
	5150 3700 4700 3700
Entry Wire Line
	5150 5250 5050 5350
Text HLabel 4700 3700 0    50   Input ~ 0
Inst[0..15]
Entry Wire Line
	5150 3750 5250 3850
Entry Wire Line
	5150 3850 5250 3950
Entry Wire Line
	5150 3950 5250 4050
Entry Wire Line
	5150 4050 5250 4150
Entry Wire Line
	5150 4150 5250 4250
Entry Wire Line
	5150 4250 5250 4350
Entry Wire Line
	5150 4350 5250 4450
Entry Wire Line
	5150 4450 5250 4550
Text Label 5250 3850 0    50   ~ 0
Inst0
Text Label 5250 3950 0    50   ~ 0
Inst1
Text Label 5250 4050 0    50   ~ 0
Inst2
Text Label 5250 4150 0    50   ~ 0
Inst3
Text Label 5250 4250 0    50   ~ 0
Inst4
Text Label 5250 4350 0    50   ~ 0
Inst5
Text Label 5250 4450 0    50   ~ 0
Inst6
Text Label 5250 4550 0    50   ~ 0
Inst7
Text Label 5050 5350 2    50   ~ 0
Inst8
Entry Wire Line
	5150 5250 5050 5350
Text HLabel 5300 1500 0    50   Input ~ 0
RegB[0..7]
Wire Bus Line
	5300 1500 5750 1500
Entry Wire Line
	5750 2300 5850 2400
Entry Wire Line
	5750 2200 5850 2300
Entry Wire Line
	5750 2100 5850 2200
Entry Wire Line
	5750 2000 5850 2100
Entry Wire Line
	5750 1900 5850 2000
Entry Wire Line
	5750 1800 5850 1900
Entry Wire Line
	5750 1700 5850 1800
Entry Wire Line
	5750 1600 5850 1700
Entry Wire Line
	5750 2300 5850 2400
Entry Wire Line
	5750 2200 5850 2300
Entry Wire Line
	5750 2100 5850 2200
Entry Wire Line
	5750 2000 5850 2100
Entry Wire Line
	5750 1900 5850 2000
Entry Wire Line
	5750 1800 5850 1900
Entry Wire Line
	5750 1700 5850 1800
Entry Wire Line
	5750 1600 5850 1700
Text Label 5850 1700 0    50   ~ 0
RegB0
Text Label 5850 1800 0    50   ~ 0
RegB1
Text Label 5850 1900 0    50   ~ 0
RegB2
Text Label 5850 2000 0    50   ~ 0
RegB3
Text Label 5850 2100 0    50   ~ 0
RegB4
Text Label 5850 2200 0    50   ~ 0
RegB5
Text Label 5850 2300 0    50   ~ 0
RegB6
Text Label 5850 2400 0    50   ~ 0
RegB7
Wire Wire Line
	6900 3050 6900 3000
Wire Wire Line
	7200 1300 7150 1300
Wire Wire Line
	6900 1300 6900 1200
Connection ~ 6900 1300
Wire Wire Line
	6950 1300 6900 1300
Wire Wire Line
	6900 1400 6900 1300
Wire Wire Line
	6300 2600 6400 2600
Entry Wire Line
	7650 2400 7750 2500
Entry Wire Line
	7650 2300 7750 2400
Entry Wire Line
	7650 2200 7750 2300
Entry Wire Line
	7650 2100 7750 2200
Entry Wire Line
	7650 2000 7750 2100
Entry Wire Line
	7650 1900 7750 2000
Entry Wire Line
	7650 1800 7750 1900
Entry Wire Line
	7650 1700 7750 1800
$Comp
L power:GND #PWR?
U 1 1 5F651B5B
P 6900 3050
AR Path="/5ED2705B/5F651B5B" Ref="#PWR?"  Part="1" 
AR Path="/609EB802/5F651B5B" Ref="#PWR?"  Part="1" 
AR Path="/5F3A2F3D/5F651B5B" Ref="#PWR?"  Part="1" 
AR Path="/5F629530/5F651B5B" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6900 2800 50  0001 C CNN
F 1 "GND" H 7100 3000 50  0000 C CNN
F 2 "" H 6900 3050 50  0001 C CNN
F 3 "" H 6900 3050 50  0001 C CNN
	1    6900 3050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F651B61
P 7200 1300
AR Path="/5ED2705B/5F651B61" Ref="#PWR?"  Part="1" 
AR Path="/609EB802/5F651B61" Ref="#PWR?"  Part="1" 
AR Path="/5F3A2F3D/5F651B61" Ref="#PWR?"  Part="1" 
AR Path="/5F629530/5F651B61" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7200 1050 50  0001 C CNN
F 1 "GND" V 7205 1172 50  0000 R CNN
F 2 "" H 7200 1300 50  0001 C CNN
F 3 "" H 7200 1300 50  0001 C CNN
	1    7200 1300
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5F651B67
P 6900 1200
AR Path="/5ED2705B/5F651B67" Ref="#PWR?"  Part="1" 
AR Path="/609EB802/5F651B67" Ref="#PWR?"  Part="1" 
AR Path="/5F3A2F3D/5F651B67" Ref="#PWR?"  Part="1" 
AR Path="/5F629530/5F651B67" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6900 1050 50  0001 C CNN
F 1 "+5V" H 6750 1300 50  0000 C CNN
F 2 "" H 6900 1200 50  0001 C CNN
F 3 "" H 6900 1200 50  0001 C CNN
	1    6900 1200
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC245 U?
U 1 1 5F651B6D
P 6900 2200
AR Path="/5ED2705B/5F651B6D" Ref="U?"  Part="1" 
AR Path="/609EB802/5F651B6D" Ref="U?"  Part="1" 
AR Path="/5F3A2F3D/5F651B6D" Ref="U?"  Part="1" 
AR Path="/5F629530/5F651B6D" Ref="U?"  Part="1" 
F 0 "U?" H 7000 2950 50  0000 C CNN
F 1 "74HC245" H 7100 2850 50  0000 C CNN
F 2 "Package_SO:SSOP-20_5.3x7.2mm_P0.65mm" H 6900 2200 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HC245" H 6900 2200 50  0001 C CNN
	1    6900 2200
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5F651B73
P 6300 2600
AR Path="/5ED2705B/5F651B73" Ref="#PWR?"  Part="1" 
AR Path="/609EB802/5F651B73" Ref="#PWR?"  Part="1" 
AR Path="/5F3A2F3D/5F651B73" Ref="#PWR?"  Part="1" 
AR Path="/5F629530/5F651B73" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6300 2450 50  0001 C CNN
F 1 "+5V" H 6300 2750 50  0000 C CNN
F 2 "" H 6300 2600 50  0001 C CNN
F 3 "" H 6300 2600 50  0001 C CNN
	1    6300 2600
	0    -1   -1   0   
$EndComp
Entry Wire Line
	7650 2400 7750 2500
Entry Wire Line
	7650 2300 7750 2400
Entry Wire Line
	7650 2200 7750 2300
Entry Wire Line
	7650 2100 7750 2200
Entry Wire Line
	7650 2000 7750 2100
Entry Wire Line
	7650 1900 7750 2000
Entry Wire Line
	7650 1800 7750 1900
Entry Wire Line
	7650 1700 7750 1800
$Comp
L Device:C_Small C?
U 1 1 5F651B89
P 7050 1300
AR Path="/5ED2705B/5F651B89" Ref="C?"  Part="1" 
AR Path="/609EB802/5F651B89" Ref="C?"  Part="1" 
AR Path="/5F3A2F3D/5F651B89" Ref="C?"  Part="1" 
AR Path="/5F629530/5F651B89" Ref="C?"  Part="1" 
F 0 "C?" V 6821 1300 50  0000 C CNN
F 1 "0u1" V 6912 1300 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 7050 1300 50  0001 C CNN
F 3 "~" H 7050 1300 50  0001 C CNN
	1    7050 1300
	0    1    1    0   
$EndComp
Wire Wire Line
	6900 5200 6900 5150
Wire Wire Line
	7200 3450 7150 3450
Wire Wire Line
	6900 3450 6900 3350
Connection ~ 6900 3450
Wire Wire Line
	6950 3450 6900 3450
Wire Wire Line
	6900 3550 6900 3450
Wire Wire Line
	6300 4750 6400 4750
Entry Wire Line
	7650 4550 7750 4650
Entry Wire Line
	7650 4450 7750 4550
Entry Wire Line
	7650 4350 7750 4450
Entry Wire Line
	7650 4250 7750 4350
Entry Wire Line
	7650 4150 7750 4250
Entry Wire Line
	7650 4050 7750 4150
Entry Wire Line
	7650 3950 7750 4050
Entry Wire Line
	7650 3850 7750 3950
$Comp
L power:GND #PWR?
U 1 1 5F651BA7
P 6900 5200
AR Path="/5ED2705B/5F651BA7" Ref="#PWR?"  Part="1" 
AR Path="/609EB802/5F651BA7" Ref="#PWR?"  Part="1" 
AR Path="/5F3A2F3D/5F651BA7" Ref="#PWR?"  Part="1" 
AR Path="/5F629530/5F651BA7" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6900 4950 50  0001 C CNN
F 1 "GND" H 7100 5150 50  0000 C CNN
F 2 "" H 6900 5200 50  0001 C CNN
F 3 "" H 6900 5200 50  0001 C CNN
	1    6900 5200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F651BAD
P 7200 3450
AR Path="/5ED2705B/5F651BAD" Ref="#PWR?"  Part="1" 
AR Path="/609EB802/5F651BAD" Ref="#PWR?"  Part="1" 
AR Path="/5F3A2F3D/5F651BAD" Ref="#PWR?"  Part="1" 
AR Path="/5F629530/5F651BAD" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7200 3200 50  0001 C CNN
F 1 "GND" V 7205 3322 50  0000 R CNN
F 2 "" H 7200 3450 50  0001 C CNN
F 3 "" H 7200 3450 50  0001 C CNN
	1    7200 3450
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5F651BB3
P 6900 3350
AR Path="/5ED2705B/5F651BB3" Ref="#PWR?"  Part="1" 
AR Path="/609EB802/5F651BB3" Ref="#PWR?"  Part="1" 
AR Path="/5F3A2F3D/5F651BB3" Ref="#PWR?"  Part="1" 
AR Path="/5F629530/5F651BB3" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6900 3200 50  0001 C CNN
F 1 "+5V" H 6750 3450 50  0000 C CNN
F 2 "" H 6900 3350 50  0001 C CNN
F 3 "" H 6900 3350 50  0001 C CNN
	1    6900 3350
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC245 U?
U 1 1 5F651BB9
P 6900 4350
AR Path="/5ED2705B/5F651BB9" Ref="U?"  Part="1" 
AR Path="/609EB802/5F651BB9" Ref="U?"  Part="1" 
AR Path="/5F3A2F3D/5F651BB9" Ref="U?"  Part="1" 
AR Path="/5F629530/5F651BB9" Ref="U?"  Part="1" 
F 0 "U?" H 7000 5100 50  0000 C CNN
F 1 "74HC245" H 7100 5000 50  0000 C CNN
F 2 "Package_SO:SSOP-20_5.3x7.2mm_P0.65mm" H 6900 4350 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HC245" H 6900 4350 50  0001 C CNN
	1    6900 4350
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5F651BBF
P 6300 4750
AR Path="/5ED2705B/5F651BBF" Ref="#PWR?"  Part="1" 
AR Path="/609EB802/5F651BBF" Ref="#PWR?"  Part="1" 
AR Path="/5F3A2F3D/5F651BBF" Ref="#PWR?"  Part="1" 
AR Path="/5F629530/5F651BBF" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6300 4600 50  0001 C CNN
F 1 "+5V" H 6300 4900 50  0000 C CNN
F 2 "" H 6300 4750 50  0001 C CNN
F 3 "" H 6300 4750 50  0001 C CNN
	1    6300 4750
	0    -1   -1   0   
$EndComp
Entry Wire Line
	7650 4550 7750 4650
Entry Wire Line
	7650 4450 7750 4550
Entry Wire Line
	7650 4350 7750 4450
Entry Wire Line
	7650 4250 7750 4350
Entry Wire Line
	7650 4150 7750 4250
Entry Wire Line
	7650 4050 7750 4150
Entry Wire Line
	7650 3950 7750 4050
Entry Wire Line
	7650 3850 7750 3950
$Comp
L Device:C_Small C?
U 1 1 5F651BD6
P 7050 3450
AR Path="/5ED2705B/5F651BD6" Ref="C?"  Part="1" 
AR Path="/609EB802/5F651BD6" Ref="C?"  Part="1" 
AR Path="/5F3A2F3D/5F651BD6" Ref="C?"  Part="1" 
AR Path="/5F629530/5F651BD6" Ref="C?"  Part="1" 
F 0 "C?" V 6821 3450 50  0000 C CNN
F 1 "0u1" V 6912 3450 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 7050 3450 50  0001 C CNN
F 3 "~" H 7050 3450 50  0001 C CNN
	1    7050 3450
	0    1    1    0   
$EndComp
Wire Wire Line
	7400 1700 7650 1700
Wire Wire Line
	7400 1800 7650 1800
Wire Wire Line
	7400 1900 7650 1900
Wire Wire Line
	7400 2000 7650 2000
Wire Wire Line
	7400 2100 7650 2100
Wire Wire Line
	7400 2200 7650 2200
Wire Wire Line
	7400 2300 7650 2300
Wire Wire Line
	7400 2400 7650 2400
Wire Wire Line
	7400 3850 7650 3850
Wire Wire Line
	7400 3950 7650 3950
Wire Wire Line
	7400 4050 7650 4050
Wire Wire Line
	7400 4150 7650 4150
Wire Wire Line
	7400 4250 7650 4250
Wire Wire Line
	7400 4350 7650 4350
Wire Wire Line
	7400 4450 7650 4450
Wire Wire Line
	7400 4550 7650 4550
Text Label 7650 1700 2    50   ~ 0
OpB0
Text Label 7650 1800 2    50   ~ 0
OpB1
Text Label 7650 1900 2    50   ~ 0
OpB2
Text Label 7650 2000 2    50   ~ 0
OpB3
Text Label 7650 2100 2    50   ~ 0
OpB4
Text Label 7650 2200 2    50   ~ 0
OpB5
Text Label 7650 2300 2    50   ~ 0
OpB6
Text Label 7650 2400 2    50   ~ 0
OpB7
Text Label 7650 3850 2    50   ~ 0
OpB0
Text Label 7650 3950 2    50   ~ 0
OpB1
Text Label 7650 4050 2    50   ~ 0
OpB2
Text Label 7650 4150 2    50   ~ 0
OpB3
Text Label 7650 4250 2    50   ~ 0
OpB4
Text Label 7650 4350 2    50   ~ 0
OpB5
Text Label 7650 4450 2    50   ~ 0
OpB6
Text Label 7650 4550 2    50   ~ 0
OpB7
Wire Bus Line
	7750 5250 8150 5250
Text HLabel 8150 5250 2    50   Output ~ 0
OpB[0..7]
Wire Wire Line
	5850 1700 6400 1700
Wire Wire Line
	5850 1800 6400 1800
Wire Wire Line
	5850 1900 6400 1900
Wire Wire Line
	5850 2000 6400 2000
Wire Wire Line
	5850 2100 6400 2100
Wire Wire Line
	5850 2200 6400 2200
Wire Wire Line
	5850 2300 6400 2300
Wire Wire Line
	5850 2400 6400 2400
Wire Wire Line
	5250 3850 6400 3850
Wire Wire Line
	5250 3950 6400 3950
Wire Wire Line
	5250 4050 6400 4050
Wire Wire Line
	5250 4150 6400 4150
Wire Wire Line
	5250 4250 6400 4250
Wire Wire Line
	5250 4350 6400 4350
Wire Wire Line
	5250 4450 6400 4450
Wire Wire Line
	5250 4550 6400 4550
Wire Wire Line
	5050 6000 5050 5900
Wire Wire Line
	5100 5900 5050 5900
Connection ~ 5050 5900
Wire Wire Line
	5050 5900 5050 5850
Wire Wire Line
	5350 5900 5300 5900
Wire Wire Line
	5050 6300 5050 6200
$Comp
L power:+5V #PWR?
U 1 1 5F6D357E
P 5050 5850
AR Path="/5ED2705B/5F6D357E" Ref="#PWR?"  Part="1" 
AR Path="/5F1CE57C/5F6D357E" Ref="#PWR?"  Part="1" 
AR Path="/609EB802/5F6D357E" Ref="#PWR?"  Part="1" 
AR Path="/5F3A2F3D/5F6D357E" Ref="#PWR?"  Part="1" 
AR Path="/5F629530/5F6D357E" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5050 5700 50  0001 C CNN
F 1 "+5V" H 5065 6023 50  0000 C CNN
F 2 "" H 5050 5850 50  0001 C CNN
F 3 "" H 5050 5850 50  0001 C CNN
	1    5050 5850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F6D3584
P 5350 5900
AR Path="/5ED2705B/5F6D3584" Ref="#PWR?"  Part="1" 
AR Path="/5F1CE57C/5F6D3584" Ref="#PWR?"  Part="1" 
AR Path="/609EB802/5F6D3584" Ref="#PWR?"  Part="1" 
AR Path="/5F3A2F3D/5F6D3584" Ref="#PWR?"  Part="1" 
AR Path="/5F629530/5F6D3584" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5350 5650 50  0001 C CNN
F 1 "GND" V 5355 5772 50  0000 R CNN
F 2 "" H 5350 5900 50  0001 C CNN
F 3 "" H 5350 5900 50  0001 C CNN
	1    5350 5900
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F6D358A
P 5050 6300
AR Path="/5ED2705B/5F6D358A" Ref="#PWR?"  Part="1" 
AR Path="/5F1CE57C/5F6D358A" Ref="#PWR?"  Part="1" 
AR Path="/609EB802/5F6D358A" Ref="#PWR?"  Part="1" 
AR Path="/5F3A2F3D/5F6D358A" Ref="#PWR?"  Part="1" 
AR Path="/5F629530/5F6D358A" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5050 6050 50  0001 C CNN
F 1 "GND" H 5055 6127 50  0000 C CNN
F 2 "" H 5050 6300 50  0001 C CNN
F 3 "" H 5050 6300 50  0001 C CNN
	1    5050 6300
	1    0    0    -1  
$EndComp
$Comp
L 74xGxx:74LVC1G04 U?
U 1 1 5F6D3591
P 5050 6100
AR Path="/5ED2705B/5F6D3591" Ref="U?"  Part="1" 
AR Path="/5F1CE57C/5F6D3591" Ref="U?"  Part="1" 
AR Path="/609EB802/5F6D3591" Ref="U?"  Part="1" 
AR Path="/5F3A2F3D/5F6D3591" Ref="U?"  Part="1" 
AR Path="/5F629530/5F6D3591" Ref="U?"  Part="1" 
F 0 "U?" H 5150 5900 50  0000 C CNN
F 1 "74LVC1G04" H 5300 6000 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-353_SC-70-5" H 5050 6100 50  0001 C CNN
F 3 "http://www.ti.com/lit/sg/scyt129e/scyt129e.pdf" H 5050 6100 50  0001 C CNN
	1    5050 6100
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5F6D3597
P 5200 5900
AR Path="/5ED2705B/5F6D3597" Ref="C?"  Part="1" 
AR Path="/5F1CE57C/5F6D3597" Ref="C?"  Part="1" 
AR Path="/609EB802/5F6D3597" Ref="C?"  Part="1" 
AR Path="/5F3A2F3D/5F6D3597" Ref="C?"  Part="1" 
AR Path="/5F629530/5F6D3597" Ref="C?"  Part="1" 
F 0 "C?" V 5300 6000 50  0000 C CNN
F 1 "0u1" V 5150 6000 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5200 5900 50  0001 C CNN
F 3 "~" H 5200 5900 50  0001 C CNN
	1    5200 5900
	0    1    1    0   
$EndComp
$Sheet
S 2600 5600 700  200 
U 5F6D359A
F0 "LED: OpB is Inst" 50
F1 "1BitLED.sch" 50
F2 "VAL" I R 3300 5700 50 
$EndSheet
Wire Wire Line
	3850 5350 3850 5700
Wire Wire Line
	3850 6100 4750 6100
Wire Wire Line
	3850 5350 5050 5350
Wire Wire Line
	3300 5700 3850 5700
Connection ~ 3850 5700
Wire Wire Line
	3850 5700 3850 6100
$Sheet
S 5000 6950 700  200 
U 5F6EC8C4
F0 "LED: OpB is RegB" 50
F1 "1BitLED.sch" 50
F2 "VAL" I R 5700 7050 50 
$EndSheet
Wire Wire Line
	5700 7050 6250 7050
Wire Wire Line
	6250 7050 6250 6100
Wire Wire Line
	6250 6100 5900 6100
Wire Wire Line
	6400 4850 5900 4850
Wire Wire Line
	5900 4850 5900 6100
Connection ~ 5900 6100
Wire Wire Line
	5900 6100 5300 6100
Wire Wire Line
	3850 5350 3850 2700
Wire Wire Line
	3850 2700 6400 2700
Wire Bus Line
	5750 1500 5750 2300
Wire Bus Line
	5150 3700 5150 5250
Wire Bus Line
	7750 1800 7750 5250
Connection ~ 3850 5350
$EndSCHEMATC
