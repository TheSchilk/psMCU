EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 102 202
Title "psMCU"
Date ""
Rev ""
Comp "Philipp Schilk"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 2450 2850 1200 1100
U 5F3D6AF9
F0 "STEP_LOGIC" 50
F1 "STEP_LOGIC.sch" 50
F2 "Next_Inst" I L 2450 3150 50 
F3 "InstR_Latch_EN" I L 2450 3250 50 
F4 "Halt" I L 2450 3350 50 
F5 "Halt_Clear" I L 2450 3450 50 
F6 "BKPT_TRIG" I L 2450 3550 50 
F7 "DO_INC" O R 3650 3050 50 
F8 "DO_CLR" O R 3650 2950 50 
F9 "CLK" I L 2450 3850 50 
F10 "~RESET" I L 2450 3750 50 
F11 "INST_STEP_EN" I L 2450 2950 50 
F12 "INST_STEP" I L 2450 3050 50 
F13 "UI_Halted" O R 3650 3250 50 
F14 "UI_Halt_Inst" O R 3650 3350 50 
F15 "UI_Halt_Step" O R 3650 3450 50 
F16 "UI_Halt_Bkpt" O R 3650 3550 50 
$EndSheet
Text HLabel 2400 3550 0    50   Input ~ 0
BRPT_TRIG
Wire Wire Line
	2450 2950 1800 2950
Wire Wire Line
	1800 3050 2450 3050
Wire Wire Line
	2400 3550 2450 3550
$Comp
L power:+5V #PWR?
U 1 1 5F6323D3
P 6650 1950
AR Path="/5F607AA2/5F6323D3" Ref="#PWR?"  Part="1" 
AR Path="/60E33DBC/5F6323D3" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6650 1800 50  0001 C CNN
F 1 "+5V" H 6665 2123 50  0000 C CNN
F 2 "" H 6650 1950 50  0001 C CNN
F 3 "" H 6650 1950 50  0001 C CNN
	1    6650 1950
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5F6323D9
P 6800 2050
AR Path="/5F607AA2/5F6323D9" Ref="C?"  Part="1" 
AR Path="/60E33DBC/5F6323D9" Ref="C?"  Part="1" 
F 0 "C?" V 6571 2050 50  0000 C CNN
F 1 "0u1" V 6662 2050 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6800 2050 50  0001 C CNN
F 3 "~" H 6800 2050 50  0001 C CNN
	1    6800 2050
	0    1    1    0   
$EndComp
Wire Wire Line
	6700 2050 6650 2050
Wire Wire Line
	6650 2050 6650 1950
Wire Wire Line
	6650 2050 6650 2150
Connection ~ 6650 2050
$Comp
L power:GND #PWR?
U 1 1 5F6323E3
P 6950 2050
AR Path="/5F607AA2/5F6323E3" Ref="#PWR?"  Part="1" 
AR Path="/60E33DBC/5F6323E3" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6950 1800 50  0001 C CNN
F 1 "GND" V 6955 1922 50  0000 R CNN
F 2 "" H 6950 2050 50  0001 C CNN
F 3 "" H 6950 2050 50  0001 C CNN
	1    6950 2050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6950 2050 6900 2050
$Comp
L power:GND #PWR?
U 1 1 5F6323EA
P 6650 3800
AR Path="/5F607AA2/5F6323EA" Ref="#PWR?"  Part="1" 
AR Path="/60E33DBC/5F6323EA" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6650 3550 50  0001 C CNN
F 1 "GND" V 6655 3672 50  0000 R CNN
F 2 "" H 6650 3800 50  0001 C CNN
F 3 "" H 6650 3800 50  0001 C CNN
	1    6650 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 3750 6650 3800
Wire Wire Line
	6150 2750 6050 2750
Wire Wire Line
	6050 2750 6050 2650
Wire Wire Line
	6050 2450 6150 2450
Wire Wire Line
	6150 2550 6050 2550
Connection ~ 6050 2550
Wire Wire Line
	6050 2550 6050 2450
Wire Wire Line
	6150 2650 6050 2650
Connection ~ 6050 2650
Wire Wire Line
	6050 2650 6050 2600
$Comp
L power:GND #PWR?
U 1 1 5F635745
P 6000 2600
F 0 "#PWR?" H 6000 2350 50  0001 C CNN
F 1 "GND" V 6005 2472 50  0000 R CNN
F 2 "" H 6000 2600 50  0001 C CNN
F 3 "" H 6000 2600 50  0001 C CNN
	1    6000 2600
	0    1    1    0   
$EndComp
Wire Wire Line
	6000 2600 6050 2600
Connection ~ 6050 2600
Wire Wire Line
	6050 2600 6050 2550
Wire Wire Line
	6150 3050 6100 3050
Wire Wire Line
	6100 3050 6100 3150
Wire Wire Line
	6100 3150 6150 3150
Text HLabel 2100 7000 0    50   Input ~ 0
CLK
Text HLabel 2100 7100 0    50   Input ~ 0
~RESET
Wire Wire Line
	2100 7000 2350 7000
Wire Wire Line
	2100 7100 2350 7100
Text Label 2350 7000 2    50   ~ 0
CLK
Text Label 2350 7100 2    50   ~ 0
~R
Wire Wire Line
	2450 3850 2200 3850
