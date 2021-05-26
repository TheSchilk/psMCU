EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 4
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 1650 1250 0    50   Input ~ 0
0
Text HLabel 1650 1350 0    50   Input ~ 0
1
Text HLabel 1650 1450 0    50   Input ~ 0
2
Text HLabel 1650 1550 0    50   Input ~ 0
3
$Comp
L power:GND #PWR?
U 1 1 5F041963
P 1650 1750
AR Path="/5ED2705B/5F041963" Ref="#PWR?"  Part="1" 
AR Path="/5F3ED0F9/5F041963" Ref="#PWR?"  Part="1" 
AR Path="/61C3CF7F/5F041963" Ref="#PWR?"  Part="1" 
AR Path="/61C3CF88/5F041963" Ref="#PWR?"  Part="1" 
AR Path="/6301660C/5F041963" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 1650 1500 50  0001 C CNN
F 1 "GND" V 1655 1622 50  0000 R CNN
F 2 "" H 1650 1750 50  0001 C CNN
F 3 "" H 1650 1750 50  0001 C CNN
	1    1650 1750
	0    1    1    0   
$EndComp
Wire Wire Line
	1700 1850 1750 1850
Wire Wire Line
	1700 1750 1700 1850
Wire Wire Line
	1700 2050 1700 2150
Wire Wire Line
	1700 2150 1750 2150
Wire Wire Line
	1700 2050 1750 2050
Wire Wire Line
	1700 1750 1750 1750
Wire Wire Line
	2250 2800 2250 2750
$Comp
L power:GND #PWR?
U 1 1 5ED33B58
P 2250 2800
AR Path="/5ED2705B/5ED33B58" Ref="#PWR?"  Part="1" 
AR Path="/5F3ED0F9/5ED33B58" Ref="#PWR?"  Part="1" 
AR Path="/61C3CF7F/5ED33B58" Ref="#PWR?"  Part="1" 
AR Path="/61C3CF88/5ED33B58" Ref="#PWR?"  Part="1" 
AR Path="/6301660C/5ED33B58" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2250 2550 50  0001 C CNN
F 1 "GND" H 2255 2627 50  0000 C CNN
F 2 "" H 2250 2800 50  0001 C CNN
F 3 "" H 2250 2800 50  0001 C CNN
	1    2250 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 850  2500 850 
$Comp
L power:GND #PWR?
U 1 1 5ED33B51
P 2550 850
AR Path="/5ED2705B/5ED33B51" Ref="#PWR?"  Part="1" 
AR Path="/5F3ED0F9/5ED33B51" Ref="#PWR?"  Part="1" 
AR Path="/61C3CF7F/5ED33B51" Ref="#PWR?"  Part="1" 
AR Path="/61C3CF88/5ED33B51" Ref="#PWR?"  Part="1" 
AR Path="/6301660C/5ED33B51" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2550 600 50  0001 C CNN
F 1 "GND" V 2555 722 50  0000 R CNN
F 2 "" H 2550 850 50  0001 C CNN
F 3 "" H 2550 850 50  0001 C CNN
	1    2550 850 
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2250 850  2250 750 
Connection ~ 2250 850 
Wire Wire Line
	2300 850  2250 850 
$Comp
L Device:C_Small C?
U 1 1 5ED33B48
P 2400 850
AR Path="/5ED2705B/5ED33B48" Ref="C?"  Part="1" 
AR Path="/5F3ED0F9/5ED33B48" Ref="C?"  Part="1" 
AR Path="/61C3CF7F/5ED33B48" Ref="C?"  Part="1" 
AR Path="/61C3CF88/5ED33B48" Ref="C?"  Part="1" 
AR Path="/6301660C/5ED33B48" Ref="C?"  Part="1" 
F 0 "C?" V 2171 850 50  0000 C CNN
F 1 "0u1" V 2262 850 50  0000 C CNN
F 2 "NoRef_Footprints:C_0603_1608Metric_NoRef" H 2400 850 50  0001 C CNN
F 3 "~" H 2400 850 50  0001 C CNN
	1    2400 850 
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5ED33B42
P 2250 750
AR Path="/5ED2705B/5ED33B42" Ref="#PWR?"  Part="1" 
AR Path="/5F3ED0F9/5ED33B42" Ref="#PWR?"  Part="1" 
AR Path="/61C3CF7F/5ED33B42" Ref="#PWR?"  Part="1" 
AR Path="/61C3CF88/5ED33B42" Ref="#PWR?"  Part="1" 
AR Path="/6301660C/5ED33B42" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2250 600 50  0001 C CNN
F 1 "+5V" H 2192 787 50  0000 R CNN
F 2 "" H 2250 750 50  0001 C CNN
F 3 "" H 2250 750 50  0001 C CNN
	1    2250 750 
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 950  2250 850 
Text HLabel 1050 2450 0    50   Input ~ 0
RESET
Text HLabel 1050 2250 0    50   Input ~ 0
CLK
Text Notes 2300 2200 1    50   ~ 0
4-bit Register
Wire Wire Line
	1050 2450 1750 2450
