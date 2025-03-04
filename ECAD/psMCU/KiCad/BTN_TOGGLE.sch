EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 72 97
Title "psMCU"
Date "2021-05-31"
Rev "v1.0"
Comp "Philipp Schilk"
Comment1 ""
Comment2 "to be set by jumpers"
Comment3 "from an external remote control. Allows for the default state during power-on"
Comment4 "A button that toggles a state on/off. Handles de-bounce and combines the signal"
$EndDescr
$Comp
L Switch:SW_Push SW?
U 1 1 5FEDE52F
P 2050 3500
AR Path="/60E33DBC/5F3D6AE0/5FEDE52F" Ref="SW?"  Part="1" 
AR Path="/608BF85D/608BF87D/5FEDE52F" Ref="SW?"  Part="1" 
AR Path="/5FD4EE20/5FD4A0FE/5FEDE52F" Ref="SW?"  Part="1" 
AR Path="/5FD4EE20/5FEDE52F" Ref="SW?"  Part="1" 
AR Path="/5FD4EE20/5FEB2E89/5FEDE52F" Ref="SW3"  Part="1" 
AR Path="/5FD4EE20/5FF01B4B/5FEDE52F" Ref="SW?"  Part="1" 
AR Path="/5FD4EE20/5FF2C575/5FEDE52F" Ref="SW5"  Part="1" 
F 0 "SW3" V 2096 3452 50  0000 R CNN
F 1 "Btn" V 2005 3452 50  0000 R CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 2050 3700 50  0001 C CNN
F 3 "~" H 2050 3700 50  0001 C CNN
	1    2050 3500
	0    -1   -1   0   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5FEDE535
P 2500 3950
AR Path="/60E33DBC/5F3D6AE0/5FEDE535" Ref="C?"  Part="1" 
AR Path="/608BF85D/608BF87D/5FEDE535" Ref="C?"  Part="1" 
AR Path="/5FD4EE20/5FD4A0FE/5FEDE535" Ref="C?"  Part="1" 
AR Path="/5FD4EE20/5FEDE535" Ref="C?"  Part="1" 
AR Path="/5FD4EE20/5FEB2E89/5FEDE535" Ref="C285"  Part="1" 
AR Path="/5FD4EE20/5FF01B4B/5FEDE535" Ref="C?"  Part="1" 
AR Path="/5FD4EE20/5FF2C575/5FEDE535" Ref="C294"  Part="1" 
AR Path="/5FD65262/5FEDE535" Ref="C285"  Part="1" 
F 0 "C285" H 2592 3996 50  0000 L CNN
F 1 "0u1" H 2592 3905 50  0000 L CNN
F 2 "NoRef_Footprints:C_0603_1608Metric_NoRef" H 2500 3950 50  0001 C CNN
F 3 "~" H 2500 3950 50  0001 C CNN
	1    2500 3950
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5FEDE53B
P 2300 3750
AR Path="/60E33DBC/5F3D6AE0/5FEDE53B" Ref="R?"  Part="1" 
AR Path="/608BF85D/608BF87D/5FEDE53B" Ref="R?"  Part="1" 
AR Path="/5FD4EE20/5FD4A0FE/5FEDE53B" Ref="R?"  Part="1" 
AR Path="/5FD4EE20/5FEDE53B" Ref="R?"  Part="1" 
AR Path="/5FD4EE20/5FEB2E89/5FEDE53B" Ref="R377"  Part="1" 
AR Path="/5FD4EE20/5FF01B4B/5FEDE53B" Ref="R?"  Part="1" 
AR Path="/5FD4EE20/5FF2C575/5FEDE53B" Ref="R383"  Part="1" 
F 0 "R377" V 2404 3750 50  0000 C CNN
F 1 "10K" V 2495 3750 50  0000 C CNN
F 2 "NoRef_Footprints:R_0603_1608Metric_NoRef" H 2300 3750 50  0001 C CNN
F 3 "~" H 2300 3750 50  0001 C CNN
	1    2300 3750
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5FEDE541
P 2050 3950
AR Path="/60E33DBC/5F3D6AE0/5FEDE541" Ref="R?"  Part="1" 
AR Path="/608BF85D/608BF87D/5FEDE541" Ref="R?"  Part="1" 
AR Path="/5FD4EE20/5FD4A0FE/5FEDE541" Ref="R?"  Part="1" 
AR Path="/5FD4EE20/5FEDE541" Ref="R?"  Part="1" 
AR Path="/5FD4EE20/5FEB2E89/5FEDE541" Ref="R376"  Part="1" 
AR Path="/5FD4EE20/5FF01B4B/5FEDE541" Ref="R?"  Part="1" 
AR Path="/5FD4EE20/5FF2C575/5FEDE541" Ref="R382"  Part="1" 
F 0 "R376" H 2108 3904 50  0000 L CNN
F 1 "1K" H 2108 3995 50  0000 L CNN
F 2 "NoRef_Footprints:R_0603_1608Metric_NoRef" H 2050 3950 50  0001 C CNN
F 3 "~" H 2050 3950 50  0001 C CNN
	1    2050 3950
	-1   0    0    1   
$EndComp
Wire Wire Line
	2500 4050 2500 4100
Wire Wire Line
	2500 4100 2300 4100
Wire Wire Line
	2050 4100 2050 4050
Wire Wire Line
	2200 3750 2050 3750
Wire Wire Line
	2050 3700 2050 3750
Connection ~ 2050 3750
Wire Wire Line
	2400 3750 2500 3750
Wire Wire Line
	2500 3750 2500 3850
Wire Wire Line
	2050 3300 2050 3200
