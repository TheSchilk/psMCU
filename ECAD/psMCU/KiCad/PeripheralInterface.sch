EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 41 97
Title "psMCU"
Date "2021-05-31"
Rev "v1.0"
Comp "Philipp Schilk"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 "Peripheral Connector. Also pre-filters RAMA addresses for peripherals."
$EndDescr
Text HLabel 10100 3000 2    50   3State ~ 0
DB[0..7]
Text HLabel 9900 1950 2    50   Input ~ 0
CLK
Text HLabel 2500 2700 0    50   Input ~ 0
RAM_Sync_D_A
Text HLabel 2500 3600 0    50   Input ~ 0
RAM_W
Text HLabel 2500 4500 0    50   Input ~ 0
RAM_R_Sync_A
$Comp
L 74xGxx:74LVC1G08 U?
U 1 1 5FD41C76
P 3050 2750
AR Path="/5F1CE57C/5FD41C76" Ref="U?"  Part="1" 
AR Path="/5ED3C49A/5FD41C76" Ref="U?"  Part="1" 
AR Path="/5FD1E173/5FD41C76" Ref="U349"  Part="1" 
F 0 "U349" H 3250 2650 50  0000 C CNN
F 1 "SN74LVC1G08DCK" H 3500 2550 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-353_SC-70-5" H 3050 2750 50  0001 C CNN
F 3 "http://www.ti.com/lit/sg/scyt129e/scyt129e.pdf" H 3050 2750 50  0001 C CNN
	1    3050 2750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FD41C7C
P 3050 2950
AR Path="/5ED2705B/5FD41C7C" Ref="#PWR?"  Part="1" 
AR Path="/5F1CE57C/5FD41C7C" Ref="#PWR?"  Part="1" 
AR Path="/5ED3C49A/5FD41C7C" Ref="#PWR?"  Part="1" 
AR Path="/5FD1E173/5FD41C7C" Ref="#PWR01529"  Part="1" 
F 0 "#PWR01529" H 3050 2700 50  0001 C CNN
F 1 "GND" H 3055 2777 50  0000 C CNN
F 2 "" H 3050 2950 50  0001 C CNN
F 3 "" H 3050 2950 50  0001 C CNN
	1    3050 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 2950 3050 2850
Wire Wire Line
	3050 2650 3050 2550
$Comp
L power:+5V #PWR?
U 1 1 5FD41C84
P 3050 2500
AR Path="/5ED2705B/5FD41C84" Ref="#PWR?"  Part="1" 
AR Path="/5F1CE57C/5FD41C84" Ref="#PWR?"  Part="1" 
AR Path="/5ED3C49A/5FD41C84" Ref="#PWR?"  Part="1" 
AR Path="/5FD1E173/5FD41C84" Ref="#PWR01528"  Part="1" 
F 0 "#PWR01528" H 3050 2350 50  0001 C CNN
F 1 "+5V" H 2992 2537 50  0000 R CNN
F 2 "" H 3050 2500 50  0001 C CNN
F 3 "" H 3050 2500 50  0001 C CNN
	1    3050 2500
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5FD41C8A
P 3200 2550
AR Path="/5ED2705B/5FD41C8A" Ref="C?"  Part="1" 
AR Path="/5F1CE57C/5FD41C8A" Ref="C?"  Part="1" 
AR Path="/5ED3C49A/5FD41C8A" Ref="C?"  Part="1" 
AR Path="/5FD1E173/5FD41C8A" Ref="C365"  Part="1" 
F 0 "C365" V 2971 2550 50  0000 C CNN
F 1 "0u1" V 3062 2550 50  0000 C CNN
F 2 "NoRef_Footprints:C_0603_1608Metric_NoRef" H 3200 2550 50  0001 C CNN
F 3 "~" H 3200 2550 50  0001 C CNN
	1    3200 2550
	0    1    1    0   
$EndComp
Wire Wire Line
	3100 2550 3050 2550
Connection ~ 3050 2550
Wire Wire Line
	3050 2550 3050 2500