Wire Wire Line
	1050 2250 1750 2250
$Comp
L power:GND #PWR?
U 1 1 60B1C24D
P 1650 2050
AR Path="/5ED2705B/60B1C24D" Ref="#PWR?"  Part="1" 
AR Path="/5F3ED0F9/60B1C24D" Ref="#PWR?"  Part="1" 
AR Path="/61C3CF7F/60B1C24D" Ref="#PWR?"  Part="1" 
AR Path="/61C3CF88/60B1C24D" Ref="#PWR?"  Part="1" 
AR Path="/6301660C/60B1C24D" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 1650 1800 50  0001 C CNN
F 1 "GND" V 1655 1922 50  0000 R CNN
F 2 "" H 1650 2050 50  0001 C CNN
F 3 "" H 1650 2050 50  0001 C CNN
	1    1650 2050
	0    1    1    0   
$EndComp
Wire Wire Line
	1650 1750 1700 1750
Connection ~ 1700 1750
Wire Wire Line
	1650 2050 1700 2050
Connection ~ 1700 2050
$Comp
L power:GND #PWR?
U 1 1 60B2AAEA
P 3200 1750
AR Path="/5ED2705B/60B2AAEA" Ref="#PWR?"  Part="1" 
AR Path="/5F3ED0F9/60B2AAEA" Ref="#PWR?"  Part="1" 
AR Path="/61C3CF7F/60B2AAEA" Ref="#PWR?"  Part="1" 
AR Path="/61C3CF88/60B2AAEA" Ref="#PWR?"  Part="1" 
AR Path="/6301660C/60B2AAEA" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3200 1500 50  0001 C CNN
F 1 "GND" V 3205 1622 50  0000 R CNN
F 2 "" H 3200 1750 50  0001 C CNN
F 3 "" H 3200 1750 50  0001 C CNN
	1    3200 1750
	0    1    1    0   
$EndComp
Wire Wire Line
	3250 1850 3300 1850
Wire Wire Line
	3250 1750 3250 1850
Wire Wire Line
	3250 2050 3250 2150
Wire Wire Line
	3250 2150 3300 2150
Wire Wire Line
	3250 2050 3300 2050
Wire Wire Line
	3250 1750 3300 1750
Wire Wire Line
	3800 2800 3800 2750
$Comp
L power:GND #PWR?
U 1 1 60B2AAF7
P 3800 2800
AR Path="/5ED2705B/60B2AAF7" Ref="#PWR?"  Part="1" 
AR Path="/5F3ED0F9/60B2AAF7" Ref="#PWR?"  Part="1" 
AR Path="/61C3CF7F/60B2AAF7" Ref="#PWR?"  Part="1" 
AR Path="/61C3CF88/60B2AAF7" Ref="#PWR?"  Part="1" 
AR Path="/6301660C/60B2AAF7" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3800 2550 50  0001 C CNN
F 1 "GND" H 3805 2627 50  0000 C CNN
F 2 "" H 3800 2800 50  0001 C CNN
F 3 "" H 3800 2800 50  0001 C CNN
	1    3800 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 850  4050 850 