$Comp
L power:+5V #PWR?
U 1 1 5FEDE550
P 2050 3200
AR Path="/60E33DBC/5F3D6AE0/5FEDE550" Ref="#PWR?"  Part="1" 
AR Path="/608BF85D/608BF87D/5FEDE550" Ref="#PWR?"  Part="1" 
AR Path="/5FD4EE20/5FD4A0FE/5FEDE550" Ref="#PWR?"  Part="1" 
AR Path="/5FD4EE20/5FEDE550" Ref="#PWR?"  Part="1" 
AR Path="/5FD4EE20/5FEB2E89/5FEDE550" Ref="#PWR01236"  Part="1" 
AR Path="/5FD4EE20/5FF01B4B/5FEDE550" Ref="#PWR?"  Part="1" 
AR Path="/5FD4EE20/5FF2C575/5FEDE550" Ref="#PWR01266"  Part="1" 
F 0 "#PWR01266" H 2050 3050 50  0001 C CNN
F 1 "+5V" H 2065 3373 50  0000 C CNN
F 2 "" H 2050 3200 50  0001 C CNN
F 3 "" H 2050 3200 50  0001 C CNN
	1    2050 3200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FEDE556
P 2300 4150
AR Path="/60E33DBC/5F3D6AE0/5FEDE556" Ref="#PWR?"  Part="1" 
AR Path="/608BF85D/608BF87D/5FEDE556" Ref="#PWR?"  Part="1" 
AR Path="/5FD4EE20/5FD4A0FE/5FEDE556" Ref="#PWR?"  Part="1" 
AR Path="/5FD4EE20/5FEDE556" Ref="#PWR?"  Part="1" 
AR Path="/5FD4EE20/5FEB2E89/5FEDE556" Ref="#PWR01237"  Part="1" 
AR Path="/5FD4EE20/5FF01B4B/5FEDE556" Ref="#PWR?"  Part="1" 
AR Path="/5FD4EE20/5FF2C575/5FEDE556" Ref="#PWR01267"  Part="1" 
F 0 "#PWR01267" H 2300 3900 50  0001 C CNN
F 1 "GND" H 2305 3977 50  0000 C CNN
F 2 "" H 2300 4150 50  0001 C CNN
F 3 "" H 2300 4150 50  0001 C CNN
	1    2300 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 4150 2300 4100
Connection ~ 2300 4100
Wire Wire Line
	2300 4100 2050 4100
Wire Wire Line
	2800 3750 2500 3750
Connection ~ 2500 3750
Wire Wire Line
	2050 3750 2050 3850
$Comp
L 74xGxx:74LVC1G175 U?
U 1 1 5FEDE58A
P 5700 3800
AR Path="/5F1CE57C/5FEDE58A" Ref="U?"  Part="1" 
AR Path="/60E33DBC/5F3D6AE0/5FEDE58A" Ref="U?"  Part="1" 
AR Path="/608BF85D/608BF87D/5FEDE58A" Ref="U?"  Part="1" 
AR Path="/5FD4EE20/5FD4A0FE/5FEDE58A" Ref="U?"  Part="1" 
AR Path="/5FD4EE20/5FEDE58A" Ref="U?"  Part="1" 
AR Path="/5FD4EE20/5FEB2E89/5FEDE58A" Ref="U282"  Part="1" 
AR Path="/5FD4EE20/5FF01B4B/5FEDE58A" Ref="U?"  Part="1" 
AR Path="/5FD4EE20/5FF2C575/5FEDE58A" Ref="U289"  Part="1" 
F 0 "U282" H 5850 3500 50  0000 C CNN
F 1 "SN74LVC1G175DCK" H 6100 3600 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-363_SC-70-6" H 5700 3800 50  0001 C CNN
F 3 "http://www.ti.com/lit/sg/scyt129e/scyt129e.pdf" H 5700 3800 50  0001 C CNN
	1    5700 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 3950 5550 4000
$Comp
L power:GND #PWR?
U 1 1 5FEDE591
P 5550 4000
AR Path="/5F1CE57C/5FEDE591" Ref="#PWR?"  Part="1" 
AR Path="/60E33DBC/5F3D6AE0/5FEDE591" Ref="#PWR?"  Part="1" 
AR Path="/608BF85D/608BF87D/5FEDE591" Ref="#PWR?"  Part="1" 
AR Path="/5FD4EE20/5FD4A0FE/5FEDE591" Ref="#PWR?"  Part="1" 
AR Path="/5FD4EE20/5FEDE591" Ref="#PWR?"  Part="1" 
AR Path="/5FD4EE20/5FEB2E89/5FEDE591" Ref="#PWR01246"  Part="1" 
AR Path="/5FD4EE20/5FF01B4B/5FEDE591" Ref="#PWR?"  Part="1" 
AR Path="/5FD4EE20/5FF2C575/5FEDE591" Ref="#PWR01276"  Part="1" 
F 0 "#PWR01276" H 5550 3750 50  0001 C CNN
F 1 "GND" H 5555 3827 50  0000 C CNN
F 2 "" H 5550 4000 50  0001 C CNN
F 3 "" H 5550 4000 50  0001 C CNN
	1    5550 4000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FEDE597