$Comp
L power:GND #PWR?
U 1 1 5FD41C93
P 3350 2550
AR Path="/5ED2705B/5FD41C93" Ref="#PWR?"  Part="1" 
AR Path="/5F1CE57C/5FD41C93" Ref="#PWR?"  Part="1" 
AR Path="/5ED3C49A/5FD41C93" Ref="#PWR?"  Part="1" 
AR Path="/5FD1E173/5FD41C93" Ref="#PWR01534"  Part="1" 
F 0 "#PWR01534" H 3350 2300 50  0001 C CNN
F 1 "GND" V 3355 2422 50  0000 R CNN
F 2 "" H 3350 2550 50  0001 C CNN
F 3 "" H 3350 2550 50  0001 C CNN
	1    3350 2550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3350 2550 3300 2550
$Comp
L 74xGxx:74LVC1G08 U?
U 1 1 5FD41C9A
P 3050 3650
AR Path="/5F1CE57C/5FD41C9A" Ref="U?"  Part="1" 
AR Path="/5ED3C49A/5FD41C9A" Ref="U?"  Part="1" 
AR Path="/5FD1E173/5FD41C9A" Ref="U350"  Part="1" 
F 0 "U350" H 3250 3550 50  0000 C CNN
F 1 "SN74LVC1G08DCK" H 3500 3450 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-353_SC-70-5" H 3050 3650 50  0001 C CNN
F 3 "http://www.ti.com/lit/sg/scyt129e/scyt129e.pdf" H 3050 3650 50  0001 C CNN
	1    3050 3650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FD41CA0
P 3050 3850
AR Path="/5ED2705B/5FD41CA0" Ref="#PWR?"  Part="1" 
AR Path="/5F1CE57C/5FD41CA0" Ref="#PWR?"  Part="1" 
AR Path="/5ED3C49A/5FD41CA0" Ref="#PWR?"  Part="1" 
AR Path="/5FD1E173/5FD41CA0" Ref="#PWR01531"  Part="1" 
F 0 "#PWR01531" H 3050 3600 50  0001 C CNN
F 1 "GND" H 3055 3677 50  0000 C CNN
F 2 "" H 3050 3850 50  0001 C CNN
F 3 "" H 3050 3850 50  0001 C CNN
	1    3050 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 3850 3050 3750
Wire Wire Line
	3050 3550 3050 3450
$Comp
L power:+5V #PWR?
U 1 1 5FD41CA8
P 3050 3400
AR Path="/5ED2705B/5FD41CA8" Ref="#PWR?"  Part="1" 
AR Path="/5F1CE57C/5FD41CA8" Ref="#PWR?"  Part="1" 
AR Path="/5ED3C49A/5FD41CA8" Ref="#PWR?"  Part="1" 
AR Path="/5FD1E173/5FD41CA8" Ref="#PWR01530"  Part="1" 
F 0 "#PWR01530" H 3050 3250 50  0001 C CNN
F 1 "+5V" H 2992 3437 50  0000 R CNN
F 2 "" H 3050 3400 50  0001 C CNN
F 3 "" H 3050 3400 50  0001 C CNN
	1    3050 3400
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5FD41CAE
P 3200 3450
AR Path="/5ED2705B/5FD41CAE" Ref="C?"  Part="1" 
AR Path="/5F1CE57C/5FD41CAE" Ref="C?"  Part="1" 
AR Path="/5ED3C49A/5FD41CAE" Ref="C?"  Part="1" 
AR Path="/5FD1E173/5FD41CAE" Ref="C366"  Part="1" 
F 0 "C366" V 2971 3450 50  0000 C CNN
F 1 "0u1" V 3062 3450 50  0000 C CNN
F 2 "NoRef_Footprints:C_0603_1608Metric_NoRef" H 3200 3450 50  0001 C CNN
F 3 "~" H 3200 3450 50  0001 C CNN
	1    3200 3450
	0    1    1    0   
$EndComp
Wire Wire Line
	3100 3450 3050 3450