$Comp
L power:GND #PWR?
U 1 1 60B2AAFE
P 4100 850
AR Path="/5ED2705B/60B2AAFE" Ref="#PWR?"  Part="1" 
AR Path="/5F3ED0F9/60B2AAFE" Ref="#PWR?"  Part="1" 
AR Path="/61C3CF7F/60B2AAFE" Ref="#PWR?"  Part="1" 
AR Path="/61C3CF88/60B2AAFE" Ref="#PWR?"  Part="1" 
AR Path="/6301660C/60B2AAFE" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4100 600 50  0001 C CNN
F 1 "GND" V 4105 722 50  0000 R CNN
F 2 "" H 4100 850 50  0001 C CNN
F 3 "" H 4100 850 50  0001 C CNN
	1    4100 850 
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3800 850  3800 750 
Connection ~ 3800 850 
Wire Wire Line
	3850 850  3800 850 
$Comp
L Device:C_Small C?
U 1 1 60B2AB07
P 3950 850
AR Path="/5ED2705B/60B2AB07" Ref="C?"  Part="1" 
AR Path="/5F3ED0F9/60B2AB07" Ref="C?"  Part="1" 
AR Path="/61C3CF7F/60B2AB07" Ref="C?"  Part="1" 
AR Path="/61C3CF88/60B2AB07" Ref="C?"  Part="1" 
AR Path="/6301660C/60B2AB07" Ref="C?"  Part="1" 
F 0 "C?" V 3721 850 50  0000 C CNN
F 1 "0u1" V 3812 850 50  0000 C CNN
F 2 "NoRef_Footprints:C_0603_1608Metric_NoRef" H 3950 850 50  0001 C CNN
F 3 "~" H 3950 850 50  0001 C CNN
	1    3950 850 
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 60B2AB0D
P 3800 750
AR Path="/5ED2705B/60B2AB0D" Ref="#PWR?"  Part="1" 
AR Path="/5F3ED0F9/60B2AB0D" Ref="#PWR?"  Part="1" 
AR Path="/61C3CF7F/60B2AB0D" Ref="#PWR?"  Part="1" 
AR Path="/61C3CF88/60B2AB0D" Ref="#PWR?"  Part="1" 
AR Path="/6301660C/60B2AB0D" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3800 600 50  0001 C CNN
F 1 "+5V" H 3742 787 50  0000 R CNN
F 2 "" H 3800 750 50  0001 C CNN
F 3 "" H 3800 750 50  0001 C CNN
	1    3800 750 
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 950  3800 850 
$Comp
L 74xx:74LS173 U?
U 1 1 60B2AB14
P 3800 1850
AR Path="/5ED2705B/60B2AB14" Ref="U?"  Part="1" 
AR Path="/5F3ED0F9/60B2AB14" Ref="U?"  Part="1" 
AR Path="/61C3CF7F/60B2AB14" Ref="U?"  Part="1" 
AR Path="/61C3CF88/60B2AB14" Ref="U?"  Part="1" 
AR Path="/6301660C/60B2AB14" Ref="U?"  Part="1" 
F 0 "U?" H 3950 2700 50  0000 C CNN
F 1 "CD74HC173PW" H 4100 2600 50  0000 C CNN
F 2 "Package_SO:TSSOP-16_4.4x5mm_P0.65mm" H 3800 1850 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS173" H 3800 1850 50  0001 C CNN
	1    3800 1850
	1    0    0    -1  
$EndComp
Text Notes 3850 2200 1    50   ~ 0
4-bit Register
$Comp
L power:GND #PWR?
U 1 1 60B2AB1F
P 3200 2050
AR Path="/5ED2705B/60B2AB1F" Ref="#PWR?"  Part="1" 
AR Path="/5F3ED0F9/60B2AB1F" Ref="#PWR?"  Part="1" 
AR Path="/61C3CF7F/60B2AB1F" Ref="#PWR?"  Part="1" 
AR Path="/61C3CF88/60B2AB1F" Ref="#PWR?"  Part="1" 
AR Path="/6301660C/60B2AB1F" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3200 1800 50  0001 C CNN
F 1 "GND" V 3205 1922 50  0000 R CNN
F 2 "" H 3200 2050 50  0001 C CNN
F 3 "" H 3200 2050 50  0001 C CNN
	1    3200 2050
	0    1    1    0   
$EndComp
Wire Wire Line
	3200 1750 3250 1750
Connection ~ 3250 1750
Wire Wire Line
	3200 2050 3250 2050
