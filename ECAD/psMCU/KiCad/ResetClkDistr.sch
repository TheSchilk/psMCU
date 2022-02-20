EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 86 109
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 4250 1550 0    50   Input ~ 0
RESET
Text HLabel 4250 1750 0    50   Input ~ 0
~RESET
Text HLabel 4100 3150 0    50   Input ~ 0
PWR_RESET
Text HLabel 4250 1950 0    50   Input ~ 0
CLK
$Comp
L 74xx:74HC245 U?
U 1 1 62B4237A
P 5550 2050
AR Path="/5ED2705B/62B4237A" Ref="U?"  Part="1" 
AR Path="/5F1CE57C/62B4237A" Ref="U?"  Part="1" 
AR Path="/5F396002/62B4237A" Ref="U?"  Part="1" 
AR Path="/5F394B96/62B4237A" Ref="U?"  Part="1" 
AR Path="/6041A022/62B4237A" Ref="U?"  Part="1" 
AR Path="/604F08FB/62B4237A" Ref="U?"  Part="1" 
AR Path="/62B3D95F/62B4237A" Ref="U35"  Part="1" 
F 0 "U35" H 5650 2800 50  0000 C CNN
F 1 "SN74HC245PW" H 5850 2700 50  0000 C CNN
F 2 "Package_SO:TSSOP-20_4.4x6.5mm_P0.65mm" H 5550 2050 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HC245" H 5550 2050 50  0001 C CNN
	1    5550 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 1250 5550 1150
$Comp
L power:+5V #PWR?
U 1 1 62B42381
P 5550 1050
AR Path="/5ED2705B/62B42381" Ref="#PWR?"  Part="1" 
AR Path="/5F1CE57C/62B42381" Ref="#PWR?"  Part="1" 
AR Path="/5F396002/62B42381" Ref="#PWR?"  Part="1" 
AR Path="/5F394B96/62B42381" Ref="#PWR?"  Part="1" 
AR Path="/6041A022/62B42381" Ref="#PWR?"  Part="1" 
AR Path="/604F08FB/62B42381" Ref="#PWR?"  Part="1" 
AR Path="/62B3D95F/62B42381" Ref="#PWR0828"  Part="1" 
F 0 "#PWR0828" H 5550 900 50  0001 C CNN
F 1 "+5V" H 5492 1087 50  0000 R CNN
F 2 "" H 5550 1050 50  0001 C CNN
F 3 "" H 5550 1050 50  0001 C CNN
	1    5550 1050
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 62B42387
P 5700 1150
AR Path="/5ED2705B/62B42387" Ref="C?"  Part="1" 
AR Path="/5F1CE57C/62B42387" Ref="C?"  Part="1" 
AR Path="/5F396002/62B42387" Ref="C?"  Part="1" 
AR Path="/5F394B96/62B42387" Ref="C?"  Part="1" 
AR Path="/6041A022/62B42387" Ref="C?"  Part="1" 
AR Path="/604F08FB/62B42387" Ref="C?"  Part="1" 
AR Path="/62B3D95F/62B42387" Ref="C251"  Part="1" 
F 0 "C251" V 5471 1150 50  0000 C CNN
F 1 "0u1" V 5562 1150 50  0000 C CNN
F 2 "NoRef_Footprints:C_0603_1608Metric_NoRef" H 5700 1150 50  0001 C CNN
F 3 "~" H 5700 1150 50  0001 C CNN
	1    5700 1150
	0    1    1    0   
$EndComp
Wire Wire Line
	5600 1150 5550 1150
Connection ~ 5550 1150
Wire Wire Line
	5550 1150 5550 1050
$Comp
L power:GND #PWR?
U 1 1 62B42390
P 5850 1150
AR Path="/5ED2705B/62B42390" Ref="#PWR?"  Part="1" 
AR Path="/5F1CE57C/62B42390" Ref="#PWR?"  Part="1" 
AR Path="/5F396002/62B42390" Ref="#PWR?"  Part="1" 
AR Path="/5F394B96/62B42390" Ref="#PWR?"  Part="1" 
AR Path="/6041A022/62B42390" Ref="#PWR?"  Part="1" 
AR Path="/604F08FB/62B42390" Ref="#PWR?"  Part="1" 
AR Path="/62B3D95F/62B42390" Ref="#PWR01704"  Part="1" 
F 0 "#PWR01704" H 5850 900 50  0001 C CNN
F 1 "GND" V 5855 1022 50  0000 R CNN
F 2 "" H 5850 1150 50  0001 C CNN
F 3 "" H 5850 1150 50  0001 C CNN
	1    5850 1150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5850 1150 5800 1150