Wire Wire Line
	2450 3750 2200 3750
Text Label 2200 3850 0    50   ~ 0
CLK
Text Label 2200 3750 0    50   ~ 0
~R
Wire Wire Line
	4650 4050 4900 4050
$Comp
L 74HC161:74HC161 U?
U 1 1 5F6323CD
P 6650 2950
AR Path="/5F607AA2/5F6323CD" Ref="U?"  Part="1" 
AR Path="/60E33DBC/5F6323CD" Ref="U?"  Part="1" 
AR Path="/5F6323CD" Ref="U?"  Part="1" 
F 0 "U?" H 6750 3700 50  0000 C CNN
F 1 "74HC161" H 6850 3600 50  0000 C CNN
F 2 "Package_SO:SOIC-16_3.9x9.9mm_P1.27mm" H 6650 2950 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS161" H 6650 2950 50  0001 C CNN
	1    6650 2950
	1    0    0    -1  
$EndComp
NoConn ~ 7150 2750
NoConn ~ 7150 2950
$Comp
L 74xGxx:74LVC1G04 U?
U 1 1 5F656D7F
P 5250 2950
AR Path="/5ED2705B/5F656D7F" Ref="U?"  Part="1" 
AR Path="/5F1CE57C/5F656D7F" Ref="U?"  Part="1" 
AR Path="/608BF85D/5F656D7F" Ref="U?"  Part="1" 
AR Path="/60E33DBC/5F3D6AF9/5F656D7F" Ref="U?"  Part="1" 
AR Path="/60E33DBC/5F656D7F" Ref="U?"  Part="1" 
F 0 "U?" H 5350 2750 50  0000 C CNN
F 1 "74LVC1G04" H 5500 2850 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-353_SC-70-5" H 5250 2950 50  0001 C CNN
F 3 "http://www.ti.com/lit/sg/scyt129e/scyt129e.pdf" H 5250 2950 50  0001 C CNN
	1    5250 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 2850 5250 2750
Connection ~ 5250 2750
$Comp
L power:+5V #PWR?
U 1 1 5F656D87
P 5250 2700
AR Path="/5ED2705B/5F656D87" Ref="#PWR?"  Part="1" 
AR Path="/5F1CE57C/5F656D87" Ref="#PWR?"  Part="1" 
AR Path="/608BF85D/5F656D87" Ref="#PWR?"  Part="1" 
AR Path="/60E33DBC/5F3D6AF9/5F656D87" Ref="#PWR?"  Part="1" 
AR Path="/60E33DBC/5F656D87" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5250 2550 50  0001 C CNN
F 1 "+5V" H 5265 2873 50  0000 C CNN
F 2 "" H 5250 2700 50  0001 C CNN
F 3 "" H 5250 2700 50  0001 C CNN
	1    5250 2700
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5F656D8D
P 5400 2750
AR Path="/5ED2705B/5F656D8D" Ref="C?"  Part="1" 
AR Path="/5F1CE57C/5F656D8D" Ref="C?"  Part="1" 
AR Path="/608BF85D/5F656D8D" Ref="C?"  Part="1" 
AR Path="/60E33DBC/5F3D6AF9/5F656D8D" Ref="C?"  Part="1" 
AR Path="/60E33DBC/5F656D8D" Ref="C?"  Part="1" 
F 0 "C?" V 5500 2850 50  0000 C CNN
F 1 "0u1" V 5350 2850 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5400 2750 50  0001 C CNN
F 3 "~" H 5400 2750 50  0001 C CNN
	1    5400 2750
	0    1    1    0   
$EndComp
Wire Wire Line
	5300 2750 5250 2750
Wire Wire Line
	5250 2750 5250 2700
$Comp
L power:GND #PWR?
U 1 1 5F656D95
P 5250 3150
AR Path="/5ED2705B/5F656D95" Ref="#PWR?"  Part="1" 
AR Path="/5F1CE57C/5F656D95" Ref="#PWR?"  Part="1" 
AR Path="/608BF85D/5F656D95" Ref="#PWR?"  Part="1" 
AR Path="/60E33DBC/5F3D6AF9/5F656D95" Ref="#PWR?"  Part="1" 
AR Path="/60E33DBC/5F656D95" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5250 2900 50  0001 C CNN
F 1 "GND" H 5255 2977 50  0000 C CNN
F 2 "" H 5250 3150 50  0001 C CNN
F 3 "" H 5250 3150 50  0001 C CNN
	1    5250 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 3150 5250 3050
Wire Wire Line
	5550 2750 5500 2750
$Comp
L power:GND #PWR?
U 1 1 5F656D9D
P 5550 2750
AR Path="/5ED2705B/5F656D9D" Ref="#PWR?"  Part="1" 
AR Path="/5F1CE57C/5F656D9D" Ref="#PWR?"  Part="1" 
AR Path="/608BF85D/5F656D9D" Ref="#PWR?"  Part="1" 
AR Path="/60E33DBC/5F3D6AF9/5F656D9D" Ref="#PWR?"  Part="1" 
AR Path="/60E33DBC/5F656D9D" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5550 2500 50  0001 C CNN
F 1 "GND" V 5450 2700 50  0000 R CNN
F 2 "" H 5550 2750 50  0001 C CNN
F 3 "" H 5550 2750 50  0001 C CNN
	1    5550 2750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6150 2950 5500 2950