Connection ~ 3250 2050
Text Label 1700 2250 2    50   ~ 0
CLK
Text Label 1700 2450 2    50   ~ 0
RESET
$Comp
L 74xx:74LS173 U?
U 1 1 5ED33B3B
P 2250 1850
AR Path="/5ED2705B/5ED33B3B" Ref="U?"  Part="1" 
AR Path="/5F3ED0F9/5ED33B3B" Ref="U?"  Part="1" 
AR Path="/61C3CF7F/5ED33B3B" Ref="U?"  Part="1" 
AR Path="/61C3CF88/5ED33B3B" Ref="U?"  Part="1" 
AR Path="/6301660C/5ED33B3B" Ref="U?"  Part="1" 
F 0 "U?" H 2400 2700 50  0000 C CNN
F 1 "CD74HC173PW" H 2550 2600 50  0000 C CNN
F 2 "Package_SO:TSSOP-16_4.4x5mm_P0.65mm" H 2250 1850 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS173" H 2250 1850 50  0001 C CNN
	1    2250 1850
	1    0    0    -1  
$EndComp
Text Label 3050 2250 0    50   ~ 0
CLK
Text Label 3050 2450 0    50   ~ 0
RESET
Wire Wire Line
	3050 2450 3300 2450
Wire Wire Line
	3050 2250 3300 2250
Wire Wire Line
	2750 1250 3300 1250
Wire Wire Line
	2750 1350 3300 1350
Wire Wire Line
	2750 1450 3300 1450
Wire Wire Line
	2750 1550 3300 1550
Text Label 2900 1250 0    50   ~ 0
Now_0
Text Label 2900 1350 0    50   ~ 0
Now_1
Text Label 2900 1450 0    50   ~ 0
Now_2
Text Label 2900 1550 0    50   ~ 0
Now_3
Text Label 4700 1250 2    50   ~ 0
Past_0
Text Label 4700 1350 2    50   ~ 0
Past_1
Text Label 4700 1450 2    50   ~ 0
Past_2
Text Label 4700 1550 2    50   ~ 0
Past_3
Wire Wire Line
	4700 1250 4300 1250
Wire Wire Line
	4700 1350 4300 1350
Wire Wire Line
	4700 1450 4300 1450
Wire Wire Line
	4700 1550 4300 1550
Wire Wire Line
	1650 1250 1750 1250
Wire Wire Line
	1650 1350 1750 1350
Wire Wire Line
	1650 1450 1750 1450
Wire Wire Line
	1650 1550 1750 1550
$Comp
L 74xx:74LS08 U?
U 3 1 60934026
P 6750 2700
AR Path="/5F396002/60934026" Ref="U?"  Part="3" 
AR Path="/5FF66C9F/60934026" Ref="U?"  Part="3" 
AR Path="/5FF66C9F/600CC0A2/60934026" Ref="U?"  Part="3" 
AR Path="/6301660C/60934026" Ref="U?"  Part="3" 
F 0 "U?" H 6700 3050 50  0000 C CNN
F 1 "SN74HC08PW" H 6700 2950 50  0000 C CNN
F 2 "Package_SO:TSSOP-14_4.4x5mm_P0.65mm" H 6750 2700 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 6750 2700 50  0001 C CNN
	3    6750 2700
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS08 U?
U 1 1 60934032
P 6750 1000
AR Path="/5F396002/60934032" Ref="U?"  Part="1" 
AR Path="/5FF66C9F/60934032" Ref="U?"  Part="1" 
AR Path="/5FF66C9F/600CC0A2/60934032" Ref="U?"  Part="1" 
AR Path="/6301660C/60934032" Ref="U?"  Part="1" 
F 0 "U?" H 6750 1325 50  0000 C CNN
F 1 "SN74HC08PW" H 6750 1234 50  0000 C CNN
F 2 "Package_SO:TSSOP-14_4.4x5mm_P0.65mm" H 6750 1000 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 6750 1000 50  0001 C CNN
	1    6750 1000
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS08 U?
U 2 1 6093402C
P 6750 1550
AR Path="/5F396002/6093402C" Ref="U?"  Part="2" 
AR Path="/5FF66C9F/6093402C" Ref="U?"  Part="2" 
AR Path="/5FF66C9F/600CC0A2/6093402C" Ref="U?"  Part="2" 
AR Path="/6301660C/6093402C" Ref="U?"  Part="2" 
F 0 "U?" H 6750 1875 50  0000 C CNN
F 1 "SN74HC08PW" H 6750 1784 50  0000 C CNN
F 2 "Package_SO:TSSOP-14_4.4x5mm_P0.65mm" H 6750 1550 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 6750 1550 50  0001 C CNN
	2    6750 1550
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS08 U?
U 5 1 60934038
P 6700 3800
AR Path="/5F396002/60934038" Ref="U?"  Part="5" 
AR Path="/5FF66C9F/60934038" Ref="U?"  Part="5" 
AR Path="/5FF66C9F/600CC0A2/60934038" Ref="U?"  Part="5" 
AR Path="/6301660C/60934038" Ref="U?"  Part="5" 
F 0 "U?" H 6930 3846 50  0000 L CNN
F 1 "SN74HC08PW" H 6930 3755 50  0000 L CNN
F 2 "Package_SO:TSSOP-14_4.4x5mm_P0.65mm" H 6700 3800 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 6700 3800 50  0001 C CNN
	5    6700 3800
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 6093403E
P 6700 3200
AR Path="/5F396002/6093403E" Ref="#PWR?"  Part="1" 
AR Path="/5FF66C9F/6093403E" Ref="#PWR?"  Part="1" 
AR Path="/5FF66C9F/600CC0A2/6093403E" Ref="#PWR?"  Part="1" 
AR Path="/6301660C/6093403E" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6700 3050 50  0001 C CNN
F 1 "+5V" H 6715 3373 50  0000 C CNN
F 2 "" H 6700 3200 50  0001 C CNN
F 3 "" H 6700 3200 50  0001 C CNN
	1    6700 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	7000 3250 6950 3250