Connection ~ 3050 3450
Wire Wire Line
	3050 3450 3050 3400
$Comp
L power:GND #PWR?
U 1 1 5FD41CB7
P 3350 3450
AR Path="/5ED2705B/5FD41CB7" Ref="#PWR?"  Part="1" 
AR Path="/5F1CE57C/5FD41CB7" Ref="#PWR?"  Part="1" 
AR Path="/5ED3C49A/5FD41CB7" Ref="#PWR?"  Part="1" 
AR Path="/5FD1E173/5FD41CB7" Ref="#PWR01535"  Part="1" 
F 0 "#PWR01535" H 3350 3200 50  0001 C CNN
F 1 "GND" V 3355 3322 50  0000 R CNN
F 2 "" H 3350 3450 50  0001 C CNN
F 3 "" H 3350 3450 50  0001 C CNN
	1    3350 3450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3350 3450 3300 3450
$Comp
L 74xGxx:74LVC1G08 U?
U 1 1 5FD41CBE
P 3050 4550
AR Path="/5F1CE57C/5FD41CBE" Ref="U?"  Part="1" 
AR Path="/5ED3C49A/5FD41CBE" Ref="U?"  Part="1" 
AR Path="/5FD1E173/5FD41CBE" Ref="U351"  Part="1" 
F 0 "U351" H 3250 4450 50  0000 C CNN
F 1 "SN74LVC1G08DCK" H 3500 4350 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-353_SC-70-5" H 3050 4550 50  0001 C CNN
F 3 "http://www.ti.com/lit/sg/scyt129e/scyt129e.pdf" H 3050 4550 50  0001 C CNN
	1    3050 4550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FD41CC4
P 3050 4750
AR Path="/5ED2705B/5FD41CC4" Ref="#PWR?"  Part="1" 
AR Path="/5F1CE57C/5FD41CC4" Ref="#PWR?"  Part="1" 
AR Path="/5ED3C49A/5FD41CC4" Ref="#PWR?"  Part="1" 
AR Path="/5FD1E173/5FD41CC4" Ref="#PWR01533"  Part="1" 
F 0 "#PWR01533" H 3050 4500 50  0001 C CNN
F 1 "GND" H 3055 4577 50  0000 C CNN
F 2 "" H 3050 4750 50  0001 C CNN
F 3 "" H 3050 4750 50  0001 C CNN
	1    3050 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 4750 3050 4650
Wire Wire Line
	3050 4450 3050 4350
$Comp
L power:+5V #PWR?
U 1 1 5FD41CCC
P 3050 4300
AR Path="/5ED2705B/5FD41CCC" Ref="#PWR?"  Part="1" 
AR Path="/5F1CE57C/5FD41CCC" Ref="#PWR?"  Part="1" 
AR Path="/5ED3C49A/5FD41CCC" Ref="#PWR?"  Part="1" 
AR Path="/5FD1E173/5FD41CCC" Ref="#PWR01532"  Part="1" 
F 0 "#PWR01532" H 3050 4150 50  0001 C CNN
F 1 "+5V" H 2992 4337 50  0000 R CNN
F 2 "" H 3050 4300 50  0001 C CNN
F 3 "" H 3050 4300 50  0001 C CNN
	1    3050 4300
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5FD41CD2
P 3200 4350
AR Path="/5ED2705B/5FD41CD2" Ref="C?"  Part="1" 
AR Path="/5F1CE57C/5FD41CD2" Ref="C?"  Part="1" 
AR Path="/5ED3C49A/5FD41CD2" Ref="C?"  Part="1" 
AR Path="/5FD1E173/5FD41CD2" Ref="C367"  Part="1" 
F 0 "C367" V 2971 4350 50  0000 C CNN
F 1 "0u1" V 3062 4350 50  0000 C CNN
F 2 "NoRef_Footprints:C_0603_1608Metric_NoRef" H 3200 4350 50  0001 C CNN
F 3 "~" H 3200 4350 50  0001 C CNN
	1    3200 4350
	0    1    1    0   
