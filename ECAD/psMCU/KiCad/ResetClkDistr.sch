EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 85 109
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 4250 2000 0    50   Input ~ 0
RESET
Text HLabel 4250 2200 0    50   Input ~ 0
~RESET
Text HLabel 4100 3600 0    50   Input ~ 0
PWR_RESET
Text HLabel 4250 2400 0    50   Input ~ 0
CLK
$Comp
L 74xx:74HC245 U?
U 1 1 62B4237A
P 5550 2500
AR Path="/5ED2705B/62B4237A" Ref="U?"  Part="1" 
AR Path="/5F1CE57C/62B4237A" Ref="U?"  Part="1" 
AR Path="/5F396002/62B4237A" Ref="U?"  Part="1" 
AR Path="/5F394B96/62B4237A" Ref="U?"  Part="1" 
AR Path="/6041A022/62B4237A" Ref="U?"  Part="1" 
AR Path="/604F08FB/62B4237A" Ref="U?"  Part="1" 
AR Path="/62B3D95F/62B4237A" Ref="U35"  Part="1" 
F 0 "U35" H 5650 3250 50  0000 C CNN
F 1 "SN74HC245PW" H 5850 3150 50  0000 C CNN
F 2 "Package_SO:TSSOP-20_4.4x6.5mm_P0.65mm" H 5550 2500 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HC245" H 5550 2500 50  0001 C CNN
	1    5550 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 1700 5550 1600
$Comp
L power:+5V #PWR?
U 1 1 62B42381
P 5550 1500
AR Path="/5ED2705B/62B42381" Ref="#PWR?"  Part="1" 
AR Path="/5F1CE57C/62B42381" Ref="#PWR?"  Part="1" 
AR Path="/5F396002/62B42381" Ref="#PWR?"  Part="1" 
AR Path="/5F394B96/62B42381" Ref="#PWR?"  Part="1" 
AR Path="/6041A022/62B42381" Ref="#PWR?"  Part="1" 
AR Path="/604F08FB/62B42381" Ref="#PWR?"  Part="1" 
AR Path="/62B3D95F/62B42381" Ref="#PWR0828"  Part="1" 
F 0 "#PWR0828" H 5550 1350 50  0001 C CNN
F 1 "+5V" H 5492 1537 50  0000 R CNN
F 2 "" H 5550 1500 50  0001 C CNN
F 3 "" H 5550 1500 50  0001 C CNN
	1    5550 1500
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 62B42387
P 5700 1600
AR Path="/5ED2705B/62B42387" Ref="C?"  Part="1" 
AR Path="/5F1CE57C/62B42387" Ref="C?"  Part="1" 
AR Path="/5F396002/62B42387" Ref="C?"  Part="1" 
AR Path="/5F394B96/62B42387" Ref="C?"  Part="1" 
AR Path="/6041A022/62B42387" Ref="C?"  Part="1" 
AR Path="/604F08FB/62B42387" Ref="C?"  Part="1" 
AR Path="/62B3D95F/62B42387" Ref="C251"  Part="1" 
F 0 "C251" V 5471 1600 50  0000 C CNN
F 1 "0u1" V 5562 1600 50  0000 C CNN
F 2 "NoRef_Footprints:C_0603_1608Metric_NoRef" H 5700 1600 50  0001 C CNN
F 3 "~" H 5700 1600 50  0001 C CNN
	1    5700 1600
	0    1    1    0   
$EndComp
Wire Wire Line
	5600 1600 5550 1600
Connection ~ 5550 1600
Wire Wire Line
	5550 1600 5550 1500
$Comp
L power:GND #PWR?
U 1 1 62B42390
P 5850 1600
AR Path="/5ED2705B/62B42390" Ref="#PWR?"  Part="1" 
AR Path="/5F1CE57C/62B42390" Ref="#PWR?"  Part="1" 
AR Path="/5F396002/62B42390" Ref="#PWR?"  Part="1" 
AR Path="/5F394B96/62B42390" Ref="#PWR?"  Part="1" 
AR Path="/6041A022/62B42390" Ref="#PWR?"  Part="1" 
AR Path="/604F08FB/62B42390" Ref="#PWR?"  Part="1" 
AR Path="/62B3D95F/62B42390" Ref="#PWR01704"  Part="1" 
F 0 "#PWR01704" H 5850 1350 50  0001 C CNN
F 1 "GND" V 5855 1472 50  0000 R CNN
F 2 "" H 5850 1600 50  0001 C CNN
F 3 "" H 5850 1600 50  0001 C CNN
	1    5850 1600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5850 1600 5800 1600