$Comp
L Device:C_Small C?
U 1 1 60934046
P 6850 3250
AR Path="/5ED2705B/60934046" Ref="C?"  Part="1" 
AR Path="/5F1CE57C/60934046" Ref="C?"  Part="1" 
AR Path="/5F396002/60934046" Ref="C?"  Part="1" 
AR Path="/5FF66C9F/60934046" Ref="C?"  Part="1" 
AR Path="/5FF66C9F/600CC0A2/60934046" Ref="C?"  Part="1" 
AR Path="/6301660C/60934046" Ref="C?"  Part="1" 
F 0 "C?" V 6950 3350 50  0000 C CNN
F 1 "0u1" V 6800 3350 50  0000 C CNN
F 2 "NoRef_Footprints:C_0603_1608Metric_NoRef" H 6850 3250 50  0001 C CNN
F 3 "~" H 6850 3250 50  0001 C CNN
	1    6850 3250
	0    1    1    0   
$EndComp
Wire Wire Line
	6750 3250 6700 3250
$Comp
L power:GND #PWR?
U 1 1 6093404F
P 7000 3250
AR Path="/5ED2705B/6093404F" Ref="#PWR?"  Part="1" 
AR Path="/5F1CE57C/6093404F" Ref="#PWR?"  Part="1" 
AR Path="/5F396002/6093404F" Ref="#PWR?"  Part="1" 
AR Path="/5FF66C9F/6093404F" Ref="#PWR?"  Part="1" 
AR Path="/5FF66C9F/600CC0A2/6093404F" Ref="#PWR?"  Part="1" 
AR Path="/6301660C/6093404F" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7000 3000 50  0001 C CNN
F 1 "GND" V 7005 3122 50  0000 R CNN
F 2 "" H 7000 3250 50  0001 C CNN
F 3 "" H 7000 3250 50  0001 C CNN
	1    7000 3250
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60934055
P 6700 4350
AR Path="/5ED2705B/60934055" Ref="#PWR?"  Part="1" 
AR Path="/5F1CE57C/60934055" Ref="#PWR?"  Part="1" 
AR Path="/5F396002/60934055" Ref="#PWR?"  Part="1" 
AR Path="/5FF66C9F/60934055" Ref="#PWR?"  Part="1" 
AR Path="/5FF66C9F/600CC0A2/60934055" Ref="#PWR?"  Part="1" 
AR Path="/6301660C/60934055" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6700 4100 50  0001 C CNN
F 1 "GND" V 6705 4222 50  0000 R CNN
F 2 "" H 6700 4350 50  0001 C CNN
F 3 "" H 6700 4350 50  0001 C CNN
	1    6700 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 3200 6700 3250