Wire Wire Line
	6100 3150 5650 3150
Wire Wire Line
	5650 3150 5650 3400
Connection ~ 6100 3150
Text Label 4650 4050 0    50   ~ 0
CLK
Text Label 6050 3450 0    50   ~ 0
~R
Wire Wire Line
	6050 3450 6150 3450
Text Notes 6450 1700 0    50   ~ 0
Step Counter
Text HLabel 3000 1100 0    50   Input ~ 0
Inst[0..15]
Wire Bus Line
	3000 1100 3450 1100
$Sheet
S 3450 1000 1200 750 
U 5F3D8E0D
F0 "Inst_Decode_ROM" 50
F1 "Inst_Decode_ROM.sch" 50
F2 "Inst[0..15]" I L 3450 1100 50 
F3 "InstCode3" O R 4650 1100 50 
F4 "InstCode4" O R 4650 1200 50 
F5 "InstCode5" O R 4650 1300 50 
F6 "InstCode6" O R 4650 1400 50 
F7 "InstCode7" O R 4650 1500 50 
F8 "Interrupt" I L 3450 1200 50 
$EndSheet
Entry Wire Line
	7700 2450 7800 2550
Entry Wire Line
	7700 2550 7800 2650
Wire Wire Line
	4650 1100 5200 1100
Entry Wire Line
	5200 1100 5300 1200
Wire Wire Line
	4650 1200 5200 1200
Entry Wire Line
	5200 1200 5300 1300
Wire Wire Line
	4650 1300 5200 1300
Entry Wire Line
	5200 1300 5300 1400
Wire Wire Line
	4650 1400 5200 1400
Entry Wire Line
	5200 1400 5300 1500
Wire Wire Line
	4650 1500 5200 1500
Entry Wire Line
	5200 1500 5300 1600
Text Label 5200 1100 2    50   ~ 0
InstCode3
Text Label 5200 1200 2    50   ~ 0
InstCode4
Text Label 5200 1300 2    50   ~ 0
InstCode5
Text Label 5200 1400 2    50   ~ 0
InstCode6
Text Label 5200 1500 2    50   ~ 0
InstCode7
Entry Wire Line
	7700 2650 7800 2750
$Sheet
S 6550 650  700  200 
U 5F76BABD
F0 "LEDs: InstCode" 50
F1 "8BitLED.sch" 50
F2 "VAL[0..7]" I L 6550 750 50 
$EndSheet
Text Label 5550 750  0    50   ~ 0
InstCode[0..7]
Wire Bus Line
	5300 750  5300 1050
Wire Bus Line
	5300 750  6550 750 
Connection ~ 5300 1050
Wire Bus Line
	8250 5500 8050 5500
Wire Bus Line
	8050 1050 8250 1050
Wire Bus Line
	8250 2150 8050 2150
Connection ~ 8050 2150
Wire Bus Line
	8050 2150 8050 1050
Wire Bus Line
	8250 4400 8050 4400
Connection ~ 8050 4400
Connection ~ 8050 1050
Wire Bus Line
	8050 2150 8050 2800
$Sheet
S 8250 950  800  900 
U 5F3D7BFA
F0 "Control_Rom0" 50
F1 "Control_Rom.sch" 50
F2 "InstCode[0..7]" I L 8250 1050 50 
F3 "0" O R 9050 1050 50 
F4 "1" O R 9050 1150 50 
F5 "2" O R 9050 1250 50 
F6 "3" O R 9050 1350 50 
F7 "4" O R 9050 1450 50 
F8 "5" O R 9050 1550 50 
F9 "6" O R 9050 1650 50 
F10 "7" O R 9050 1750 50 
$EndSheet
$Sheet
S 8250 2050 800  900 
U 5F765D85
F0 "Control_Rom1" 50
F1 "Control_Rom.sch" 50
F2 "InstCode[0..7]" I L 8250 2150 50 
F3 "0" O R 9050 2150 50 
F4 "1" O R 9050 2250 50 
F5 "2" O R 9050 2350 50 
F6 "3" O R 9050 2450 50 
F7 "4" O R 9050 2550 50 
F8 "5" O R 9050 2650 50 
F9 "6" O R 9050 2750 50 
F10 "7" O R 9050 2850 50 
$EndSheet
$Sheet
S 8250 4300 800  900 
U 5F767EF5
F0 "Control_Rom3" 50
F1 "Control_Rom.sch" 50
F2 "InstCode[0..7]" I L 8250 4400 50 
F3 "0" O R 9050 4400 50 
F4 "1" O R 9050 4500 50 
F5 "2" O R 9050 4600 50 
F6 "3" O R 9050 4700 50 
F7 "4" O R 9050 4800 50 
F8 "5" O R 9050 4900 50 
F9 "6" O R 9050 5000 50 
F10 "7" O R 9050 5100 50 
$EndSheet
$Sheet
S 8250 5400 800  900 
U 5F768DA1
F0 "Control_Rom4" 50
F1 "Control_Rom.sch" 50
F2 "InstCode[0..7]" I L 8250 5500 50 
F3 "0" O R 9050 5500 50 
F4 "1" O R 9050 5600 50 
F5 "2" O R 9050 5700 50 
F6 "3" O R 9050 5800 50 
F7 "4" O R 9050 5900 50 
F8 "5" O R 9050 6000 50 
F9 "6" O R 9050 6100 50 
F10 "7" O R 9050 6200 50 
$EndSheet
Wire Wire Line
	9050 1650 9750 1650