$EndComp
Wire Wire Line
	3100 4350 3050 4350
Connection ~ 3050 4350
Wire Wire Line
	3050 4350 3050 4300
$Comp
L power:GND #PWR?
U 1 1 5FD41CDB
P 3350 4350
AR Path="/5ED2705B/5FD41CDB" Ref="#PWR?"  Part="1" 
AR Path="/5F1CE57C/5FD41CDB" Ref="#PWR?"  Part="1" 
AR Path="/5ED3C49A/5FD41CDB" Ref="#PWR?"  Part="1" 
AR Path="/5FD1E173/5FD41CDB" Ref="#PWR01536"  Part="1" 
F 0 "#PWR01536" H 3350 4100 50  0001 C CNN
F 1 "GND" V 3355 4222 50  0000 R CNN
F 2 "" H 3350 4350 50  0001 C CNN
F 3 "" H 3350 4350 50  0001 C CNN
	1    3350 4350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3350 4350 3300 4350
Wire Wire Line
	2600 2800 2750 2800
Wire Wire Line
	2600 2800 2600 3700
Wire Wire Line
	2600 3700 2750 3700
Connection ~ 2600 2800
Wire Wire Line
	2600 3700 2600 4600
Wire Wire Line
	2600 4600 2750 4600
Connection ~ 2600 3700
Wire Wire Line
	2500 2700 2750 2700
Wire Wire Line
	2500 3600 2750 3600
Wire Wire Line
	2500 4500 2750 4500
Wire Wire Line
	4500 4550 3300 4550
Wire Wire Line
	4450 3650 3300 3650
Text HLabel 9900 1850 2    50   3State ~ 0
DB_OUT
Text HLabel 4450 3650 2    50   Output ~ 0
Periph_W
Text HLabel 1950 800  0    50   BiDi ~ 0
RAMA[0..8]
Entry Wire Line
	2100 800  2200 900 
Entry Wire Line
	2100 900  2200 1000
Entry Wire Line
	2100 1000 2200 1100
Entry Wire Line
	2100 1100 2200 1200
Entry Wire Line
	2100 1200 2200 1300
Entry Wire Line
	2100 1300 2200 1400
Entry Wire Line
	2100 1400 2200 1500
Wire Bus Line
	2100 800  1950 800 
Entry Wire Line
	2100 1500 2200 1600
Text Label 2200 900  0    50   ~ 0
RAMA0
Text Label 2200 1000 0    50   ~ 0
RAMA1
Text Label 2200 1100 0    50   ~ 0
RAMA2
Text Label 2200 1200 0    50   ~ 0
RAMA3
Text Label 2200 1300 0    50   ~ 0
RAMA4
Text Label 2200 1400 0    50   ~ 0
RAMA5
Text Label 2200 1500 0    50   ~ 0
RAMA6
Text Label 2200 1600 0    50   ~ 0
RAMA7
Entry Wire Line
	2900 900  3000 1000
Entry Wire Line
	2900 1000 3000 1100
Entry Wire Line
	2900 1100 3000 1200
Entry Wire Line
	2900 1200 3000 1300
Entry Wire Line
	2900 1300 3000 1400
Entry Wire Line
	2900 1400 3000 1500
Entry Wire Line
	2900 1500 3000 1600
Entry Wire Line
	2900 1600 3000 1700
Entry Wire Line
	2100 1600 2200 1700
Text Label 2200 1700 0    50   ~ 0
RAMA8
Wire Wire Line
	2600 1700 2600 2800
Wire Wire Line
	2200 1700 2600 1700
Text HLabel 3850 800  2    50   Output ~ 0
PeriphA[0..7]
Wire Bus Line
	3000 800  3850 800 
$Comp
L Connector_Generic:Conn_02x15_Odd_Even J6
U 1 1 6012B19C
P 8750 2150
F 0 "J6" V 8800 3000 50  0000 C CNN
F 1 "PERIPH_INTERFACE" V 8700 3300 50  0000 C CNN
F 2 "Connector_IDC:IDC-Header_2x15_P2.54mm_Vertical" H 8750 2150 50  0001 C CNN
F 3 "~" H 8750 2150 50  0001 C CNN
	1    8750 2150
	1    0    0    -1  