$Comp
L power:GND #PWR?
U 1 1 62B42397
P 5550 2900
AR Path="/5ED2705B/62B42397" Ref="#PWR?"  Part="1" 
AR Path="/5F1CE57C/62B42397" Ref="#PWR?"  Part="1" 
AR Path="/5F396002/62B42397" Ref="#PWR?"  Part="1" 
AR Path="/5F394B96/62B42397" Ref="#PWR?"  Part="1" 
AR Path="/6041A022/62B42397" Ref="#PWR?"  Part="1" 
AR Path="/604F08FB/62B42397" Ref="#PWR?"  Part="1" 
AR Path="/62B3D95F/62B42397" Ref="#PWR01705"  Part="1" 
F 0 "#PWR01705" H 5550 2650 50  0001 C CNN
F 1 "GND" H 5750 2850 50  0000 C CNN
F 2 "" H 5550 2900 50  0001 C CNN
F 3 "" H 5550 2900 50  0001 C CNN
	1    5550 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 2900 5550 2850
Wire Wire Line
	4250 1950 4400 1950
Wire Wire Line
	4950 1950 4950 2050
Connection ~ 4950 1950
Wire Wire Line
	4950 1950 5050 1950
Wire Wire Line
	5050 2050 4950 2050
Wire Wire Line
	4250 1750 4400 1750
Wire Wire Line
	5050 1850 4950 1850
Wire Wire Line
	4950 1850 4950 1750
Connection ~ 4950 1750
Wire Wire Line
	4950 1750 5050 1750
Wire Wire Line
	5050 1650 4950 1650
Wire Wire Line
	4950 1650 4950 1550
Connection ~ 4950 1550
Wire Wire Line
	4950 1550 5050 1550
$Comp
L power:+5V #PWR?
U 1 1 62B43BF7
P 4950 2450
AR Path="/5ED2705B/62B43BF7" Ref="#PWR?"  Part="1" 
AR Path="/5F1CE57C/62B43BF7" Ref="#PWR?"  Part="1" 
AR Path="/5F396002/62B43BF7" Ref="#PWR?"  Part="1" 
AR Path="/5F394B96/62B43BF7" Ref="#PWR?"  Part="1" 
AR Path="/6041A022/62B43BF7" Ref="#PWR?"  Part="1" 
AR Path="/604F08FB/62B43BF7" Ref="#PWR?"  Part="1" 
AR Path="/62B3D95F/62B43BF7" Ref="#PWR01706"  Part="1" 
F 0 "#PWR01706" H 4950 2300 50  0001 C CNN
F 1 "+5V" V 4965 2578 50  0000 L CNN
F 2 "" H 4950 2450 50  0001 C CNN
F 3 "" H 4950 2450 50  0001 C CNN
	1    4950 2450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4950 2450 5050 2450
$Comp
L power:GND #PWR?
U 1 1 62B44A41
P 4950 2650
AR Path="/5ED2705B/62B44A41" Ref="#PWR?"  Part="1" 
AR Path="/5F1CE57C/62B44A41" Ref="#PWR?"  Part="1" 
AR Path="/5F396002/62B44A41" Ref="#PWR?"  Part="1" 
AR Path="/5F394B96/62B44A41" Ref="#PWR?"  Part="1" 
AR Path="/6041A022/62B44A41" Ref="#PWR?"  Part="1" 
AR Path="/604F08FB/62B44A41" Ref="#PWR?"  Part="1" 
AR Path="/62B3D95F/62B44A41" Ref="#PWR01707"  Part="1" 
F 0 "#PWR01707" H 4950 2400 50  0001 C CNN
F 1 "GND" H 4872 2613 50  0000 R CNN
F 2 "" H 4950 2650 50  0001 C CNN
F 3 "" H 4950 2650 50  0001 C CNN
	1    4950 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 2650 4950 2550
Wire Wire Line
	4950 2550 5050 2550
Text Notes 8650 1400 0    50   Italic 10
Approximate Clock Distribution:
Text Notes 8650 2200 0    50   Italic 10
Approximate Reset Distribution:
Wire Notes Line
	8650 1950 9750 1950
Wire Notes Line
	9750 1950 9750 1450
Wire Notes Line
	9750 1450 8650 1450