Wire Wire Line
	9050 4900 9700 4900
Wire Wire Line
	9050 5500 9700 5500
Wire Wire Line
	9050 5600 9700 5600
Wire Wire Line
	9050 5700 9700 5700
Text Label 9750 1050 2    50   ~ 0
Next_Inst
Text Label 9750 1150 2    50   ~ 0
Halt
Text Label 9750 1250 2    50   ~ 0
InstReg_Latch_EN
Wire Wire Line
	9050 1250 9750 1250
Wire Wire Line
	9050 1150 9750 1150
Wire Wire Line
	9050 1050 9750 1050
Text HLabel 9750 1350 2    50   Output ~ 0
PC_Inc_EN
Text HLabel 9750 1450 2    50   Output ~ 0
PC_CondInc_EN
Text HLabel 9750 1550 2    50   Output ~ 0
PC_Latch_EN
Text Label 9750 1650 2    50   ~ 0
Halt_Clear
Wire Wire Line
	9050 1550 9750 1550
Wire Wire Line
	9050 1450 9750 1450
Wire Wire Line
	9050 1350 9750 1350
Wire Wire Line
	9050 2150 9750 2150
Wire Wire Line
	9050 2250 9750 2250
Text HLabel 9750 2150 2    50   Output ~ 0
RegA_Latch_EN
Text HLabel 9750 2250 2    50   Output ~ 0
RegA_OE
Text HLabel 9700 4900 2    50   Output ~ 0
In[0..7]->DBus
Text HLabel 9700 5500 2    50   Output ~ 0
RAM_WAsync
Text HLabel 9700 5600 2    50   Output ~ 0
RAM_RAsync_LatchSafeA
Text HLabel 9700 5700 2    50   Output ~ 0
RAM_LatchSafeDA_EN
Text HLabel 9750 1250 2    50   Output ~ 0
InstReg_Latch_EN
Wire Wire Line
	2050 6550 1350 6550
Text Label 1350 5750 0    50   ~ 0
Next_Inst
Text Label 1750 3250 0    50   ~ 0
InstReg_Latch_EN
Wire Wire Line
	2450 3250 1750 3250
Wire Wire Line
	2050 5750 1350 5750
Text Label 1350 6550 0    50   ~ 0
Halt_Clear
Text Label 1350 6150 0    50   ~ 0
Halt
Wire Wire Line
	2050 6150 1350 6150
$Sheet
S 2050 5650 700  200 
U 5F872DA4
F0 "LED: Next_Inst" 50
F1 "1BitLED.sch" 50
F2 "VAL" I L 2050 5750 50 
$EndSheet
$Sheet
S 2050 6050 700  200 
U 5F8756AE
F0 "LED: Halt" 50
F1 "1BitLED.sch" 50
F2 "VAL" I L 2050 6150 50 
$EndSheet
$Sheet
S 2050 6450 700  200 
U 5F87BE2E
F0 "LED: Halt_Clear" 50
F1 "1BitLED.sch" 50
F2 "VAL" I L 2050 6550 50 
$EndSheet
Wire Wire Line
	2450 3450 2000 3450
Text Label 2000 3150 0    50   ~ 0
Next_Inst
Wire Wire Line
	2450 3150 2000 3150
Text Label 2000 3450 0    50   ~ 0
Halt_Clear
Text Label 2000 3350 0    50   ~ 0
Halt
Wire Wire Line
	2450 3350 2000 3350
Wire Bus Line
	5300 1050 8050 1050
Wire Bus Line
	7800 2800 8050 2800
Connection ~ 8050 2800
Wire Bus Line
	8050 2800 8050 3300
$Comp
L 74xGxx:74LVC1G04 U?
U 1 1 5EF3D4C8
P 5200 4050
AR Path="/5ED2705B/5EF3D4C8" Ref="U?"  Part="1" 
AR Path="/5F1CE57C/5EF3D4C8" Ref="U?"  Part="1" 
AR Path="/608BF85D/5EF3D4C8" Ref="U?"  Part="1" 
AR Path="/60E33DBC/5F3D6AF9/5EF3D4C8" Ref="U?"  Part="1" 
AR Path="/60E33DBC/5EF3D4C8" Ref="U?"  Part="1" 
F 0 "U?" H 5300 3850 50  0000 C CNN
F 1 "74LVC1G04" H 5450 3950 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-353_SC-70-5" H 5200 4050 50  0001 C CNN
F 3 "http://www.ti.com/lit/sg/scyt129e/scyt129e.pdf" H 5200 4050 50  0001 C CNN
	1    5200 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 3950 5200 3850