P 6000 3550
AR Path="/5ED2705B/5FEDE597" Ref="#PWR?"  Part="1" 
AR Path="/5F1CE57C/5FEDE597" Ref="#PWR?"  Part="1" 
AR Path="/60E33DBC/5F3D6AE0/5FEDE597" Ref="#PWR?"  Part="1" 
AR Path="/608BF85D/608BF87D/5FEDE597" Ref="#PWR?"  Part="1" 
AR Path="/5FD4EE20/5FD4A0FE/5FEDE597" Ref="#PWR?"  Part="1" 
AR Path="/5FD4EE20/5FEDE597" Ref="#PWR?"  Part="1" 
AR Path="/5FD4EE20/5FEB2E89/5FEDE597" Ref="#PWR01251"  Part="1" 
AR Path="/5FD4EE20/5FF01B4B/5FEDE597" Ref="#PWR?"  Part="1" 
AR Path="/5FD4EE20/5FF2C575/5FEDE597" Ref="#PWR01281"  Part="1" 
F 0 "#PWR01281" H 6000 3300 50  0001 C CNN
F 1 "GND" V 6005 3422 50  0000 R CNN
F 2 "" H 6000 3550 50  0001 C CNN
F 3 "" H 6000 3550 50  0001 C CNN
	1    6000 3550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5700 3550 5700 3500
$Comp
L Device:C_Small C?
U 1 1 5FEDE59E
P 5850 3550
AR Path="/5ED2705B/5FEDE59E" Ref="C?"  Part="1" 
AR Path="/5F1CE57C/5FEDE59E" Ref="C?"  Part="1" 
AR Path="/60E33DBC/5F3D6AE0/5FEDE59E" Ref="C?"  Part="1" 
AR Path="/608BF85D/608BF87D/5FEDE59E" Ref="C?"  Part="1" 
AR Path="/5FD4EE20/5FD4A0FE/5FEDE59E" Ref="C?"  Part="1" 
AR Path="/5FD4EE20/5FEDE59E" Ref="C?"  Part="1" 
AR Path="/5FD4EE20/5FEB2E89/5FEDE59E" Ref="C289"  Part="1" 
AR Path="/5FD4EE20/5FF01B4B/5FEDE59E" Ref="C?"  Part="1" 
AR Path="/5FD4EE20/5FF2C575/5FEDE59E" Ref="C298"  Part="1" 
F 0 "C289" V 5621 3550 50  0000 C CNN
F 1 "0u1" V 5712 3550 50  0000 C CNN
F 2 "NoRef_Footprints:C_0603_1608Metric_NoRef" H 5850 3550 50  0001 C CNN
F 3 "~" H 5850 3550 50  0001 C CNN
	1    5850 3550
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5FEDE5A4
P 5700 3500
AR Path="/5ED2705B/5FEDE5A4" Ref="#PWR?"  Part="1" 
AR Path="/5F1CE57C/5FEDE5A4" Ref="#PWR?"  Part="1" 
AR Path="/60E33DBC/5F3D6AE0/5FEDE5A4" Ref="#PWR?"  Part="1" 
AR Path="/608BF85D/608BF87D/5FEDE5A4" Ref="#PWR?"  Part="1" 
AR Path="/5FD4EE20/5FD4A0FE/5FEDE5A4" Ref="#PWR?"  Part="1" 
AR Path="/5FD4EE20/5FEDE5A4" Ref="#PWR?"  Part="1" 
AR Path="/5FD4EE20/5FEB2E89/5FEDE5A4" Ref="#PWR01249"  Part="1" 
AR Path="/5FD4EE20/5FF01B4B/5FEDE5A4" Ref="#PWR?"  Part="1" 
AR Path="/5FD4EE20/5FF2C575/5FEDE5A4" Ref="#PWR01279"  Part="1" 
F 0 "#PWR01279" H 5700 3350 50  0001 C CNN
F 1 "+5V" H 5642 3537 50  0000 R CNN
F 2 "" H 5700 3500 50  0001 C CNN
F 3 "" H 5700 3500 50  0001 C CNN
	1    5700 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 3550 5700 3550
Wire Wire Line
	5700 3550 5700 3650
Connection ~ 5700 3550
Wire Wire Line
	6000 3550 5950 3550
$Comp
L 74xGxx:74LVC1G04 U?
U 1 1 5FEDE5AE
P 5700 2850
AR Path="/5ED2705B/5FEDE5AE" Ref="U?"  Part="1" 
AR Path="/5F1CE57C/5FEDE5AE" Ref="U?"  Part="1" 
AR Path="/608BF85D/5FEDE5AE" Ref="U?"  Part="1" 
AR Path="/60E33DBC/5F3D6AF9/5FEDE5AE" Ref="U?"  Part="1" 
AR Path="/60E33DBC/5FEDE5AE" Ref="U?"  Part="1" 
AR Path="/60E33DBC/5F3D6AE0/5FEDE5AE" Ref="U?"  Part="1" 
AR Path="/608BF85D/608BF87D/5FEDE5AE" Ref="U?"  Part="1" 
AR Path="/5FD4EE20/5FD4A0FE/5FEDE5AE" Ref="U?"  Part="1" 
AR Path="/5FD4EE20/5FEDE5AE" Ref="U?"  Part="1" 
AR Path="/5FD4EE20/5FEB2E89/5FEDE5AE" Ref="U281"  Part="1" 
AR Path="/5FD4EE20/5FF01B4B/5FEDE5AE" Ref="U?"  Part="1" 
AR Path="/5FD4EE20/5FF2C575/5FEDE5AE" Ref="U288"  Part="1" 
F 0 "U281" H 5850 2650 50  0000 C CNN
F 1 "SN74LVC1G04DCK" H 6050 2750 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-353_SC-70-5" H 5700 2850 50  0001 C CNN
F 3 "http://www.ti.com/lit/sg/scyt129e/scyt129e.pdf" H 5700 2850 50  0001 C CNN
	1    5700 2850
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5700 2750 5700 2650
Connection ~ 5700 2650
$Comp
L power:+5V #PWR?
U 1 1 5FEDE5B6
P 5700 2600
AR Path="/5ED2705B/5FEDE5B6" Ref="#PWR?"  Part="1" 
AR Path="/5F1CE57C/5FEDE5B6" Ref="#PWR?"  Part="1" 
AR Path="/608BF85D/5FEDE5B6" Ref="#PWR?"  Part="1" 
AR Path="/60E33DBC/5F3D6AF9/5FEDE5B6" Ref="#PWR?"  Part="1" 
AR Path="/60E33DBC/5FEDE5B6" Ref="#PWR?"  Part="1" 
AR Path="/60E33DBC/5F3D6AE0/5FEDE5B6" Ref="#PWR?"  Part="1" 
AR Path="/608BF85D/608BF87D/5FEDE5B6" Ref="#PWR?"  Part="1" 
AR Path="/5FD4EE20/5FD4A0FE/5FEDE5B6" Ref="#PWR?"  Part="1" 
AR Path="/5FD4EE20/5FEDE5B6" Ref="#PWR?"  Part="1" 
AR Path="/5FD4EE20/5FEB2E89/5FEDE5B6" Ref="#PWR01247"  Part="1" 
AR Path="/5FD4EE20/5FF01B4B/5FEDE5B6" Ref="#PWR?"  Part="1" 
AR Path="/5FD4EE20/5FF2C575/5FEDE5B6" Ref="#PWR01277"  Part="1" 
F 0 "#PWR01277" H 5700 2450 50  0001 C CNN
F 1 "+5V" H 5642 2637 50  0000 R CNN
F 2 "" H 5700 2600 50  0001 C CNN
F 3 "" H 5700 2600 50  0001 C CNN
	1    5700 2600
	-1   0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5FEDE5BC