$Comp
L power:GND #PWR?
U 1 1 62B42397
P 5550 3350
AR Path="/5ED2705B/62B42397" Ref="#PWR?"  Part="1" 
AR Path="/5F1CE57C/62B42397" Ref="#PWR?"  Part="1" 
AR Path="/5F396002/62B42397" Ref="#PWR?"  Part="1" 
AR Path="/5F394B96/62B42397" Ref="#PWR?"  Part="1" 
AR Path="/6041A022/62B42397" Ref="#PWR?"  Part="1" 
AR Path="/604F08FB/62B42397" Ref="#PWR?"  Part="1" 
AR Path="/62B3D95F/62B42397" Ref="#PWR01705"  Part="1" 
F 0 "#PWR01705" H 5550 3100 50  0001 C CNN
F 1 "GND" H 5750 3300 50  0000 C CNN
F 2 "" H 5550 3350 50  0001 C CNN
F 3 "" H 5550 3350 50  0001 C CNN
	1    5550 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 3350 5550 3300
Wire Wire Line
	4250 2400 4400 2400
Wire Wire Line
	4950 2400 4950 2500
Connection ~ 4950 2400
Wire Wire Line
	4950 2400 5050 2400
Wire Wire Line
	5050 2500 4950 2500
Wire Wire Line
	4250 2200 4400 2200
Wire Wire Line
	5050 2300 4950 2300
Wire Wire Line
	4950 2300 4950 2200
Connection ~ 4950 2200
Wire Wire Line
	4950 2200 5050 2200
Wire Wire Line
	5050 2100 4950 2100
Wire Wire Line
	4950 2100 4950 2000
Connection ~ 4950 2000
Wire Wire Line
	4950 2000 5050 2000
$Comp
L power:+5V #PWR?
U 1 1 62B43BF7
P 4950 2900
AR Path="/5ED2705B/62B43BF7" Ref="#PWR?"  Part="1" 
AR Path="/5F1CE57C/62B43BF7" Ref="#PWR?"  Part="1" 
AR Path="/5F396002/62B43BF7" Ref="#PWR?"  Part="1" 
AR Path="/5F394B96/62B43BF7" Ref="#PWR?"  Part="1" 
AR Path="/6041A022/62B43BF7" Ref="#PWR?"  Part="1" 
AR Path="/604F08FB/62B43BF7" Ref="#PWR?"  Part="1" 
AR Path="/62B3D95F/62B43BF7" Ref="#PWR01706"  Part="1" 
F 0 "#PWR01706" H 4950 2750 50  0001 C CNN
F 1 "+5V" V 4965 3028 50  0000 L CNN
F 2 "" H 4950 2900 50  0001 C CNN
F 3 "" H 4950 2900 50  0001 C CNN
	1    4950 2900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4950 2900 5050 2900
$Comp
L power:GND #PWR?
U 1 1 62B44A41
P 4950 3100
AR Path="/5ED2705B/62B44A41" Ref="#PWR?"  Part="1" 
AR Path="/5F1CE57C/62B44A41" Ref="#PWR?"  Part="1" 
AR Path="/5F396002/62B44A41" Ref="#PWR?"  Part="1" 
AR Path="/5F394B96/62B44A41" Ref="#PWR?"  Part="1" 
AR Path="/6041A022/62B44A41" Ref="#PWR?"  Part="1" 
AR Path="/604F08FB/62B44A41" Ref="#PWR?"  Part="1" 
AR Path="/62B3D95F/62B44A41" Ref="#PWR01707"  Part="1" 
F 0 "#PWR01707" H 4950 2850 50  0001 C CNN
F 1 "GND" H 4872 3063 50  0000 R CNN
F 2 "" H 4950 3100 50  0001 C CNN
F 3 "" H 4950 3100 50  0001 C CNN
	1    4950 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 3100 4950 3000
Wire Wire Line
	4950 3000 5050 3000
Text Notes 8650 1850 0    50   Italic 10
Approximate Clock Distribution:
Text Notes 8650 2650 0    50   Italic 10
Approximate Reset Distribution:
Wire Notes Line
	8650 2400 9750 2400
Wire Notes Line
	9750 2400 9750 1900
Wire Notes Line
	9750 1900 8650 1900
Wire Notes Line
	8650 1900 8650 2400