Connection ~ 5200 3850
$Comp
L power:+5V #PWR?
U 1 1 5EF3D4D0
P 5200 3800
AR Path="/5ED2705B/5EF3D4D0" Ref="#PWR?"  Part="1" 
AR Path="/5F1CE57C/5EF3D4D0" Ref="#PWR?"  Part="1" 
AR Path="/608BF85D/5EF3D4D0" Ref="#PWR?"  Part="1" 
AR Path="/60E33DBC/5F3D6AF9/5EF3D4D0" Ref="#PWR?"  Part="1" 
AR Path="/60E33DBC/5EF3D4D0" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5200 3650 50  0001 C CNN
F 1 "+5V" H 5215 3973 50  0000 C CNN
F 2 "" H 5200 3800 50  0001 C CNN
F 3 "" H 5200 3800 50  0001 C CNN
	1    5200 3800
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5EF3D4D6
P 5350 3850
AR Path="/5ED2705B/5EF3D4D6" Ref="C?"  Part="1" 
AR Path="/5F1CE57C/5EF3D4D6" Ref="C?"  Part="1" 
AR Path="/608BF85D/5EF3D4D6" Ref="C?"  Part="1" 
AR Path="/60E33DBC/5F3D6AF9/5EF3D4D6" Ref="C?"  Part="1" 
AR Path="/60E33DBC/5EF3D4D6" Ref="C?"  Part="1" 
F 0 "C?" V 5450 3950 50  0000 C CNN
F 1 "0u1" V 5300 3950 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5350 3850 50  0001 C CNN
F 3 "~" H 5350 3850 50  0001 C CNN
	1    5350 3850
	0    1    1    0   
$EndComp
Wire Wire Line
	5250 3850 5200 3850
Wire Wire Line
	5200 3850 5200 3800
$Comp
L power:GND #PWR?
U 1 1 5EF3D4DE
P 5200 4250
AR Path="/5ED2705B/5EF3D4DE" Ref="#PWR?"  Part="1" 
AR Path="/5F1CE57C/5EF3D4DE" Ref="#PWR?"  Part="1" 
AR Path="/608BF85D/5EF3D4DE" Ref="#PWR?"  Part="1" 
AR Path="/60E33DBC/5F3D6AF9/5EF3D4DE" Ref="#PWR?"  Part="1" 
AR Path="/60E33DBC/5EF3D4DE" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5200 4000 50  0001 C CNN
F 1 "GND" H 5205 4077 50  0000 C CNN
F 2 "" H 5200 4250 50  0001 C CNN
F 3 "" H 5200 4250 50  0001 C CNN
	1    5200 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 4250 5200 4150
Wire Wire Line
	5500 3850 5450 3850
Wire Wire Line
	5750 4050 5750 3250
Wire Wire Line
	5750 3250 6150 3250
Wire Wire Line
	5450 4050 5750 4050
$Comp
L power:GND #PWR?
U 1 1 5EFB0519
P 5500 3850
AR Path="/5ED2705B/5EFB0519" Ref="#PWR?"  Part="1" 
AR Path="/5F1CE57C/5EFB0519" Ref="#PWR?"  Part="1" 
AR Path="/608BF85D/5EFB0519" Ref="#PWR?"  Part="1" 
AR Path="/60E33DBC/5F3D6AF9/5EFB0519" Ref="#PWR?"  Part="1" 
AR Path="/60E33DBC/5EFB0519" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5500 3600 50  0001 C CNN
F 1 "GND" H 5505 3677 50  0000 C CNN
F 2 "" H 5500 3850 50  0001 C CNN
F 3 "" H 5500 3850 50  0001 C CNN
	1    5500 3850
	0    -1   -1   0   
$EndComp
$Sheet
S 8250 3200 800  900 
U 5F47FADF
F0 "Control_Rom2" 50
F1 "Control_Rom.sch" 50
F2 "InstCode[0..7]" I L 8250 3300 50 
F3 "0" O R 9050 3300 50 
F4 "1" O R 9050 3400 50 
F5 "2" O R 9050 3500 50 
F6 "3" O R 9050 3600 50 
F7 "4" O R 9050 3700 50 
F8 "5" O R 9050 3800 50 
F9 "6" O R 9050 3900 50 
F10 "7" O R 9050 4000 50 
$EndSheet
Wire Wire Line
	9050 1750 9750 1750
Wire Wire Line
	9050 5800 9700 5800
Wire Wire Line
	9050 5900 9700 5900
Wire Wire Line
	9050 6000 9700 6000
Wire Wire Line
	9050 6100 9700 6100
Wire Wire Line
	9050 6200 9700 6200
Wire Wire Line
	9050 5000 9700 5000
Wire Wire Line
	9050 5100 9700 5100
Wire Wire Line
	9050 4400 9700 4400
Wire Wire Line
	9050 4500 9700 4500
Wire Wire Line
	9050 4600 9700 4600
Wire Wire Line
	9050 4700 9700 4700
Wire Wire Line
	9050 4800 9700 4800
Text Label 9750 1750 2    50   ~ 0
INT_Set
Wire Wire Line
	9050 2350 9750 2350
Wire Wire Line
	9050 2450 9750 2450
Wire Wire Line
	9050 2550 9750 2550
Wire Wire Line
	9050 2650 9750 2650
Wire Wire Line
	9050 2750 9750 2750
Wire Wire Line
	9050 2850 9750 2850
Text HLabel 9750 2350 2    50   Output ~ 0
RegB_Latch_EN
Text HLabel 9750 2450 2    50   Output ~ 0
RegB_OE
Text HLabel 9750 2550 2    50   Output ~ 0
RegT_LatchL_EN
Text HLabel 9750 2650 2    50   Output ~ 0
RegT_LatchH_EN
Text HLabel 9750 2650 2    50   Output ~ 0
RegT_LatchH_EN
Text HLabel 9750 2750 2    50   Output ~ 0
RegT_OE_Adr
Text HLabel 9750 2850 2    50   Output ~ 0
RegT_OE_DataL
Wire Wire Line
	9050 3300 9750 3300