P 5550 2650
AR Path="/5ED2705B/5FEDE5BC" Ref="C?"  Part="1" 
AR Path="/5F1CE57C/5FEDE5BC" Ref="C?"  Part="1" 
AR Path="/608BF85D/5FEDE5BC" Ref="C?"  Part="1" 
AR Path="/60E33DBC/5F3D6AF9/5FEDE5BC" Ref="C?"  Part="1" 
AR Path="/60E33DBC/5FEDE5BC" Ref="C?"  Part="1" 
AR Path="/60E33DBC/5F3D6AE0/5FEDE5BC" Ref="C?"  Part="1" 
AR Path="/608BF85D/608BF87D/5FEDE5BC" Ref="C?"  Part="1" 
AR Path="/5FD4EE20/5FD4A0FE/5FEDE5BC" Ref="C?"  Part="1" 
AR Path="/5FD4EE20/5FEDE5BC" Ref="C?"  Part="1" 
AR Path="/5FD4EE20/5FEB2E89/5FEDE5BC" Ref="C288"  Part="1" 
AR Path="/5FD4EE20/5FF01B4B/5FEDE5BC" Ref="C?"  Part="1" 
AR Path="/5FD4EE20/5FF2C575/5FEDE5BC" Ref="C297"  Part="1" 
F 0 "C288" V 5321 2650 50  0000 C CNN
F 1 "0u1" V 5412 2650 50  0000 C CNN
F 2 "NoRef_Footprints:C_0603_1608Metric_NoRef" H 5550 2650 50  0001 C CNN
F 3 "~" H 5550 2650 50  0001 C CNN
	1    5550 2650
	0    -1   1    0   
$EndComp
Wire Wire Line
	5650 2650 5700 2650
Wire Wire Line
	5700 2650 5700 2600
$Comp
L power:GND #PWR?
U 1 1 5FEDE5C4
P 5700 3050
AR Path="/5ED2705B/5FEDE5C4" Ref="#PWR?"  Part="1" 
AR Path="/5F1CE57C/5FEDE5C4" Ref="#PWR?"  Part="1" 
AR Path="/608BF85D/5FEDE5C4" Ref="#PWR?"  Part="1" 
AR Path="/60E33DBC/5F3D6AF9/5FEDE5C4" Ref="#PWR?"  Part="1" 
AR Path="/60E33DBC/5FEDE5C4" Ref="#PWR?"  Part="1" 
AR Path="/60E33DBC/5F3D6AE0/5FEDE5C4" Ref="#PWR?"  Part="1" 
AR Path="/608BF85D/608BF87D/5FEDE5C4" Ref="#PWR?"  Part="1" 
AR Path="/5FD4EE20/5FD4A0FE/5FEDE5C4" Ref="#PWR?"  Part="1" 
AR Path="/5FD4EE20/5FEDE5C4" Ref="#PWR?"  Part="1" 
AR Path="/5FD4EE20/5FEB2E89/5FEDE5C4" Ref="#PWR01248"  Part="1" 
AR Path="/5FD4EE20/5FF01B4B/5FEDE5C4" Ref="#PWR?"  Part="1" 
AR Path="/5FD4EE20/5FF2C575/5FEDE5C4" Ref="#PWR01278"  Part="1" 
F 0 "#PWR01278" H 5700 2800 50  0001 C CNN
F 1 "GND" H 5705 2877 50  0000 C CNN
F 2 "" H 5700 3050 50  0001 C CNN
F 3 "" H 5700 3050 50  0001 C CNN
	1    5700 3050
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5700 3050 5700 2950
Wire Wire Line
	5400 2650 5450 2650