Wire Notes Line
	8650 3200 9750 3200
Wire Notes Line
	9750 3200 9750 2700
Wire Notes Line
	9750 2700 8650 2700
Wire Notes Line
	8650 2700 8650 3200
Wire Notes Line
	9200 2750 9200 3150
Text GLabel 6200 2400 2    31   Input ~ 0
CLK_A
Text GLabel 6200 2500 2    31   Input ~ 0
CLK_B
Wire Wire Line
	6200 2500 6050 2500
Wire Wire Line
	6050 2400 6200 2400
Text GLabel 6200 2000 2    31   Input ~ 0
RESET_A
Text GLabel 6200 2100 2    31   Input ~ 0
RESET_B
Text GLabel 6200 2200 2    31   Input ~ 0
~RESET_A
Text GLabel 6200 2300 2    31   Input ~ 0
~RESET_B
Text Notes 9400 2150 0    31   ~ 0
CLK_A
Text Notes 8850 2150 0    31   ~ 0
CLK_B
Text Notes 8800 3000 0    31   ~ 0
RESET_B\n\n~RESET_B
Text Notes 9400 3000 0    31   ~ 0
RESET_A\n\n~RESET_A
Wire Wire Line
	6050 2000 6200 2000
Wire Wire Line
	6050 2100 6200 2100
Wire Wire Line
	6200 2200 6050 2200
Wire Wire Line
	6050 2300 6200 2300
Text GLabel 4300 3600 2    31   Input ~ 0
PWR_RESET
Wire Wire Line
	4300 3600 4200 3600
Text GLabel 4450 2500 2    31   Input ~ 0
CLK
Wire Wire Line
	4450 2500 4400 2500
Wire Wire Line
	4400 2500 4400 2400
Connection ~ 4400 2400
Wire Wire Line
	4400 2400 4950 2400
Wire Wire Line
	4450 2300 4400 2300
Wire Wire Line
	4400 2300 4400 2200
Connection ~ 4400 2200
Wire Wire Line
	4400 2200 4950 2200
Text Notes 8650 1650 0    31   ~ 0
Because the CLK and RESET signals  have a high fan-out, \nthe board is split into regions and the CLK/RESET signals \nfor each section kept seperate, driven from this central\nbuffer.
Text GLabel 4450 2300 2    31   Input ~ 0
~RESET
Wire Notes Line
	9200 1950 9200 2350
NoConn ~ 6050 2600
NoConn ~ 6050 2700
Wire Wire Line
	5050 2600 4950 2600
Wire Wire Line
	4950 2600 4950 2650
Wire Wire Line
	4950 2700 5050 2700
$Comp
L power:GND #PWR?
U 1 1 62BFED06
P 4850 2650
AR Path="/5ED2705B/62BFED06" Ref="#PWR?"  Part="1" 
AR Path="/5F1CE57C/62BFED06" Ref="#PWR?"  Part="1" 
AR Path="/5F396002/62BFED06" Ref="#PWR?"  Part="1" 
AR Path="/5F394B96/62BFED06" Ref="#PWR?"  Part="1" 
AR Path="/6041A022/62BFED06" Ref="#PWR?"  Part="1" 
AR Path="/604F08FB/62BFED06" Ref="#PWR?"  Part="1" 
AR Path="/62B3D95F/62BFED06" Ref="#PWR01708"  Part="1" 
F 0 "#PWR01708" H 4850 2400 50  0001 C CNN
F 1 "GND" V 4855 2522 50  0000 R CNN
F 2 "" H 4850 2650 50  0001 C CNN
F 3 "" H 4850 2650 50  0001 C CNN
	1    4850 2650
	0    1    1    0   
$EndComp
Wire Wire Line
	4850 2650 4950 2650
Connection ~ 4950 2650
Wire Wire Line
	4950 2650 4950 2700
Wire Wire Line
	4250 2000 4950 2000
$Comp
L 74xGxx:74LVC1G04 U?
U 1 1 6512BE99
P 4550 4250
AR Path="/5ED2705B/6512BE99" Ref="U?"  Part="1" 
AR Path="/5F1CE57C/6512BE99" Ref="U?"  Part="1" 
AR Path="/5F607AA2/6512BE99" Ref="U?"  Part="1" 
AR Path="/5FD6F3D6/6512BE99" Ref="U?"  Part="1" 
AR Path="/62B3D95F/6512BE99" Ref="U308"  Part="1" 
F 0 "U308" H 4750 4050 50  0000 C CNN
F 1 "SN74LVC1G04DCK" H 4950 4150 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-353_SC-70-5" H 4550 4250 50  0001 C CNN
F 3 "http://www.ti.com/lit/sg/scyt129e/scyt129e.pdf" H 4550 4250 50  0001 C CNN
	1    4550 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 4150 4550 4050