Wire Wire Line
	9050 3400 9750 3400
Wire Wire Line
	9050 3500 9750 3500
Wire Wire Line
	9050 3600 9750 3600
Wire Wire Line
	9050 3700 9750 3700
Wire Wire Line
	9050 3800 9750 3800
Wire Wire Line
	9050 3900 9750 3900
Wire Wire Line
	9050 4000 9750 4000
Text HLabel 9750 3300 2    50   Output ~ 0
ALU_DoBComp
Text HLabel 9750 3400 2    50   Output ~ 0
ALU_OE
Text HLabel 9750 3500 2    50   Output ~ 0
Status_LatchAdd_EN
Text HLabel 9750 3600 2    50   Output ~ 0
Status_LatchSub_EN
Text HLabel 9750 3700 2    50   Output ~ 0
Logic_Comp_OE
Text HLabel 9750 3800 2    50   Output ~ 0
Logic_Not_OE
Text HLabel 9750 3900 2    50   Output ~ 0
Logic_Dual_OE
Text HLabel 9750 4000 2    50   Output ~ 0
BarrelS_OE
Text HLabel 9700 5800 2    50   Output ~ 0
Stack_W
Text HLabel 9700 5900 2    50   Output ~ 0
Stack_RAsync
Text HLabel 9700 6000 2    50   Output ~ 0
Stack_PresentData
Text HLabel 9700 6100 2    50   Output ~ 0
Stack_Dec_EN
Text HLabel 9700 6200 2    50   Output ~ 0
Stack_Inc+LatchSafeD_EN
Text HLabel 9700 4400 2    50   Output ~ 0
In[0..13]->ROMA
Text HLabel 9700 4500 2    50   Output ~ 0
PC[0..7]->DBus
Text HLabel 9700 4600 2    50   Output ~ 0
PC[8..13]->DBus
Text HLabel 9700 4700 2    50   Output ~ 0
In[0..7]->RAMA[0..7]
Text HLabel 9700 4800 2    50   Output ~ 0
RegB->RAMA[0..7]
Text HLabel 9700 5000 2    50   Output ~ 0
INTAdr->ROMA
Text Label 9700 5100 2    50   ~ 0
INT_Reset
Wire Bus Line
	8250 3300 8050 3300
Connection ~ 8050 3300
Wire Bus Line
	8050 3300 8050 4400
Text Label 7700 2650 2    50   ~ 0
InstCode2
Text Label 7700 2550 2    50   ~ 0
InstCode1
Text Label 7700 2450 2    50   ~ 0
InstCode0
Wire Wire Line
	7150 2650 7700 2650
Wire Wire Line
	7150 2550 7700 2550
Wire Wire Line
	7150 2450 7700 2450
$Sheet
S 3700 2050 900  200 
U 61F011FA
F0 "InstDisplay.sch" 50
F1 "InstDisplay.sch" 50
F2 "InstCode[0..7]" I R 4600 2150 50 
$EndSheet
$Comp
L 74xx_IEEE:74HC238 U?
U 1 1 61F52B82
P 4900 6800
AR Path="/60E33DBC/61F52B82" Ref="U?"  Part="1" 
AR Path="/60E33DBC/61F011FA/61F52B82" Ref="U?"  Part="1" 
F 0 "U?" H 5000 7250 50  0000 C CNN
F 1 "74HC238" H 5100 7150 50  0000 C CNN
F 2 "" H 4900 6800 50  0001 C CNN
F 3 "" H 4900 6800 50  0001 C CNN
	1    4900 6800
	1    0    0    -1  
$EndComp
Connection ~ 4900 6200
$Comp
L power:+5V #PWR?
U 1 1 61F52B89
P 4900 6150
AR Path="/5ED2705B/61F52B89" Ref="#PWR?"  Part="1" 
AR Path="/5F1CE57C/61F52B89" Ref="#PWR?"  Part="1" 
AR Path="/608BF85D/61F52B89" Ref="#PWR?"  Part="1" 
AR Path="/60E33DBC/5F3D6AF9/61F52B89" Ref="#PWR?"  Part="1" 
AR Path="/60E33DBC/61F52B89" Ref="#PWR?"  Part="1" 
AR Path="/60E33DBC/61F011FA/61F52B89" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4900 6000 50  0001 C CNN
F 1 "+5V" H 4915 6323 50  0000 C CNN
F 2 "" H 4900 6150 50  0001 C CNN
F 3 "" H 4900 6150 50  0001 C CNN
	1    4900 6150
	-1   0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 61F52B8F
P 4750 6200
AR Path="/5ED2705B/61F52B8F" Ref="C?"  Part="1" 
AR Path="/5F1CE57C/61F52B8F" Ref="C?"  Part="1" 
AR Path="/608BF85D/61F52B8F" Ref="C?"  Part="1" 
AR Path="/60E33DBC/5F3D6AF9/61F52B8F" Ref="C?"  Part="1" 
AR Path="/60E33DBC/61F52B8F" Ref="C?"  Part="1" 
AR Path="/60E33DBC/61F011FA/61F52B8F" Ref="C?"  Part="1" 
F 0 "C?" V 4850 6300 50  0000 C CNN
F 1 "0u1" V 4700 6300 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4750 6200 50  0001 C CNN
F 3 "~" H 4750 6200 50  0001 C CNN
	1    4750 6200
	0    -1   1    0   