Wire Wire Line
	6700 3250 6700 3300
Connection ~ 6700 3250
Wire Wire Line
	6700 4350 6700 4300
$Comp
L 74xx:74HC04 U?
U 1 1 6831AFF5
P 5800 1100
AR Path="/5F396002/6831AFF5" Ref="U?"  Part="1" 
AR Path="/5FF66C9F/600CBE21/6831AFF5" Ref="U?"  Part="1" 
AR Path="/5FF66C9F/600CC0A2/6831AFF5" Ref="U?"  Part="1" 
AR Path="/6301660C/6831AFF5" Ref="U?"  Part="1" 
F 0 "U?" H 5800 1417 50  0000 C CNN
F 1 "SN74HC04PW" H 5800 1326 50  0000 C CNN
F 2 "Package_SO:TSSOP-14_4.4x5mm_P0.65mm" H 5800 1100 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74HC_HCT04.pdf" H 5800 1100 50  0001 C CNN
	1    5800 1100
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC04 U?
U 2 1 6831AFFB
P 5850 1650
AR Path="/5F396002/6831AFFB" Ref="U?"  Part="2" 
AR Path="/5FF66C9F/600CBE21/6831AFFB" Ref="U?"  Part="2" 
AR Path="/5FF66C9F/600CC0A2/6831AFFB" Ref="U?"  Part="2" 
AR Path="/6301660C/6831AFFB" Ref="U?"  Part="2" 
F 0 "U?" H 5850 1967 50  0000 C CNN
F 1 "SN74HC04PW" H 5850 1876 50  0000 C CNN
F 2 "Package_SO:TSSOP-14_4.4x5mm_P0.65mm" H 5850 1650 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74HC_HCT04.pdf" H 5850 1650 50  0001 C CNN
	2    5850 1650
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC04 U?
U 3 1 6831B001
P 5850 2200
AR Path="/5F396002/6831B001" Ref="U?"  Part="3" 
AR Path="/5FF66C9F/600CBE21/6831B001" Ref="U?"  Part="3" 
AR Path="/5FF66C9F/600CC0A2/6831B001" Ref="U?"  Part="3" 
AR Path="/6301660C/6831B001" Ref="U?"  Part="3" 
F 0 "U?" H 5850 2517 50  0000 C CNN
F 1 "SN74HC04PW" H 5850 2426 50  0000 C CNN
F 2 "Package_SO:TSSOP-14_4.4x5mm_P0.65mm" H 5850 2200 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74HC_HCT04.pdf" H 5850 2200 50  0001 C CNN
	3    5850 2200
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC04 U?
U 4 1 6831B007
P 5850 2800
AR Path="/5F396002/6831B007" Ref="U?"  Part="4" 
AR Path="/5FF66C9F/600CBE21/6831B007" Ref="U?"  Part="4" 
AR Path="/5FF66C9F/600CC0A2/6831B007" Ref="U?"  Part="4" 
AR Path="/6301660C/6831B007" Ref="U?"  Part="4" 
F 0 "U?" H 5850 3117 50  0000 C CNN
F 1 "SN74HC04PW" H 5850 3026 50  0000 C CNN
F 2 "Package_SO:TSSOP-14_4.4x5mm_P0.65mm" H 5850 2800 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74HC_HCT04.pdf" H 5850 2800 50  0001 C CNN
	4    5850 2800
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC04 U?
U 5 1 6831B00D
P 5700 5050
AR Path="/5F396002/6831B00D" Ref="U?"  Part="5" 
AR Path="/5FF66C9F/600CBE21/6831B00D" Ref="U?"  Part="5" 
AR Path="/5FF66C9F/600CC0A2/6831B00D" Ref="U?"  Part="5" 
AR Path="/6301660C/6831B00D" Ref="U?"  Part="5" 
F 0 "U?" H 5700 5367 50  0000 C CNN
F 1 "SN74HC04PW" H 5700 5276 50  0000 C CNN
F 2 "Package_SO:TSSOP-14_4.4x5mm_P0.65mm" H 5700 5050 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74HC_HCT04.pdf" H 5700 5050 50  0001 C CNN
	5    5700 5050
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC04 U?
U 6 1 6831B013
P 5700 5550
AR Path="/5F396002/6831B013" Ref="U?"  Part="6" 
AR Path="/5FF66C9F/600CBE21/6831B013" Ref="U?"  Part="6" 
AR Path="/5FF66C9F/600CC0A2/6831B013" Ref="U?"  Part="6" 
AR Path="/6301660C/6831B013" Ref="U?"  Part="6" 
F 0 "U?" H 5700 5867 50  0000 C CNN
F 1 "SN74HC04PW" H 5700 5776 50  0000 C CNN
F 2 "Package_SO:TSSOP-14_4.4x5mm_P0.65mm" H 5700 5550 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74HC_HCT04.pdf" H 5700 5550 50  0001 C CNN
	6    5700 5550
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC04 U?
U 7 1 6835AE65
P 5700 3800
AR Path="/5F396002/6835AE65" Ref="U?"  Part="7" 
AR Path="/5FF66C9F/600CBE21/6835AE65" Ref="U?"  Part="7" 
AR Path="/5FF66C9F/600CC0A2/6835AE65" Ref="U?"  Part="7" 
AR Path="/6301660C/6835AE65" Ref="U?"  Part="7" 
F 0 "U?" H 5930 3846 50  0000 L CNN
F 1 "SN74HC04PW" H 5930 3755 50  0000 L CNN
F 2 "Package_SO:TSSOP-14_4.4x5mm_P0.65mm" H 5700 3800 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74HC_HCT04.pdf" H 5700 3800 50  0001 C CNN
	7    5700 3800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6835AE6B