$Comp
L power:+5V #PWR?
U 1 1 6512BEA0
P 4550 4000
AR Path="/5ED2705B/6512BEA0" Ref="#PWR?"  Part="1" 
AR Path="/5F1CE57C/6512BEA0" Ref="#PWR?"  Part="1" 
AR Path="/5F607AA2/6512BEA0" Ref="#PWR?"  Part="1" 
AR Path="/5FD6F3D6/6512BEA0" Ref="#PWR?"  Part="1" 
AR Path="/62B3D95F/6512BEA0" Ref="#PWR01731"  Part="1" 
F 0 "#PWR01731" H 4550 3850 50  0001 C CNN
F 1 "+5V" H 4492 4037 50  0000 R CNN
F 2 "" H 4550 4000 50  0001 C CNN
F 3 "" H 4550 4000 50  0001 C CNN
	1    4550 4000
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 6512BEA6
P 4700 4050
AR Path="/5ED2705B/6512BEA6" Ref="C?"  Part="1" 
AR Path="/5F1CE57C/6512BEA6" Ref="C?"  Part="1" 
AR Path="/5F607AA2/6512BEA6" Ref="C?"  Part="1" 
AR Path="/5FD6F3D6/6512BEA6" Ref="C?"  Part="1" 
AR Path="/62B3D95F/6512BEA6" Ref="C458"  Part="1" 
F 0 "C458" V 4471 4050 50  0000 C CNN
F 1 "0u1" V 4562 4050 50  0000 C CNN
F 2 "NoRef_Footprints:C_0603_1608Metric_NoRef" H 4700 4050 50  0001 C CNN
F 3 "~" H 4700 4050 50  0001 C CNN
	1    4700 4050
	0    1    1    0   
$EndComp
Wire Wire Line
	4600 4050 4550 4050
Connection ~ 4550 4050
Wire Wire Line
	4550 4050 4550 4000
$Comp
L power:GND #PWR?
U 1 1 6512BEAF
P 4850 4050
AR Path="/5ED2705B/6512BEAF" Ref="#PWR?"  Part="1" 
AR Path="/5F1CE57C/6512BEAF" Ref="#PWR?"  Part="1" 
AR Path="/5F607AA2/6512BEAF" Ref="#PWR?"  Part="1" 
AR Path="/5FD6F3D6/6512BEAF" Ref="#PWR?"  Part="1" 
AR Path="/62B3D95F/6512BEAF" Ref="#PWR01733"  Part="1" 
F 0 "#PWR01733" H 4850 3800 50  0001 C CNN
F 1 "GND" V 4855 3922 50  0000 R CNN
F 2 "" H 4850 4050 50  0001 C CNN
F 3 "" H 4850 4050 50  0001 C CNN
	1    4850 4050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4850 4050 4800 4050
$Comp
L power:GND #PWR?
U 1 1 6512BEB6
P 4550 4450
AR Path="/5ED2705B/6512BEB6" Ref="#PWR?"  Part="1" 
AR Path="/5F1CE57C/6512BEB6" Ref="#PWR?"  Part="1" 
AR Path="/5F607AA2/6512BEB6" Ref="#PWR?"  Part="1" 
AR Path="/5FD6F3D6/6512BEB6" Ref="#PWR?"  Part="1" 
AR Path="/62B3D95F/6512BEB6" Ref="#PWR01732"  Part="1" 
F 0 "#PWR01732" H 4550 4200 50  0001 C CNN
F 1 "GND" H 4555 4277 50  0000 C CNN
F 2 "" H 4550 4450 50  0001 C CNN
F 3 "" H 4550 4450 50  0001 C CNN
	1    4550 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 4450 4550 4350
Wire Wire Line
	4800 4250 5500 4250
Wire Wire Line
	4250 4250 4200 4250
Text GLabel 5500 4250 2    31   Input ~ 0
~PWR_RESET
Wire Wire Line
	4200 4250 4200 3600
Connection ~ 4200 3600
Wire Wire Line
	4200 3600 4100 3600
$EndSCHEMATC