$EndComp
Wire Wire Line
	4850 6200 4900 6200
Wire Wire Line
	4900 6200 4900 6150
Wire Wire Line
	4600 6200 4650 6200
$Comp
L power:GND #PWR?
U 1 1 61F52B98
P 4600 6200
AR Path="/5ED2705B/61F52B98" Ref="#PWR?"  Part="1" 
AR Path="/5F1CE57C/61F52B98" Ref="#PWR?"  Part="1" 
AR Path="/608BF85D/61F52B98" Ref="#PWR?"  Part="1" 
AR Path="/60E33DBC/5F3D6AF9/61F52B98" Ref="#PWR?"  Part="1" 
AR Path="/60E33DBC/61F52B98" Ref="#PWR?"  Part="1" 
AR Path="/60E33DBC/61F011FA/61F52B98" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4600 5950 50  0001 C CNN
F 1 "GND" H 4605 6027 50  0000 C CNN
F 2 "" H 4600 6200 50  0001 C CNN
F 3 "" H 4600 6200 50  0001 C CNN
	1    4600 6200
	0    1    -1   0   
$EndComp
Wire Wire Line
	4900 6200 4900 6500
$Comp
L power:GND #PWR?
U 1 1 61F52B9F
P 4900 7500
AR Path="/5ED2705B/61F52B9F" Ref="#PWR?"  Part="1" 
AR Path="/5F1CE57C/61F52B9F" Ref="#PWR?"  Part="1" 
AR Path="/608BF85D/61F52B9F" Ref="#PWR?"  Part="1" 
AR Path="/60E33DBC/5F3D6AF9/61F52B9F" Ref="#PWR?"  Part="1" 
AR Path="/60E33DBC/61F52B9F" Ref="#PWR?"  Part="1" 
AR Path="/60E33DBC/61F011FA/61F52B9F" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4900 7250 50  0001 C CNN
F 1 "GND" H 4905 7327 50  0000 C CNN
F 2 "" H 4900 7500 50  0001 C CNN
F 3 "" H 4900 7500 50  0001 C CNN
	1    4900 7500
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4900 7400 4900 7500
Wire Wire Line
	4350 6750 4300 6750
Wire Wire Line
	4300 6750 4300 6600
Wire Wire Line
	4300 6600 4350 6600
Wire Wire Line
	4300 6600 4250 6600
Connection ~ 4300 6600
$Comp
L power:GND #PWR?
U 1 1 61F52BAB
P 4250 6600
AR Path="/5ED2705B/61F52BAB" Ref="#PWR?"  Part="1" 
AR Path="/5F1CE57C/61F52BAB" Ref="#PWR?"  Part="1" 
AR Path="/608BF85D/61F52BAB" Ref="#PWR?"  Part="1" 
AR Path="/60E33DBC/5F3D6AF9/61F52BAB" Ref="#PWR?"  Part="1" 
AR Path="/60E33DBC/61F52BAB" Ref="#PWR?"  Part="1" 
AR Path="/60E33DBC/61F011FA/61F52BAB" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4250 6350 50  0001 C CNN
F 1 "GND" H 4255 6427 50  0000 C CNN
F 2 "" H 4250 6600 50  0001 C CNN
F 3 "" H 4250 6600 50  0001 C CNN
	1    4250 6600
	0    1    -1   0   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 61F52BB1
P 4250 6900
AR Path="/5ED2705B/61F52BB1" Ref="#PWR?"  Part="1" 
AR Path="/5F1CE57C/61F52BB1" Ref="#PWR?"  Part="1" 
AR Path="/608BF85D/61F52BB1" Ref="#PWR?"  Part="1" 
AR Path="/60E33DBC/5F3D6AF9/61F52BB1" Ref="#PWR?"  Part="1" 
AR Path="/60E33DBC/61F52BB1" Ref="#PWR?"  Part="1" 
AR Path="/60E33DBC/61F011FA/61F52BB1" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4250 6750 50  0001 C CNN
F 1 "+5V" H 4265 7073 50  0000 C CNN
F 2 "" H 4250 6900 50  0001 C CNN
F 3 "" H 4250 6900 50  0001 C CNN
	1    4250 6900
	0    -1   1    0   
$EndComp
Wire Wire Line
	4250 6900 4350 6900
Text Label 3850 7350 0    50   ~ 0
InstCode2
Text Label 3850 7250 0    50   ~ 0
InstCode1
Text Label 3850 7150 0    50   ~ 0
InstCode0
Wire Wire Line
	4350 7350 3850 7350
Wire Wire Line
	4350 7250 3850 7250
Wire Wire Line
	4350 7150 3850 7150
$Sheet
S 6150 7400 700  200 
U 61F52BBE
F0 "InstStep" 50
F1 "8BitLED.sch" 50
F2 "VAL[0..7]" I L 6150 7500 50 
$EndSheet
Entry Wire Line
	3750 7250 3850 7350
Entry Wire Line
	3750 7150 3850 7250