$Comp
L power:GND #PWR?
U 1 1 5FEDE5CC
P 5400 2650
AR Path="/5ED2705B/5FEDE5CC" Ref="#PWR?"  Part="1" 
AR Path="/5F1CE57C/5FEDE5CC" Ref="#PWR?"  Part="1" 
AR Path="/608BF85D/5FEDE5CC" Ref="#PWR?"  Part="1" 
AR Path="/60E33DBC/5F3D6AF9/5FEDE5CC" Ref="#PWR?"  Part="1" 
AR Path="/60E33DBC/5FEDE5CC" Ref="#PWR?"  Part="1" 
AR Path="/60E33DBC/5F3D6AE0/5FEDE5CC" Ref="#PWR?"  Part="1" 
AR Path="/608BF85D/608BF87D/5FEDE5CC" Ref="#PWR?"  Part="1" 
AR Path="/5FD4EE20/5FD4A0FE/5FEDE5CC" Ref="#PWR?"  Part="1" 
AR Path="/5FD4EE20/5FEDE5CC" Ref="#PWR?"  Part="1" 
AR Path="/5FD4EE20/5FEB2E89/5FEDE5CC" Ref="#PWR01245"  Part="1" 
AR Path="/5FD4EE20/5FF01B4B/5FEDE5CC" Ref="#PWR?"  Part="1" 
AR Path="/5FD4EE20/5FF2C575/5FEDE5CC" Ref="#PWR01275"  Part="1" 
F 0 "#PWR01275" H 5400 2400 50  0001 C CNN
F 1 "GND" V 5405 2522 50  0000 R CNN
F 2 "" H 5400 2650 50  0001 C CNN
F 3 "" H 5400 2650 50  0001 C CNN
	1    5400 2650
	0    1    -1   0   
$EndComp
Wire Wire Line
	4900 2850 5450 2850
Wire Wire Line
	5950 3700 6400 3700
Wire Wire Line
	6400 3700 6400 2850
Wire Wire Line
	6400 2850 6000 2850
Wire Wire Line
	4900 2850 4900 3700
Wire Wire Line
	4900 3700 5450 3700
$Comp
L power:+5V #PWR?
U 1 1 5FEDE5DC
P 5700 4150
AR Path="/5ED2705B/5FEDE5DC" Ref="#PWR?"  Part="1" 
AR Path="/5F1CE57C/5FEDE5DC" Ref="#PWR?"  Part="1" 
AR Path="/60E33DBC/5F3D6AE0/5FEDE5DC" Ref="#PWR?"  Part="1" 
AR Path="/608BF85D/608BF87D/5FEDE5DC" Ref="#PWR?"  Part="1" 
AR Path="/5FD4EE20/5FD4A0FE/5FEDE5DC" Ref="#PWR?"  Part="1" 
AR Path="/5FD4EE20/5FEDE5DC" Ref="#PWR?"  Part="1" 
AR Path="/5FD4EE20/5FEB2E89/5FEDE5DC" Ref="#PWR01250"  Part="1" 
AR Path="/5FD4EE20/5FF01B4B/5FEDE5DC" Ref="#PWR?"  Part="1" 
AR Path="/5FD4EE20/5FF2C575/5FEDE5DC" Ref="#PWR01280"  Part="1" 
F 0 "#PWR01280" H 5700 4000 50  0001 C CNN
F 1 "+5V" H 5715 4323 50  0000 C CNN
F 2 "" H 5700 4150 50  0001 C CNN
F 3 "" H 5700 4150 50  0001 C CNN
	1    5700 4150
	-1   0    0    1   
$EndComp
Wire Wire Line
	5700 4150 5700 4050
$Comp
L 74xGxx:74LVC1G17 U?
U 1 1 5FFBD029
P 3100 3750
AR Path="/5F396002/5FFBD029" Ref="U?"  Part="1" 
AR Path="/5FD4EE20/5FF2C575/5FFBD029" Ref="U286"  Part="1" 
AR Path="/5FD4EE20/5FEB2E89/5FFBD029" Ref="U279"  Part="1" 
F 0 "U279" H 3250 3700 50  0000 C CNN
F 1 "SN74LVC1G17DCK" H 3500 3600 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-353_SC-70-5" H 3100 3750 50  0001 C CNN
F 3 "http://www.ti.com/lit/sg/scyt129e/scyt129e.pdf" H 3100 3750 50  0001 C CNN
	1    3100 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 3550 3350 3550
$Comp
L power:GND #PWR?
U 1 1 5FFBD030
P 3400 3550
AR Path="/5ED2705B/5FFBD030" Ref="#PWR?"  Part="1" 
AR Path="/5F1CE57C/5FFBD030" Ref="#PWR?"  Part="1" 
AR Path="/5F396002/5FFBD030" Ref="#PWR?"  Part="1" 
AR Path="/5FD4EE20/5FF2C575/5FFBD030" Ref="#PWR01270"  Part="1" 
AR Path="/5FD4EE20/5FEB2E89/5FFBD030" Ref="#PWR01240"  Part="1" 
F 0 "#PWR01270" H 3400 3300 50  0001 C CNN
F 1 "GND" V 3405 3422 50  0000 R CNN
F 2 "" H 3400 3550 50  0001 C CNN
F 3 "" H 3400 3550 50  0001 C CNN
	1    3400 3550
	0    -1   -1   0   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5FFBD039
P 3250 3550
AR Path="/5ED2705B/5FFBD039" Ref="C?"  Part="1" 
AR Path="/5F1CE57C/5FFBD039" Ref="C?"  Part="1" 
AR Path="/5F396002/5FFBD039" Ref="C?"  Part="1" 
AR Path="/5FD4EE20/5FF2C575/5FFBD039" Ref="C295"  Part="1" 
AR Path="/5FD4EE20/5FEB2E89/5FFBD039" Ref="C286"  Part="1" 
F 0 "C286" V 3021 3550 50  0000 C CNN
F 1 "0u1" V 3112 3550 50  0000 C CNN
F 2 "NoRef_Footprints:C_0603_1608Metric_NoRef" H 3250 3550 50  0001 C CNN
F 3 "~" H 3250 3550 50  0001 C CNN
	1    3250 3550
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5FFBD03F
P 3100 3500
AR Path="/5ED2705B/5FFBD03F" Ref="#PWR?"  Part="1" 
AR Path="/5F1CE57C/5FFBD03F" Ref="#PWR?"  Part="1" 
AR Path="/5F396002/5FFBD03F" Ref="#PWR?"  Part="1" 
AR Path="/5FD4EE20/5FF2C575/5FFBD03F" Ref="#PWR01268"  Part="1" 
AR Path="/5FD4EE20/5FEB2E89/5FFBD03F" Ref="#PWR01238"  Part="1" 
F 0 "#PWR01268" H 3100 3350 50  0001 C CNN
F 1 "+5V" H 3042 3537 50  0000 R CNN
F 2 "" H 3100 3500 50  0001 C CNN
F 3 "" H 3100 3500 50  0001 C CNN
	1    3100 3500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FFBD046