$EndComp
Text Label 4050 2750 2    50   ~ 0
Periph_Sync_D_A
Text Label 3350 3650 0    50   ~ 0
Periph_W
Text Label 3350 4550 0    50   ~ 0
Periph_R
Entry Wire Line
	7500 1450 7600 1550
Entry Wire Line
	7500 1550 7600 1650
Entry Wire Line
	7500 1650 7600 1750
Entry Wire Line
	7500 1750 7600 1850
Entry Wire Line
	7500 1850 7600 1950
Entry Wire Line
	7500 1950 7600 2050
Entry Wire Line
	7500 2050 7600 2150
Entry Wire Line
	7500 2150 7600 2250
Wire Bus Line
	6900 1300 7500 1300
Text Label 6900 1300 0    50   ~ 0
PeriphA[0..7]
Text HLabel 9900 1650 2    50   Input ~ 0
Int_Active
Text HLabel 9900 1750 2    50   BiDi ~ 0
Int_Assert
Text HLabel 9900 1550 2    50   Input ~ 0
Int_EN
Wire Wire Line
	9050 2150 9800 2150
Wire Wire Line
	9050 2250 9800 2250
Wire Wire Line
	9050 2350 9800 2350
Wire Wire Line
	9050 2450 9800 2450
Wire Wire Line
	9050 2550 9800 2550
Wire Wire Line
	9050 2650 9800 2650
Wire Wire Line
	9050 2750 9800 2750
Entry Wire Line
	9800 2050 9900 2150
Entry Wire Line
	9800 2150 9900 2250
Entry Wire Line
	9800 2250 9900 2350
Entry Wire Line
	9800 2350 9900 2450
Entry Wire Line
	9800 2450 9900 2550
Entry Wire Line
	9800 2550 9900 2650
Entry Wire Line
	9800 2650 9900 2750
Entry Wire Line
	9800 2750 9900 2850
Text Label 9800 2050 2    50   ~ 0
DB0
Text Label 9800 2150 2    50   ~ 0
DB1
Text Label 9800 2250 2    50   ~ 0
DB2
Text Label 9800 2350 2    50   ~ 0
DB3
Text Label 9800 2450 2    50   ~ 0
DB4
Text Label 9800 2550 2    50   ~ 0
DB5
Text Label 9800 2650 2    50   ~ 0
DB6
Text Label 9800 2750 2    50   ~ 0
DB7
Wire Bus Line
	9900 3000 10100 3000
$Comp
L power:+5V #PWR01537
U 1 1 601B8799
P 8500 1400
F 0 "#PWR01537" H 8500 1250 50  0001 C CNN
F 1 "+5V" H 8515 1573 50  0000 C CNN
F 2 "" H 8500 1400 50  0001 C CNN
F 3 "" H 8500 1400 50  0001 C CNN
	1    8500 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	8500 1400 8500 1450
Wire Wire Line
	8500 1450 8550 1450
$Comp
L power:+5V #PWR01541
U 1 1 601BA77E
P 9100 1400
F 0 "#PWR01541" H 9100 1250 50  0001 C CNN
F 1 "+5V" H 9115 1573 50  0000 C CNN
F 2 "" H 9100 1400 50  0001 C CNN
F 3 "" H 9100 1400 50  0001 C CNN
	1    9100 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	9100 1400 9100 1450
Wire Wire Line
	9100 1450 9050 1450
Wire Wire Line
	8550 2750 8500 2750
Wire Wire Line
	8500 2750 8500 2850
Wire Wire Line
	8500 2850 8550 2850
Wire Wire Line
	8500 2850 8500 2950
Connection ~ 8500 2850
Wire Wire Line
	9050 2850 9100 2850
Wire Wire Line
	9100 2850 9100 2950