Entry Wire Line
	3750 7050 3850 7150
Entry Wire Line
	5650 6600 5750 6700
Entry Wire Line
	5650 6700 5750 6800
Entry Wire Line
	5650 6800 5750 6900
Entry Wire Line
	5650 6900 5750 7000
Entry Wire Line
	5650 7000 5750 7100
Entry Wire Line
	5650 7100 5750 7200
Entry Wire Line
	5650 7200 5750 7300
Entry Wire Line
	5650 7300 5750 7400
Text Label 5650 6600 2    50   ~ 0
VAL0
Text Label 5650 6700 2    50   ~ 0
VAL1
Text Label 5650 6800 2    50   ~ 0
VAL2
Text Label 5650 6900 2    50   ~ 0
VAL3
Text Label 5650 7000 2    50   ~ 0
VAL4
Text Label 5650 7100 2    50   ~ 0
VAL5
Text Label 5650 7200 2    50   ~ 0
VAL6
Text Label 5650 7300 2    50   ~ 0
VAL7
Text Label 5800 7500 0    50   ~ 0
VAL[0..7]
Wire Bus Line
	5750 7500 6150 7500
Wire Bus Line
	4600 2150 5300 2150
$Sheet
S 1750 1500 1050 750 
U 5FD12DEC
F0 "Interrupts" 50
F1 "Interrupts.sch" 50
F2 "Interrupt_Override" O R 2800 1650 50 
F3 "CLK" I L 1750 1650 50 
F4 "INT_Assert" I L 1750 1750 50 
F5 "INT_Set" I L 1750 1850 50 
F6 "INT_Reset" I L 1750 1950 50 
F7 "INT_Active" O R 2800 1800 50 
F8 "InstReg_Latch_EN" I L 1750 2050 50 
F9 "~RESET" I L 1750 1550 50 
F10 "INT_EN" I L 1750 2150 50 
$EndSheet
Text HLabel 1800 3050 0    50   Input ~ 0
INST_STEP
Text HLabel 1800 2950 0    50   Input ~ 0
INST_STEP_EN
Wire Wire Line
	3450 1200 3200 1200
Wire Wire Line
	3200 1200 3200 1650
Wire Bus Line
	8050 4400 8050 5500
Wire Wire Line
	5450 6600 5650 6600
Wire Wire Line
	5450 6700 5650 6700
Wire Wire Line
	5450 6800 5650 6800
Wire Wire Line
	5450 6900 5650 6900
Wire Wire Line
	5450 7000 5650 7000
Wire Wire Line
	5450 7100 5650 7100
Wire Wire Line
	5450 7200 5650 7200
Wire Wire Line
	5450 7300 5650 7300
Wire Bus Line
	3750 5750 8050 5750
Wire Bus Line
	8050 5750 8050 5500
Connection ~ 8050 5500
Wire Wire Line
	1750 1650 1500 1650
Wire Wire Line
	1750 1550 1500 1550
Text Label 1500 1650 0    50   ~ 0
CLK
Text Label 1500 1550 0    50   ~ 0
~R
Text Label 1350 1850 0    50   ~ 0
INT_Set
Text Label 1350 1950 0    50   ~ 0
INT_Reset
Wire Wire Line
	1350 1950 1750 1950
Wire Wire Line
	1350 1850 1750 1850
Text Label 1050 2050 0    50   ~ 0
InstReg_Latch_EN
Wire Wire Line
	1050 2050 1750 2050
Wire Wire Line
	1750 1750 1300 1750
Wire Wire Line
	1750 2150 1300 2150
Text HLabel 1300 1750 0    50   Input ~ 0
INT_Assert
Text HLabel 1300 2150 0    50   Input ~ 0
INT_EN
Wire Wire Line
	2800 1650 3200 1650
Wire Wire Line
	2800 1800 2900 1800
Text HLabel 2900 1800 2    50   Output ~ 0
INT_Active
Text HLabel 9700 5100 2    50   Output ~ 0
INT_Reset
Text HLabel 9750 1650 2    50   Output ~ 0
Halt_Clr
Text HLabel 9750 1750 2    50   Output ~ 0
INT_Set
Text HLabel 9750 1150 2    50   Output ~ 0
Halt
Text HLabel 9750 1050 2    50   Output ~ 0
Next_Inst
Text HLabel 3850 3250 2    50   Output ~ 0
UI_Halted
Text HLabel 3850 3350 2    50   Output ~ 0
UI_Halt_Inst
Text HLabel 3850 3450 2    50   Output ~ 0
UI_Halt_Step
Text HLabel 3850 3550 2    50   Output ~ 0
UI_Halt_Bkpt
Wire Wire Line
	3850 3250 3650 3250
Wire Wire Line
	3850 3350 3650 3350
Wire Wire Line
	3850 3450 3650 3450
Wire Wire Line
	3850 3550 3650 3550
Wire Wire Line
	4850 3050 3650 3050
Wire Wire Line
	4850 3400 5650 3400
Wire Wire Line
	3650 2950 4950 2950
Wire Wire Line
	4850 3400 4850 3050
Wire Bus Line
	7800 2550 7800 2800
Wire Bus Line
	3750 5750 3750 7250
Wire Bus Line
	5300 1050 5300 2150
Wire Bus Line
	5750 6700 5750 7500
$EndSCHEMATC