P 3100 3900
AR Path="/5ED2705B/5FFBD046" Ref="#PWR?"  Part="1" 
AR Path="/5F1CE57C/5FFBD046" Ref="#PWR?"  Part="1" 
AR Path="/5F396002/5FFBD046" Ref="#PWR?"  Part="1" 
AR Path="/5FD4EE20/5FF2C575/5FFBD046" Ref="#PWR01269"  Part="1" 
AR Path="/5FD4EE20/5FEB2E89/5FFBD046" Ref="#PWR01239"  Part="1" 
F 0 "#PWR01269" H 3100 3650 50  0001 C CNN
F 1 "GND" V 3105 3772 50  0000 R CNN
F 2 "" H 3100 3900 50  0001 C CNN
F 3 "" H 3100 3900 50  0001 C CNN
	1    3100 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 3900 3100 3850
Wire Wire Line
	3100 3650 3100 3550
Wire Wire Line
	3150 3550 3100 3550
Connection ~ 3100 3550
Wire Wire Line
	3100 3550 3100 3500
Text HLabel 3800 4250 0    50   Input ~ 0
EXT_TRIGGER
Text HLabel 8650 3750 2    50   Output ~ 0
OUT
$Comp
L 74xGxx:74LVC1G32 U280
U 1 1 6004B735
P 4300 3800
AR Path="/5FD4EE20/5FEB2E89/6004B735" Ref="U280"  Part="1" 
AR Path="/5FD4EE20/5FF2C575/6004B735" Ref="U287"  Part="1" 
F 0 "U280" H 4450 3700 50  0000 C CNN
F 1 "SN74LVC1G32DCK" H 4700 3600 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-353_SC-70-5" H 4300 3800 50  0001 C CNN
F 3 "http://www.ti.com/lit/sg/scyt129e/scyt129e.pdf" H 4300 3800 50  0001 C CNN
	1    4300 3800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6004B73B
P 4300 4000
AR Path="/5ED2705B/6004B73B" Ref="#PWR?"  Part="1" 
AR Path="/5F1CE57C/6004B73B" Ref="#PWR?"  Part="1" 
AR Path="/5F396002/6004B73B" Ref="#PWR?"  Part="1" 
AR Path="/5FD4EE20/5FEB2E89/6004B73B" Ref="#PWR01243"  Part="1" 
AR Path="/5FD4EE20/5FF2C575/6004B73B" Ref="#PWR01273"  Part="1" 
F 0 "#PWR01273" H 4300 3750 50  0001 C CNN
F 1 "GND" H 4305 3827 50  0000 C CNN
F 2 "" H 4300 4000 50  0001 C CNN
F 3 "" H 4300 4000 50  0001 C CNN
	1    4300 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 4000 4300 3900
Wire Wire Line
	4300 3700 4300 3600
$Comp
L power:+5V #PWR?
U 1 1 6004B743
P 4300 3550
AR Path="/5ED2705B/6004B743" Ref="#PWR?"  Part="1" 
AR Path="/5F1CE57C/6004B743" Ref="#PWR?"  Part="1" 
AR Path="/5F396002/6004B743" Ref="#PWR?"  Part="1" 
AR Path="/5FD4EE20/5FEB2E89/6004B743" Ref="#PWR01242"  Part="1" 
AR Path="/5FD4EE20/5FF2C575/6004B743" Ref="#PWR01272"  Part="1" 
F 0 "#PWR01272" H 4300 3400 50  0001 C CNN
F 1 "+5V" H 4242 3587 50  0000 R CNN
F 2 "" H 4300 3550 50  0001 C CNN
F 3 "" H 4300 3550 50  0001 C CNN
	1    4300 3550
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 6004B749
P 4450 3600
AR Path="/5ED2705B/6004B749" Ref="C?"  Part="1" 
AR Path="/5F1CE57C/6004B749" Ref="C?"  Part="1" 
AR Path="/5F396002/6004B749" Ref="C?"  Part="1" 
AR Path="/5FD4EE20/5FEB2E89/6004B749" Ref="C287"  Part="1" 
AR Path="/5FD4EE20/5FF2C575/6004B749" Ref="C296"  Part="1" 
F 0 "C287" V 4221 3600 50  0000 C CNN
F 1 "0u1" V 4312 3600 50  0000 C CNN
F 2 "NoRef_Footprints:C_0603_1608Metric_NoRef" H 4450 3600 50  0001 C CNN
F 3 "~" H 4450 3600 50  0001 C CNN
	1    4450 3600
	0    1    1    0   
$EndComp
Wire Wire Line
	4350 3600 4300 3600
Connection ~ 4300 3600
Wire Wire Line
	4300 3600 4300 3550