$Comp
L power:GND #PWR01542
U 1 1 601E6B8A
P 9100 2950
F 0 "#PWR01542" H 9100 2700 50  0001 C CNN
F 1 "GND" H 9105 2777 50  0000 C CNN
F 2 "" H 9100 2950 50  0001 C CNN
F 3 "" H 9100 2950 50  0001 C CNN
	1    9100 2950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01538
U 1 1 601E7F01
P 8500 2950
F 0 "#PWR01538" H 8500 2700 50  0001 C CNN
F 1 "GND" H 8505 2777 50  0000 C CNN
F 2 "" H 8500 2950 50  0001 C CNN
F 3 "" H 8500 2950 50  0001 C CNN
	1    8500 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	9050 1550 9900 1550
Wire Wire Line
	9050 1650 9900 1650
Wire Wire Line
	9050 1750 9900 1750
Wire Wire Line
	9050 1850 9900 1850
Wire Wire Line
	9050 1950 9900 1950
Wire Wire Line
	9050 2050 9800 2050
Text HLabel 7600 2350 0    50   Input ~ 0
~RESET
Wire Wire Line
	7600 2350 8550 2350
Text HLabel 4500 4550 2    50   Output ~ 0
Periph_R_Sync_A
Text Label 7600 2450 0    50   ~ 0
Periph_Sync_D_A
Text Label 7600 2550 0    50   ~ 0
Periph_W
Text Label 7600 2650 0    50   ~ 0
Periph_R
Wire Wire Line
	7600 2450 8550 2450
Wire Wire Line
	7600 2550 8550 2550
Wire Wire Line
	7600 2650 8550 2650
Text Label 3150 800  0    50   ~ 0
PeriphA[0..7]
Wire Wire Line
	2200 900  2900 900 
Wire Wire Line
	2200 1000 2900 1000
Wire Wire Line
	2200 1100 2900 1100
Wire Wire Line
	2200 1200 2900 1200
Wire Wire Line
	2200 1300 2900 1300
Wire Wire Line
	2200 1400 2900 1400
Wire Wire Line
	2200 1500 2900 1500
Wire Wire Line
	2200 1600 2900 1600
Text Label 2900 900  2    50   ~ 0
PeriphA0
Text Label 2900 1000 2    50   ~ 0
PeriphA1
Text Label 2900 1100 2    50   ~ 0
PeriphA2
Text Label 2900 1200 2    50   ~ 0
PeriphA3
Text Label 2900 1300 2    50   ~ 0
PeriphA4
Text Label 2900 1400 2    50   ~ 0
PeriphA5
Text Label 2900 1500 2    50   ~ 0
PeriphA6
Text Label 2900 1600 2    50   ~ 0
PeriphA7
Text Label 7600 1550 0    50   ~ 0
PeriphA0
Text Label 7600 1650 0    50   ~ 0
PeriphA1
Text Label 7600 1750 0    50   ~ 0
PeriphA2
Text Label 7600 1850 0    50   ~ 0
PeriphA3
Text Label 7600 1950 0    50   ~ 0
PeriphA4
Text Label 7600 2050 0    50   ~ 0
PeriphA5
Text Label 7600 2150 0    50   ~ 0
PeriphA6
Text Label 7600 2250 0    50   ~ 0
PeriphA7
Wire Wire Line
	7600 1550 8550 1550
Wire Wire Line
	7600 1650 8550 1650
Wire Wire Line
	7600 1750 8550 1750
Wire Wire Line
	7600 1850 8550 1850
Wire Wire Line
	7600 1950 8550 1950
Wire Wire Line
	7600 2050 8550 2050
Wire Wire Line
	7600 2150 8550 2150
Wire Wire Line
	7600 2250 8550 2250
Wire Wire Line
	3300 2750 4050 2750
Wire Bus Line
	7500 1300 7500 2150
Wire Bus Line
	3000 800  3000 1700
Wire Bus Line
	2100 800  2100 1600
Wire Bus Line
	9900 2150 9900 3000
$EndSCHEMATC