Wire Notes Line
	8650 1450 8650 1950
Wire Notes Line
	8650 2750 9750 2750
Wire Notes Line
	9750 2750 9750 2250
Wire Notes Line
	9750 2250 8650 2250
Wire Notes Line
	8650 2250 8650 2750
Wire Notes Line
	9200 2300 9200 2700
Text GLabel 6200 1950 2    31   Input ~ 0
CLK_A
Text GLabel 6200 2050 2    31   Input ~ 0
CLK_B
Wire Wire Line
	6200 2050 6050 2050
Wire Wire Line
	6050 1950 6200 1950
Text GLabel 6200 1550 2    31   Input ~ 0
RESET_A
Text GLabel 6200 1650 2    31   Input ~ 0
RESET_B
Text GLabel 6200 1750 2    31   Input ~ 0
~RESET_A
Text GLabel 6200 1850 2    31   Input ~ 0
~RESET_B
Text Notes 9400 1700 0    31   ~ 0
CLK_A
Text Notes 8850 1700 0    31   ~ 0
CLK_B
Text Notes 8800 2550 0    31   ~ 0
RESET_B\n\n~RESET_B
Text Notes 9400 2550 0    31   ~ 0
RESET_A\n\n~RESET_A
Wire Wire Line
	6050 1550 6200 1550
Wire Wire Line
	6050 1650 6200 1650
Wire Wire Line
	6200 1750 6050 1750
Wire Wire Line
	6050 1850 6200 1850
Text GLabel 4300 3150 2    31   Input ~ 0
PWR_RESET
Wire Wire Line
	4300 3150 4200 3150
Text GLabel 4450 2050 2    31   Input ~ 0
CLK
Wire Wire Line
	4450 2050 4400 2050
Wire Wire Line
	4400 2050 4400 1950
Connection ~ 4400 1950
Wire Wire Line
	4400 1950 4950 1950
Wire Wire Line
	4450 1850 4400 1850
Wire Wire Line
	4400 1850 4400 1750
Connection ~ 4400 1750
Wire Wire Line
	4400 1750 4950 1750
Text Notes 8650 1200 0    31   ~ 0
Because the CLK and RESET signals  have a high fan-out, \nthe board is split into regions and the CLK/RESET signals \nfor each section kept seperate, driven from this central\nbuffer.
Text GLabel 4450 1850 2    31   Input ~ 0
~RESET
Wire Notes Line
	9200 1500 9200 1900
NoConn ~ 6050 2150
NoConn ~ 6050 2250
Wire Wire Line
	5050 2150 4950 2150
Wire Wire Line
	4950 2150 4950 2200
Wire Wire Line
	4950 2250 5050 2250
$Comp
L power:GND #PWR?
U 1 1 62BFED06
P 4850 2200
AR Path="/5ED2705B/62BFED06" Ref="#PWR?"  Part="1" 
AR Path="/5F1CE57C/62BFED06" Ref="#PWR?"  Part="1" 
AR Path="/5F396002/62BFED06" Ref="#PWR?"  Part="1" 
AR Path="/5F394B96/62BFED06" Ref="#PWR?"  Part="1" 
AR Path="/6041A022/62BFED06" Ref="#PWR?"  Part="1" 
AR Path="/604F08FB/62BFED06" Ref="#PWR?"  Part="1" 
AR Path="/62B3D95F/62BFED06" Ref="#PWR01708"  Part="1" 
F 0 "#PWR01708" H 4850 1950 50  0001 C CNN
F 1 "GND" V 4855 2072 50  0000 R CNN
F 2 "" H 4850 2200 50  0001 C CNN
F 3 "" H 4850 2200 50  0001 C CNN
	1    4850 2200
	0    1    1    0   
$EndComp
Wire Wire Line
	4850 2200 4950 2200
Connection ~ 4950 2200
Wire Wire Line
	4950 2200 4950 2250
Wire Wire Line
	4250 1550 4950 1550
$Comp
L 74xGxx:74LVC1G04 U?
U 1 1 6512BE99
P 4550 3800
AR Path="/5ED2705B/6512BE99" Ref="U?"  Part="1" 
AR Path="/5F1CE57C/6512BE99" Ref="U?"  Part="1" 
AR Path="/5F607AA2/6512BE99" Ref="U?"  Part="1" 
AR Path="/5FD6F3D6/6512BE99" Ref="U?"  Part="1" 
AR Path="/62B3D95F/6512BE99" Ref="U308"  Part="1" 
F 0 "U308" H 4750 3600 50  0000 C CNN
F 1 "SN74LVC1G04DCK" H 4950 3700 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-353_SC-70-5" H 4550 3800 50  0001 C CNN
F 3 "http://www.ti.com/lit/sg/scyt129e/scyt129e.pdf" H 4550 3800 50  0001 C CNN
	1    4550 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 3700 4550 3600