P 5700 4350
AR Path="/5ED2705B/6835AE6B" Ref="#PWR?"  Part="1" 
AR Path="/5F1CE57C/6835AE6B" Ref="#PWR?"  Part="1" 
AR Path="/5F396002/6835AE6B" Ref="#PWR?"  Part="1" 
AR Path="/5FF66C9F/600CBE21/6835AE6B" Ref="#PWR?"  Part="1" 
AR Path="/5FF66C9F/600CC0A2/6835AE6B" Ref="#PWR?"  Part="1" 
AR Path="/6301660C/6835AE6B" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5700 4100 50  0001 C CNN
F 1 "GND" V 5705 4222 50  0000 R CNN
F 2 "" H 5700 4350 50  0001 C CNN
F 3 "" H 5700 4350 50  0001 C CNN
	1    5700 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 4350 5700 4300
$Comp
L power:+5V #PWR?
U 1 1 6835AE72
P 5700 3200
AR Path="/5F396002/6835AE72" Ref="#PWR?"  Part="1" 
AR Path="/5FF66C9F/600CBE21/6835AE72" Ref="#PWR?"  Part="1" 
AR Path="/5FF66C9F/600CC0A2/6835AE72" Ref="#PWR?"  Part="1" 
AR Path="/6301660C/6835AE72" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5700 3050 50  0001 C CNN
F 1 "+5V" H 5715 3373 50  0000 C CNN
F 2 "" H 5700 3200 50  0001 C CNN
F 3 "" H 5700 3200 50  0001 C CNN
	1    5700 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 3200 5700 3250
Wire Wire Line
	6000 3250 5950 3250
$Comp
L Device:C_Small C?
U 1 1 6835AE7A
P 5850 3250
AR Path="/5ED2705B/6835AE7A" Ref="C?"  Part="1" 
AR Path="/5F1CE57C/6835AE7A" Ref="C?"  Part="1" 
AR Path="/5F396002/6835AE7A" Ref="C?"  Part="1" 
AR Path="/5FF66C9F/600CBE21/6835AE7A" Ref="C?"  Part="1" 
AR Path="/5FF66C9F/600CC0A2/6835AE7A" Ref="C?"  Part="1" 
AR Path="/6301660C/6835AE7A" Ref="C?"  Part="1" 
F 0 "C?" V 5950 3350 50  0000 C CNN
F 1 "0u1" V 5800 3350 50  0000 C CNN
F 2 "NoRef_Footprints:C_0603_1608Metric_NoRef" H 5850 3250 50  0001 C CNN
F 3 "~" H 5850 3250 50  0001 C CNN
	1    5850 3250
	0    1    1    0   