$Comp
L power:GND #PWR?
U 1 1 6004B752
P 4600 3600
AR Path="/5ED2705B/6004B752" Ref="#PWR?"  Part="1" 
AR Path="/5F1CE57C/6004B752" Ref="#PWR?"  Part="1" 
AR Path="/5F396002/6004B752" Ref="#PWR?"  Part="1" 
AR Path="/5FD4EE20/5FEB2E89/6004B752" Ref="#PWR01244"  Part="1" 
AR Path="/5FD4EE20/5FF2C575/6004B752" Ref="#PWR01274"  Part="1" 
F 0 "#PWR01274" H 4600 3350 50  0001 C CNN
F 1 "GND" V 4605 3472 50  0000 R CNN
F 2 "" H 4600 3600 50  0001 C CNN
F 3 "" H 4600 3600 50  0001 C CNN
	1    4600 3600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4600 3600 4550 3600
Wire Wire Line
	3350 3750 4000 3750
Wire Wire Line
	3800 4250 3900 4250
Wire Wire Line
	3900 4250 3900 3850
Wire Wire Line
	3900 3850 4000 3850
$Comp
L Device:R_Small R378
U 1 1 6006160D
P 3900 4450
AR Path="/5FD4EE20/5FEB2E89/6006160D" Ref="R378"  Part="1" 
AR Path="/5FD4EE20/5FF2C575/6006160D" Ref="R384"  Part="1" 
F 0 "R378" H 3959 4496 50  0000 L CNN
F 1 "10K" H 3959 4405 50  0000 L CNN
F 2 "NoRef_Footprints:R_0603_1608Metric_NoRef" H 3900 4450 50  0001 C CNN
F 3 "~" H 3900 4450 50  0001 C CNN
	1    3900 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 4350 3900 4250
Connection ~ 3900 4250
Wire Wire Line
	3900 4550 3900 4600
$Comp
L power:GND #PWR01241
U 1 1 600635D5
P 3900 4600
AR Path="/5FD4EE20/5FEB2E89/600635D5" Ref="#PWR01241"  Part="1" 
AR Path="/5FD4EE20/5FF2C575/600635D5" Ref="#PWR01271"  Part="1" 
F 0 "#PWR01271" H 3900 4350 50  0001 C CNN
F 1 "GND" H 3905 4427 50  0000 C CNN
F 2 "" H 3900 4600 50  0001 C CNN
F 3 "" H 3900 4600 50  0001 C CNN
	1    3900 4600
	1    0    0    -1  
$EndComp
$Comp
L 74xGxx:74LVC1G86 U?
U 1 1 60781D13
P 7700 3750
AR Path="/5F1CE57C/60781D13" Ref="U?"  Part="1" 
AR Path="/608BF85D/60781D13" Ref="U?"  Part="1" 
AR Path="/608BF85D/5FFAAF6D/60781D13" Ref="U?"  Part="1" 
AR Path="/5FD4EE20/5FEB2E89/60781D13" Ref="U283"  Part="1" 
AR Path="/5FD4EE20/5FF2C575/60781D13" Ref="U290"  Part="1" 
F 0 "U283" H 7900 3700 50  0000 C CNN
F 1 "SN74LVC1G86DCK" H 8100 3600 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-353_SC-70-5" H 7700 3750 50  0001 C CNN
F 3 "http://www.ti.com/lit/sg/scyt129e/scyt129e.pdf" H 7700 3750 50  0001 C CNN
	1    7700 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	7700 3650 7700 3550
$Comp
L power:+5V #PWR?
U 1 1 60781D1A
P 7700 3500
AR Path="/5ED2705B/60781D1A" Ref="#PWR?"  Part="1" 
AR Path="/5F1CE57C/60781D1A" Ref="#PWR?"  Part="1" 
AR Path="/608BF85D/60781D1A" Ref="#PWR?"  Part="1" 
AR Path="/608BF85D/5FFAAF6D/60781D1A" Ref="#PWR?"  Part="1" 
AR Path="/5FD4EE20/5FEB2E89/60781D1A" Ref="#PWR01254"  Part="1" 
AR Path="/5FD4EE20/5FF2C575/60781D1A" Ref="#PWR01284"  Part="1" 
F 0 "#PWR01284" H 7700 3350 50  0001 C CNN
F 1 "+5V" H 7642 3537 50  0000 R CNN
F 2 "" H 7700 3500 50  0001 C CNN
F 3 "" H 7700 3500 50  0001 C CNN
	1    7700 3500
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 60781D20
P 7850 3550
AR Path="/5ED2705B/60781D20" Ref="C?"  Part="1" 
AR Path="/5F1CE57C/60781D20" Ref="C?"  Part="1" 
AR Path="/608BF85D/60781D20" Ref="C?"  Part="1" 
AR Path="/608BF85D/5FFAAF6D/60781D20" Ref="C?"  Part="1" 
AR Path="/5FD4EE20/5FEB2E89/60781D20" Ref="C290"  Part="1" 
AR Path="/5FD4EE20/5FF2C575/60781D20" Ref="C299"  Part="1" 
F 0 "C290" V 7621 3550 50  0000 C CNN
F 1 "0u1" V 7712 3550 50  0000 C CNN
F 2 "NoRef_Footprints:C_0603_1608Metric_NoRef" H 7850 3550 50  0001 C CNN
F 3 "~" H 7850 3550 50  0001 C CNN
	1    7850 3550
	0    1    1    0   
$EndComp
Wire Wire Line
	7750 3550 7700 3550
Connection ~ 7700 3550
Wire Wire Line
	7700 3550 7700 3500
$Comp
L power:GND #PWR?
U 1 1 60781D29
P 8000 3550
AR Path="/5ED2705B/60781D29" Ref="#PWR?"  Part="1" 
AR Path="/5F1CE57C/60781D29" Ref="#PWR?"  Part="1" 
AR Path="/608BF85D/60781D29" Ref="#PWR?"  Part="1" 
AR Path="/608BF85D/5FFAAF6D/60781D29" Ref="#PWR?"  Part="1" 
AR Path="/5FD4EE20/5FEB2E89/60781D29" Ref="#PWR01256"  Part="1" 
AR Path="/5FD4EE20/5FF2C575/60781D29" Ref="#PWR01286"  Part="1" 
F 0 "#PWR01286" H 8000 3300 50  0001 C CNN
F 1 "GND" V 8005 3422 50  0000 R CNN
F 2 "" H 8000 3550 50  0001 C CNN
F 3 "" H 8000 3550 50  0001 C CNN
	1    8000 3550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8000 3550 7950 3550