$Comp
L power:+5V #PWR?
U 1 1 6512BEA0
P 4550 3550
AR Path="/5ED2705B/6512BEA0" Ref="#PWR?"  Part="1" 
AR Path="/5F1CE57C/6512BEA0" Ref="#PWR?"  Part="1" 
AR Path="/5F607AA2/6512BEA0" Ref="#PWR?"  Part="1" 
AR Path="/5FD6F3D6/6512BEA0" Ref="#PWR?"  Part="1" 
AR Path="/62B3D95F/6512BEA0" Ref="#PWR01731"  Part="1" 
F 0 "#PWR01731" H 4550 3400 50  0001 C CNN
F 1 "+5V" H 4492 3587 50  0000 R CNN
F 2 "" H 4550 3550 50  0001 C CNN
F 3 "" H 4550 3550 50  0001 C CNN
	1    4550 3550
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 6512BEA6
P 4700 3600
AR Path="/5ED2705B/6512BEA6" Ref="C?"  Part="1" 
AR Path="/5F1CE57C/6512BEA6" Ref="C?"  Part="1" 
AR Path="/5F607AA2/6512BEA6" Ref="C?"  Part="1" 
AR Path="/5FD6F3D6/6512BEA6" Ref="C?"  Part="1" 
AR Path="/62B3D95F/6512BEA6" Ref="C458"  Part="1" 
F 0 "C458" V 4471 3600 50  0000 C CNN
F 1 "0u1" V 4562 3600 50  0000 C CNN
F 2 "NoRef_Footprints:C_0603_1608Metric_NoRef" H 4700 3600 50  0001 C CNN
F 3 "~" H 4700 3600 50  0001 C CNN
	1    4700 3600
	0    1    1    0   
$EndComp
Wire Wire Line
	4600 3600 4550 3600
Connection ~ 4550 3600
Wire Wire Line
	4550 3600 4550 3550
$Comp
L power:GND #PWR?
U 1 1 6512BEAF
P 4850 3600
AR Path="/5ED2705B/6512BEAF" Ref="#PWR?"  Part="1" 
AR Path="/5F1CE57C/6512BEAF" Ref="#PWR?"  Part="1" 
AR Path="/5F607AA2/6512BEAF" Ref="#PWR?"  Part="1" 
AR Path="/5FD6F3D6/6512BEAF" Ref="#PWR?"  Part="1" 
AR Path="/62B3D95F/6512BEAF" Ref="#PWR01733"  Part="1" 
F 0 "#PWR01733" H 4850 3350 50  0001 C CNN
F 1 "GND" V 4855 3472 50  0000 R CNN
F 2 "" H 4850 3600 50  0001 C CNN
F 3 "" H 4850 3600 50  0001 C CNN
	1    4850 3600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4850 3600 4800 3600
$Comp
L power:GND #PWR?
U 1 1 6512BEB6
P 4550 4000
AR Path="/5ED2705B/6512BEB6" Ref="#PWR?"  Part="1" 
AR Path="/5F1CE57C/6512BEB6" Ref="#PWR?"  Part="1" 
AR Path="/5F607AA2/6512BEB6" Ref="#PWR?"  Part="1" 
AR Path="/5FD6F3D6/6512BEB6" Ref="#PWR?"  Part="1" 
AR Path="/62B3D95F/6512BEB6" Ref="#PWR01732"  Part="1" 
F 0 "#PWR01732" H 4550 3750 50  0001 C CNN
F 1 "GND" H 4555 3827 50  0000 C CNN
F 2 "" H 4550 4000 50  0001 C CNN
F 3 "" H 4550 4000 50  0001 C CNN
	1    4550 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 4000 4550 3900
Wire Wire Line
	4800 3800 5500 3800
Wire Wire Line
	4250 3800 4200 3800
Text GLabel 5500 3800 2    31   Input ~ 0
~PWR_RESET
Wire Wire Line
	4200 3800 4200 3150
Connection ~ 4200 3150
Wire Wire Line
	4200 3150 4100 3150
$EndSCHEMATC