$EndComp
Wire Wire Line
	5750 3250 5700 3250
Connection ~ 5700 3250
Wire Wire Line
	5700 3250 5700 3300
$Comp
L power:GND #PWR?
U 1 1 6835AE83
P 6000 3250
AR Path="/5ED2705B/6835AE83" Ref="#PWR?"  Part="1" 
AR Path="/5F1CE57C/6835AE83" Ref="#PWR?"  Part="1" 
AR Path="/5F396002/6835AE83" Ref="#PWR?"  Part="1" 
AR Path="/5FF66C9F/600CBE21/6835AE83" Ref="#PWR?"  Part="1" 
AR Path="/5FF66C9F/600CC0A2/6835AE83" Ref="#PWR?"  Part="1" 
AR Path="/6301660C/6835AE83" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6000 3000 50  0001 C CNN
F 1 "GND" V 6005 3122 50  0000 R CNN
F 2 "" H 6000 3250 50  0001 C CNN
F 3 "" H 6000 3250 50  0001 C CNN
	1    6000 3250
	0    -1   -1   0   
$EndComp
$Comp
L 74xx:74LS08 U?
U 4 1 60934020
P 6750 2100
AR Path="/5F396002/60934020" Ref="U?"  Part="4" 
AR Path="/5FF66C9F/60934020" Ref="U?"  Part="4" 
AR Path="/5FF66C9F/600CC0A2/60934020" Ref="U?"  Part="4" 
AR Path="/6301660C/60934020" Ref="U?"  Part="4" 
F 0 "U?" H 6750 2425 50  0000 C CNN
F 1 "SN74HC08PW" H 6750 2334 50  0000 C CNN
F 2 "Package_SO:TSSOP-14_4.4x5mm_P0.65mm" H 6750 2100 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 6750 2100 50  0001 C CNN
	4    6750 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 1100 6450 1100
Wire Wire Line
	6150 1650 6450 1650
Wire Wire Line
	6150 2200 6450 2200
Wire Wire Line
	6450 2800 6150 2800
Text Label 5200 1100 0    50   ~ 0
Past_0
Text Label 5200 1650 0    50   ~ 0
Past_1
Text Label 5200 2200 0    50   ~ 0
Past_2
Text Label 5200 2800 0    50   ~ 0
Past_3
Text Label 6200 900  0    50   ~ 0
Now_0
Text Label 6200 1450 0    50   ~ 0
Now_1
Text Label 6200 2000 0    50   ~ 0
Now_2
Text Label 6200 2600 0    50   ~ 0
Now_3
Wire Wire Line
	6200 900  6450 900 
Wire Wire Line
	5200 1100 5500 1100
Wire Wire Line
	5200 1650 5550 1650
Wire Wire Line
	5200 2200 5550 2200
Wire Wire Line
	5200 2800 5550 2800
Wire Wire Line
	6200 2000 6450 2000
Wire Wire Line
	6200 2600 6450 2600
Wire Wire Line
	6200 1450 6450 1450
Wire Wire Line
	5400 5050 5300 5050
$Comp
L power:GND #PWR?
U 1 1 60C29D2D
P 5300 5050
F 0 "#PWR?" H 5300 4800 50  0001 C CNN
F 1 "GND" V 5305 4922 50  0000 R CNN
F 2 "" H 5300 5050 50  0001 C CNN
F 3 "" H 5300 5050 50  0001 C CNN
	1    5300 5050
	0    1    1    0   
$EndComp
Wire Wire Line
	5400 5550 5300 5550
$Comp
L power:GND #PWR?
U 1 1 60C2A656
P 5300 5550
F 0 "#PWR?" H 5300 5300 50  0001 C CNN
F 1 "GND" V 5305 5422 50  0000 R CNN
F 2 "" H 5300 5550 50  0001 C CNN
F 3 "" H 5300 5550 50  0001 C CNN
	1    5300 5550
	0    1    1    0   
$EndComp
NoConn ~ 6000 5050
NoConn ~ 6000 5550
Text HLabel 4000 4150 0    50   BiDi ~ 0
DB[7..0]
Text HLabel 4000 4250 0    50   BiDi ~ 0
DB_OUT
$EndSCHEMATC