$Comp
L power:GND #PWR?
U 1 1 60781D30
P 7700 3900
AR Path="/5ED2705B/60781D30" Ref="#PWR?"  Part="1" 
AR Path="/5F1CE57C/60781D30" Ref="#PWR?"  Part="1" 
AR Path="/608BF85D/60781D30" Ref="#PWR?"  Part="1" 
AR Path="/608BF85D/5FFAAF6D/60781D30" Ref="#PWR?"  Part="1" 
AR Path="/5FD4EE20/5FEB2E89/60781D30" Ref="#PWR01255"  Part="1" 
AR Path="/5FD4EE20/5FF2C575/60781D30" Ref="#PWR01285"  Part="1" 
F 0 "#PWR01285" H 7700 3650 50  0001 C CNN
F 1 "GND" H 7705 3727 50  0000 C CNN
F 2 "" H 7700 3900 50  0001 C CNN
F 3 "" H 7700 3900 50  0001 C CNN
	1    7700 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	7700 3900 7700 3850
Wire Wire Line
	8650 3750 7950 3750
$Comp
L Device:Jumper_NC_Small JP2
U 1 1 607A5CFB
P 7350 4650
AR Path="/5FD4EE20/5FEB2E89/607A5CFB" Ref="JP2"  Part="1" 
AR Path="/5FD4EE20/5FF2C575/607A5CFB" Ref="JP4"  Part="1" 
F 0 "JP2" V 7304 4724 50  0000 L CNN
F 1 "JMP" V 7395 4724 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 7350 4650 50  0001 C CNN
F 3 "~" H 7350 4650 50  0001 C CNN
	1    7350 4650
	0    1    1    0   
$EndComp
$Comp
L Device:Jumper_NO_Small JP1
U 1 1 607A73DC
P 7350 4350
AR Path="/5FD4EE20/5FEB2E89/607A73DC" Ref="JP1"  Part="1" 
AR Path="/5FD4EE20/5FF2C575/607A73DC" Ref="JP3"  Part="1" 
F 0 "JP1" V 7304 4398 50  0000 L CNN
F 1 "JMP" V 7395 4398 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 7350 4350 50  0001 C CNN
F 3 "~" H 7350 4350 50  0001 C CNN
	1    7350 4350
	0    1    1    0   
$EndComp
Wire Wire Line
	7350 4500 7350 4450
Wire Wire Line
	7050 4500 7350 4500
Wire Wire Line
	7350 4500 7350 4550
Connection ~ 7350 4500
Wire Wire Line
	7350 4250 7350 4200
Wire Wire Line
	7350 4750 7350 4800
$Comp
L power:+5V #PWR?
U 1 1 607AE9BC
P 7350 4200
AR Path="/5ED2705B/607AE9BC" Ref="#PWR?"  Part="1" 
AR Path="/5F1CE57C/607AE9BC" Ref="#PWR?"  Part="1" 
AR Path="/608BF85D/607AE9BC" Ref="#PWR?"  Part="1" 
AR Path="/608BF85D/5FFAAF6D/607AE9BC" Ref="#PWR?"  Part="1" 
AR Path="/5FD4EE20/5FEB2E89/607AE9BC" Ref="#PWR01252"  Part="1" 
AR Path="/5FD4EE20/5FF2C575/607AE9BC" Ref="#PWR01282"  Part="1" 
F 0 "#PWR01282" H 7350 4050 50  0001 C CNN
F 1 "+5V" H 7365 4373 50  0000 C CNN
F 2 "" H 7350 4200 50  0001 C CNN
F 3 "" H 7350 4200 50  0001 C CNN
	1    7350 4200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 607B23DC
P 7350 4800
AR Path="/5ED2705B/607B23DC" Ref="#PWR?"  Part="1" 
AR Path="/5F1CE57C/607B23DC" Ref="#PWR?"  Part="1" 
AR Path="/608BF85D/607B23DC" Ref="#PWR?"  Part="1" 
AR Path="/608BF85D/5FFAAF6D/607B23DC" Ref="#PWR?"  Part="1" 
AR Path="/5FD4EE20/5FEB2E89/607B23DC" Ref="#PWR01253"  Part="1" 
AR Path="/5FD4EE20/5FF2C575/607B23DC" Ref="#PWR01283"  Part="1" 
F 0 "#PWR01283" H 7350 4550 50  0001 C CNN
F 1 "GND" H 7355 4627 50  0000 C CNN
F 2 "" H 7350 4800 50  0001 C CNN
F 3 "" H 7350 4800 50  0001 C CNN
	1    7350 4800
	1    0    0    -1  
$EndComp
Text Notes 5550 1600 0    100  ~ 0
T-FF
Text Notes 2500 1600 0    100  ~ 0
BTN + Debounce
Text Notes 6900 1600 0    100  ~ 0
Set default Position
Wire Wire Line
	4550 3800 5450 3800
Wire Wire Line
	6400 3700 7400 3700
Connection ~ 6400 3700
Wire Wire Line
	7050 4500 7050 3800
Wire Wire Line
	7050 3800 7400 3800
Text Notes 7600 4400 0    50   ~ 0
Default ON
Text Notes 7600 4700 0    50   ~ 0
Default OFF
$EndSCHEMATC
