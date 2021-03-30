EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 9
Title "Remote Control"
Date "2021-03-30"
Rev "v0.1"
Comp "Philipp Schilk"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	1900 6450 1950 6450
Wire Wire Line
	1950 6350 1950 6450
Wire Wire Line
	1400 6450 1350 6450
Wire Wire Line
	1350 6450 1350 6350
$Comp
L power:+5V #PWR0101
U 1 1 60F47A47
P 1350 6350
F 0 "#PWR0101" H 1350 6200 50  0001 C CNN
F 1 "+5V" H 1365 6523 50  0000 C CNN
F 2 "" H 1350 6350 50  0001 C CNN
F 3 "" H 1350 6350 50  0001 C CNN
	1    1350 6350
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0102
U 1 1 60F497B0
P 1950 6350
F 0 "#PWR0102" H 1950 6200 50  0001 C CNN
F 1 "+5V" H 1965 6523 50  0000 C CNN
F 2 "" H 1950 6350 50  0001 C CNN
F 3 "" H 1950 6350 50  0001 C CNN
	1    1950 6350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 7350 1350 7350
Wire Wire Line
	1350 7350 1350 7450
Wire Wire Line
	1900 7350 1950 7350
Wire Wire Line
	1950 7350 1950 7450
$Comp
L power:GND #PWR0103
U 1 1 60F4C40F
P 1950 7450
F 0 "#PWR0103" H 1950 7200 50  0001 C CNN
F 1 "GND" H 1955 7277 50  0000 C CNN
F 2 "" H 1950 7450 50  0001 C CNN
F 3 "" H 1950 7450 50  0001 C CNN
	1    1950 7450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 60F4D033
P 1350 7450
F 0 "#PWR0104" H 1350 7200 50  0001 C CNN
F 1 "GND" H 1355 7277 50  0000 C CNN
F 2 "" H 1350 7450 50  0001 C CNN
F 3 "" H 1350 7450 50  0001 C CNN
	1    1350 7450
	1    0    0    -1  
$EndComp
Text Label 2700 6550 2    50   ~ 0
BTN_DEC_CLK_F
Wire Wire Line
	650  6550 1400 6550
Wire Wire Line
	650  6650 1400 6650
Wire Wire Line
	650  6750 1400 6750
Wire Wire Line
	650  6850 1400 6850
Wire Wire Line
	650  6950 1400 6950
Wire Wire Line
	650  7050 1400 7050
Wire Wire Line
	650  7150 1400 7150
Wire Wire Line
	650  7250 1400 7250
Wire Wire Line
	1900 6550 2700 6550
Wire Wire Line
	1900 6650 2700 6650
Wire Wire Line
	1900 6750 2700 6750
Wire Wire Line
	1900 6850 2700 6850
Wire Wire Line
	1900 6950 2700 6950
Wire Wire Line
	1900 7050 2700 7050
Wire Wire Line
	1900 7150 2700 7150
Wire Wire Line
	1900 7250 2700 7250
Text Label 2700 6650 2    50   ~ 0
BTN_INC_CLK_F
Text Label 2700 6750 2    50   ~ 0
BTN_INT
Text Label 2700 6850 2    50   ~ 0
BTN_RESET
Text Label 2700 6950 2    50   ~ 0
BTN_CLK_STEP_EN
Text Label 2700 7050 2    50   ~ 0
BTN_CLK_STEP
Text Label 2700 7150 2    50   ~ 0
BTN_INST_STEP_EN
Text Label 2700 7250 2    50   ~ 0
BTN_INST_STEP
Text Label 650  6550 0    50   ~ 0
LED_INST_STEP_EN
Text Label 650  6650 0    50   ~ 0
LED_CLK_STEP_EN
Text Label 650  6750 0    50   ~ 0
LED_INT_Active
Text Label 650  6850 0    50   ~ 0
RESET
Text Label 650  6950 0    50   ~ 0
LED_Halted
Text Label 650  7050 0    50   ~ 0
LED_Halted_Inst
Text Label 650  7150 0    50   ~ 0
LED_Halted_Step
Text Label 650  7250 0    50   ~ 0
LED_Halted_Bkpt
$Sheet
S 1850 4200 650  200 
U 60F73904
F0 "Btn: Reset" 50
F1 "BTN.sch" 50
F2 "LED" I L 1850 4300 50 
F3 "Out" O R 2500 4300 50 
$EndSheet
Wire Wire Line
	1500 4300 1850 4300
Text Label 1500 4300 0    50   ~ 0
RESET
Wire Wire Line
	2500 4300 3000 4300
Text Label 3000 4300 2    50   ~ 0
BTN_RESET
$Sheet
S 1850 4900 650  200 
U 60FA12D6
F0 "Btn: Int" 50
F1 "BTN.sch" 50
F2 "LED" I L 1850 5000 50 
F3 "Out" O R 2500 5000 50 
$EndSheet
Wire Wire Line
	2500 5000 3000 5000
Text Label 1250 5000 0    50   ~ 0
LED_INT_Active
Wire Wire Line
	1250 5000 1850 5000
Text Label 3000 5000 2    50   ~ 0
BTN_INT
$Sheet
S 4150 4200 650  200 
U 60FA686E
F0 "sheet60FA686A" 50
F1 "BTN.sch" 50
F2 "LED" I L 4150 4300 50 
F3 "Out" O R 4800 4300 50 
$EndSheet
$Sheet
S 4150 4900 650  200 
U 60FA7824
F0 "sheet60FA7820" 50
F1 "BTN.sch" 50
F2 "LED" I L 4150 5000 50 
F3 "Out" O R 4800 5000 50 
$EndSheet
$Sheet
S 6850 4200 650  200 
U 60FA8167
F0 "sheet60FA8163" 50
F1 "BTN.sch" 50
F2 "LED" I L 6850 4300 50 
F3 "Out" O R 7500 4300 50 
$EndSheet
$Sheet
S 6850 4900 650  200 
U 60FA8857
F0 "sheet60FA8853" 50
F1 "BTN.sch" 50
F2 "LED" I L 6850 5000 50 
F3 "Out" O R 7500 5000 50 
$EndSheet
$Sheet
S 9150 4200 650  200 
U 60FAB88D
F0 "sheet60FAB888" 50
F1 "BTN.sch" 50
F2 "LED" I L 9150 4300 50 
F3 "Out" O R 9800 4300 50 
$EndSheet
$Sheet
S 9150 4900 650  200 
U 60FAB893
F0 "sheet60FAB889" 50
F1 "BTN.sch" 50
F2 "LED" I L 9150 5000 50 
F3 "Out" O R 9800 5000 50 
$EndSheet
Text Label 10450 5000 2    50   ~ 0
BTN_DEC_CLK_F
Text Label 10450 4300 2    50   ~ 0
BTN_INC_CLK_F
Wire Wire Line
	9800 4300 10100 4300
Wire Wire Line
	9800 5000 10100 5000
Wire Wire Line
	10100 5000 10100 5300
Wire Wire Line
	10100 5300 9050 5300
Wire Wire Line
	9050 5300 9050 5000
Connection ~ 10100 5000
Wire Wire Line
	10100 5000 10450 5000
Wire Wire Line
	9050 5000 9150 5000
Wire Wire Line
	10100 4300 10100 4550
Wire Wire Line
	10100 4550 9050 4550
Wire Wire Line
	9050 4550 9050 4300
Connection ~ 10100 4300
Wire Wire Line
	10100 4300 10450 4300
Wire Wire Line
	9050 4300 9150 4300
Wire Wire Line
	5100 5000 5100 5300
Wire Wire Line
	5100 5300 4050 5300
Wire Wire Line
	4050 5300 4050 5000
Wire Wire Line
	7800 5000 7800 5300
Wire Wire Line
	7800 5300 6750 5300
Wire Wire Line
	6750 5300 6750 5000
Wire Wire Line
	4800 5000 5100 5000
Connection ~ 5100 5000
Wire Wire Line
	4050 5000 4150 5000
Wire Wire Line
	6750 5000 6850 5000
Wire Wire Line
	7500 5000 7800 5000
Connection ~ 7800 5000
Text Label 8250 4300 2    50   ~ 0
BTN_CLK_STEP_EN
Text Label 8200 5000 2    50   ~ 0
BTN_CLK_STEP
Text Label 5600 4300 2    50   ~ 0
BTN_INST_STEP_EN
Text Label 5450 5000 2    50   ~ 0
BTN_INST_STEP
Wire Wire Line
	7500 4300 8250 4300
Wire Wire Line
	7800 5000 8200 5000
Wire Wire Line
	4800 4300 5600 4300
Text Label 3400 4300 0    50   ~ 0
LED_INST_STEP_EN
Wire Wire Line
	3400 4300 4150 4300
Text Label 6100 4300 0    50   ~ 0
LED_CLK_STEP_EN
Wire Wire Line
	6100 4300 6850 4300
Wire Wire Line
	2250 1350 2400 1350
Wire Wire Line
	2400 1350 2400 1450
Wire Wire Line
	2400 1650 2400 1750
$Comp
L power:GND #PWR?
U 1 1 6100A477
P 2400 1750
AR Path="/60F73904/6100A477" Ref="#PWR?"  Part="1" 
AR Path="/60FA12D6/6100A477" Ref="#PWR?"  Part="1" 
AR Path="/60FA686E/6100A477" Ref="#PWR?"  Part="1" 
AR Path="/60FA7824/6100A477" Ref="#PWR?"  Part="1" 
AR Path="/60FA8167/6100A477" Ref="#PWR?"  Part="1" 
AR Path="/60FA8857/6100A477" Ref="#PWR?"  Part="1" 
AR Path="/60FAB88D/6100A477" Ref="#PWR?"  Part="1" 
AR Path="/60FAB893/6100A477" Ref="#PWR?"  Part="1" 
AR Path="/6100A477" Ref="#PWR0105"  Part="1" 
F 0 "#PWR0105" H 2400 1500 50  0001 C CNN
F 1 "GND" H 2405 1577 50  0000 C CNN
F 2 "" H 2400 1750 50  0001 C CNN
F 3 "" H 2400 1750 50  0001 C CNN
	1    2400 1750
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2250 2300 2400 2300
Wire Wire Line
	2400 2300 2400 2400
Wire Wire Line
	2400 2600 2400 2700
$Comp
L power:GND #PWR?
U 1 1 6100DEA1
P 2400 2700
AR Path="/60F73904/6100DEA1" Ref="#PWR?"  Part="1" 
AR Path="/60FA12D6/6100DEA1" Ref="#PWR?"  Part="1" 
AR Path="/60FA686E/6100DEA1" Ref="#PWR?"  Part="1" 
AR Path="/60FA7824/6100DEA1" Ref="#PWR?"  Part="1" 
AR Path="/60FA8167/6100DEA1" Ref="#PWR?"  Part="1" 
AR Path="/60FA8857/6100DEA1" Ref="#PWR?"  Part="1" 
AR Path="/60FAB88D/6100DEA1" Ref="#PWR?"  Part="1" 
AR Path="/60FAB893/6100DEA1" Ref="#PWR?"  Part="1" 
AR Path="/6100DEA1" Ref="#PWR0106"  Part="1" 
F 0 "#PWR0106" H 2400 2450 50  0001 C CNN
F 1 "GND" H 2405 2527 50  0000 C CNN
F 2 "" H 2400 2700 50  0001 C CNN
F 3 "" H 2400 2700 50  0001 C CNN
	1    2400 2700
	-1   0    0    -1  
$EndComp
Text Label 1400 2300 0    50   ~ 0
LED_INT_Active
Wire Wire Line
	1400 2300 1950 2300
Text Label 1400 1350 0    50   ~ 0
RESET
Wire Wire Line
	1400 1350 1950 1350
Text Notes 2850 900  0    100  ~ 0
Processor State:
Text Label 2800 1350 0    50   ~ 0
LED_Halted
Wire Wire Line
	3850 1350 4000 1350
Wire Wire Line
	4000 1350 4000 1450
Wire Wire Line
	4000 1650 4000 1750
$Comp
L power:GND #PWR?
U 1 1 61029D0A
P 4000 1750
AR Path="/60F73904/61029D0A" Ref="#PWR?"  Part="1" 
AR Path="/60FA12D6/61029D0A" Ref="#PWR?"  Part="1" 
AR Path="/60FA686E/61029D0A" Ref="#PWR?"  Part="1" 
AR Path="/60FA7824/61029D0A" Ref="#PWR?"  Part="1" 
AR Path="/60FA8167/61029D0A" Ref="#PWR?"  Part="1" 
AR Path="/60FA8857/61029D0A" Ref="#PWR?"  Part="1" 
AR Path="/60FAB88D/61029D0A" Ref="#PWR?"  Part="1" 
AR Path="/60FAB893/61029D0A" Ref="#PWR?"  Part="1" 
AR Path="/61029D0A" Ref="#PWR0107"  Part="1" 
F 0 "#PWR0107" H 4000 1500 50  0001 C CNN
F 1 "GND" H 4005 1577 50  0000 C CNN
F 2 "" H 4000 1750 50  0001 C CNN
F 3 "" H 4000 1750 50  0001 C CNN
	1    4000 1750
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3850 2300 4000 2300
Wire Wire Line
	4000 2300 4000 2400
Wire Wire Line
	4000 2600 4000 2700
$Comp
L power:GND #PWR?
U 1 1 6102C7A0
P 4000 2700
AR Path="/60F73904/6102C7A0" Ref="#PWR?"  Part="1" 
AR Path="/60FA12D6/6102C7A0" Ref="#PWR?"  Part="1" 
AR Path="/60FA686E/6102C7A0" Ref="#PWR?"  Part="1" 
AR Path="/60FA7824/6102C7A0" Ref="#PWR?"  Part="1" 
AR Path="/60FA8167/6102C7A0" Ref="#PWR?"  Part="1" 
AR Path="/60FA8857/6102C7A0" Ref="#PWR?"  Part="1" 
AR Path="/60FAB88D/6102C7A0" Ref="#PWR?"  Part="1" 
AR Path="/60FAB893/6102C7A0" Ref="#PWR?"  Part="1" 
AR Path="/6102C7A0" Ref="#PWR0108"  Part="1" 
F 0 "#PWR0108" H 4000 2450 50  0001 C CNN
F 1 "GND" H 4005 2527 50  0000 C CNN
F 2 "" H 4000 2700 50  0001 C CNN
F 3 "" H 4000 2700 50  0001 C CNN
	1    4000 2700
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3550 2300 3350 2300
Wire Wire Line
	2800 1350 3350 1350
Wire Wire Line
	3350 1350 3350 2300
Connection ~ 3350 1350
Wire Wire Line
	3350 1350 3550 1350
Text Notes 1700 900  0    100  ~ 0
Status:
Text Notes 4600 900  0    100  ~ 0
Reason for Halt:
Wire Wire Line
	5450 1350 5600 1350
Wire Wire Line
	5600 1350 5600 1450
Wire Wire Line
	5600 1650 5600 1750
$Comp
L power:GND #PWR?
U 1 1 6113EE20
P 5600 1750
AR Path="/60F73904/6113EE20" Ref="#PWR?"  Part="1" 
AR Path="/60FA12D6/6113EE20" Ref="#PWR?"  Part="1" 
AR Path="/60FA686E/6113EE20" Ref="#PWR?"  Part="1" 
AR Path="/60FA7824/6113EE20" Ref="#PWR?"  Part="1" 
AR Path="/60FA8167/6113EE20" Ref="#PWR?"  Part="1" 
AR Path="/60FA8857/6113EE20" Ref="#PWR?"  Part="1" 
AR Path="/60FAB88D/6113EE20" Ref="#PWR?"  Part="1" 
AR Path="/60FAB893/6113EE20" Ref="#PWR?"  Part="1" 
AR Path="/6113EE20" Ref="#PWR0113"  Part="1" 
F 0 "#PWR0113" H 5600 1500 50  0001 C CNN
F 1 "GND" H 5605 1577 50  0000 C CNN
F 2 "" H 5600 1750 50  0001 C CNN
F 3 "" H 5600 1750 50  0001 C CNN
	1    5600 1750
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5450 2300 5600 2300
Wire Wire Line
	5600 2300 5600 2400
Wire Wire Line
	5600 2600 5600 2700
$Comp
L power:GND #PWR?
U 1 1 6113EE35
P 5600 2700
AR Path="/60F73904/6113EE35" Ref="#PWR?"  Part="1" 
AR Path="/60FA12D6/6113EE35" Ref="#PWR?"  Part="1" 
AR Path="/60FA686E/6113EE35" Ref="#PWR?"  Part="1" 
AR Path="/60FA7824/6113EE35" Ref="#PWR?"  Part="1" 
AR Path="/60FA8167/6113EE35" Ref="#PWR?"  Part="1" 
AR Path="/60FA8857/6113EE35" Ref="#PWR?"  Part="1" 
AR Path="/60FAB88D/6113EE35" Ref="#PWR?"  Part="1" 
AR Path="/60FAB893/6113EE35" Ref="#PWR?"  Part="1" 
AR Path="/6113EE35" Ref="#PWR0114"  Part="1" 
F 0 "#PWR0114" H 5600 2450 50  0001 C CNN
F 1 "GND" H 5605 2527 50  0000 C CNN
F 2 "" H 5600 2700 50  0001 C CNN
F 3 "" H 5600 2700 50  0001 C CNN
	1    5600 2700
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4550 2300 5150 2300
Wire Wire Line
	4550 1350 5150 1350
Wire Wire Line
	5450 3250 5600 3250
Wire Wire Line
	5600 3250 5600 3350
Wire Wire Line
	5600 3550 5600 3650
$Comp
L power:GND #PWR?
U 1 1 611491D2
P 5600 3650
AR Path="/60F73904/611491D2" Ref="#PWR?"  Part="1" 
AR Path="/60FA12D6/611491D2" Ref="#PWR?"  Part="1" 
AR Path="/60FA686E/611491D2" Ref="#PWR?"  Part="1" 
AR Path="/60FA7824/611491D2" Ref="#PWR?"  Part="1" 
AR Path="/60FA8167/611491D2" Ref="#PWR?"  Part="1" 
AR Path="/60FA8857/611491D2" Ref="#PWR?"  Part="1" 
AR Path="/60FAB88D/611491D2" Ref="#PWR?"  Part="1" 
AR Path="/60FAB893/611491D2" Ref="#PWR?"  Part="1" 
AR Path="/611491D2" Ref="#PWR0115"  Part="1" 
F 0 "#PWR0115" H 5600 3400 50  0001 C CNN
F 1 "GND" H 5605 3477 50  0000 C CNN
F 2 "" H 5600 3650 50  0001 C CNN
F 3 "" H 5600 3650 50  0001 C CNN
	1    5600 3650
	-1   0    0    -1  
$EndComp
Text Label 4550 1350 0    50   ~ 0
LED_Halted_Inst
Text Label 4550 2300 0    50   ~ 0
LED_Halted_Step
Text Label 4550 3250 0    50   ~ 0
LED_Halted_Bkpt
Wire Wire Line
	4550 3250 5150 3250
Wire Wire Line
	5100 5000 5450 5000
$Comp
L Device:LED D?
U 1 1 611491D8
P 5300 3250
AR Path="/60F73904/611491D8" Ref="D?"  Part="1" 
AR Path="/60FA12D6/611491D8" Ref="D?"  Part="1" 
AR Path="/60FA686E/611491D8" Ref="D?"  Part="1" 
AR Path="/60FA7824/611491D8" Ref="D?"  Part="1" 
AR Path="/60FA8167/611491D8" Ref="D?"  Part="1" 
AR Path="/60FA8857/611491D8" Ref="D?"  Part="1" 
AR Path="/60FAB88D/611491D8" Ref="D?"  Part="1" 
AR Path="/60FAB893/611491D8" Ref="D?"  Part="1" 
AR Path="/611491D8" Ref="D11"  Part="1" 
F 0 "D11" H 5293 2995 50  0000 C CNN
F 1 "LED" H 5293 3086 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm" H 5300 3250 50  0001 C CNN
F 3 "~" H 5300 3250 50  0001 C CNN
	1    5300 3250
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 611491C9
P 5600 3450
AR Path="/60F73904/611491C9" Ref="R?"  Part="1" 
AR Path="/60FA12D6/611491C9" Ref="R?"  Part="1" 
AR Path="/60FA686E/611491C9" Ref="R?"  Part="1" 
AR Path="/60FA7824/611491C9" Ref="R?"  Part="1" 
AR Path="/60FA8167/611491C9" Ref="R?"  Part="1" 
AR Path="/60FA8857/611491C9" Ref="R?"  Part="1" 
AR Path="/60FAB88D/611491C9" Ref="R?"  Part="1" 
AR Path="/60FAB893/611491C9" Ref="R?"  Part="1" 
AR Path="/611491C9" Ref="R11"  Part="1" 
F 0 "R11" H 5541 3496 50  0000 R CNN
F 1 "rled" H 5541 3405 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 5600 3450 50  0001 C CNN
F 3 "~" H 5600 3450 50  0001 C CNN
	1    5600 3450
	-1   0    0    -1  
$EndComp
$Comp
L Device:LED D?
U 1 1 6113EE3B
P 5300 2300
AR Path="/60F73904/6113EE3B" Ref="D?"  Part="1" 
AR Path="/60FA12D6/6113EE3B" Ref="D?"  Part="1" 
AR Path="/60FA686E/6113EE3B" Ref="D?"  Part="1" 
AR Path="/60FA7824/6113EE3B" Ref="D?"  Part="1" 
AR Path="/60FA8167/6113EE3B" Ref="D?"  Part="1" 
AR Path="/60FA8857/6113EE3B" Ref="D?"  Part="1" 
AR Path="/60FAB88D/6113EE3B" Ref="D?"  Part="1" 
AR Path="/60FAB893/6113EE3B" Ref="D?"  Part="1" 
AR Path="/6113EE3B" Ref="D10"  Part="1" 
F 0 "D10" H 5293 2045 50  0000 C CNN
F 1 "LED" H 5293 2136 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm" H 5300 2300 50  0001 C CNN
F 3 "~" H 5300 2300 50  0001 C CNN
	1    5300 2300
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 6113EE2C
P 5600 2500
AR Path="/60F73904/6113EE2C" Ref="R?"  Part="1" 
AR Path="/60FA12D6/6113EE2C" Ref="R?"  Part="1" 
AR Path="/60FA686E/6113EE2C" Ref="R?"  Part="1" 
AR Path="/60FA7824/6113EE2C" Ref="R?"  Part="1" 
AR Path="/60FA8167/6113EE2C" Ref="R?"  Part="1" 
AR Path="/60FA8857/6113EE2C" Ref="R?"  Part="1" 
AR Path="/60FAB88D/6113EE2C" Ref="R?"  Part="1" 
AR Path="/60FAB893/6113EE2C" Ref="R?"  Part="1" 
AR Path="/6113EE2C" Ref="R10"  Part="1" 
F 0 "R10" H 5541 2546 50  0000 R CNN
F 1 "rled" H 5541 2455 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 5600 2500 50  0001 C CNN
F 3 "~" H 5600 2500 50  0001 C CNN
	1    5600 2500
	-1   0    0    -1  
$EndComp
$Comp
L Device:LED D?
U 1 1 6113EE26
P 5300 1350
AR Path="/60F73904/6113EE26" Ref="D?"  Part="1" 
AR Path="/60FA12D6/6113EE26" Ref="D?"  Part="1" 
AR Path="/60FA686E/6113EE26" Ref="D?"  Part="1" 
AR Path="/60FA7824/6113EE26" Ref="D?"  Part="1" 
AR Path="/60FA8167/6113EE26" Ref="D?"  Part="1" 
AR Path="/60FA8857/6113EE26" Ref="D?"  Part="1" 
AR Path="/60FAB88D/6113EE26" Ref="D?"  Part="1" 
AR Path="/60FAB893/6113EE26" Ref="D?"  Part="1" 
AR Path="/6113EE26" Ref="D9"  Part="1" 
F 0 "D9" H 5293 1095 50  0000 C CNN
F 1 "LED" H 5293 1186 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm" H 5300 1350 50  0001 C CNN
F 3 "~" H 5300 1350 50  0001 C CNN
	1    5300 1350
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 6113EE17
P 5600 1550
AR Path="/60F73904/6113EE17" Ref="R?"  Part="1" 
AR Path="/60FA12D6/6113EE17" Ref="R?"  Part="1" 
AR Path="/60FA686E/6113EE17" Ref="R?"  Part="1" 
AR Path="/60FA7824/6113EE17" Ref="R?"  Part="1" 
AR Path="/60FA8167/6113EE17" Ref="R?"  Part="1" 
AR Path="/60FA8857/6113EE17" Ref="R?"  Part="1" 
AR Path="/60FAB88D/6113EE17" Ref="R?"  Part="1" 
AR Path="/60FAB893/6113EE17" Ref="R?"  Part="1" 
AR Path="/6113EE17" Ref="R9"  Part="1" 
F 0 "R9" H 5541 1596 50  0000 R CNN
F 1 "rled" H 5541 1505 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 5600 1550 50  0001 C CNN
F 3 "~" H 5600 1550 50  0001 C CNN
	1    5600 1550
	-1   0    0    -1  
$EndComp
$Comp
L Device:LED D?
U 1 1 6102C7A6
P 3700 2300
AR Path="/60F73904/6102C7A6" Ref="D?"  Part="1" 
AR Path="/60FA12D6/6102C7A6" Ref="D?"  Part="1" 
AR Path="/60FA686E/6102C7A6" Ref="D?"  Part="1" 
AR Path="/60FA7824/6102C7A6" Ref="D?"  Part="1" 
AR Path="/60FA8167/6102C7A6" Ref="D?"  Part="1" 
AR Path="/60FA8857/6102C7A6" Ref="D?"  Part="1" 
AR Path="/60FAB88D/6102C7A6" Ref="D?"  Part="1" 
AR Path="/60FAB893/6102C7A6" Ref="D?"  Part="1" 
AR Path="/6102C7A6" Ref="D8"  Part="1" 
F 0 "D8" H 3693 2517 50  0000 C CNN
F 1 "LED" H 3693 2426 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm" H 3700 2300 50  0001 C CNN
F 3 "~" H 3700 2300 50  0001 C CNN
	1    3700 2300
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 6102C797
P 4000 2500
AR Path="/60F73904/6102C797" Ref="R?"  Part="1" 
AR Path="/60FA12D6/6102C797" Ref="R?"  Part="1" 
AR Path="/60FA686E/6102C797" Ref="R?"  Part="1" 
AR Path="/60FA7824/6102C797" Ref="R?"  Part="1" 
AR Path="/60FA8167/6102C797" Ref="R?"  Part="1" 
AR Path="/60FA8857/6102C797" Ref="R?"  Part="1" 
AR Path="/60FAB88D/6102C797" Ref="R?"  Part="1" 
AR Path="/60FAB893/6102C797" Ref="R?"  Part="1" 
AR Path="/6102C797" Ref="R8"  Part="1" 
F 0 "R8" H 3941 2546 50  0000 R CNN
F 1 "rled" H 3941 2455 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 4000 2500 50  0001 C CNN
F 3 "~" H 4000 2500 50  0001 C CNN
	1    4000 2500
	-1   0    0    -1  
$EndComp
$Comp
L Device:LED D?
U 1 1 61029D10
P 3700 1350
AR Path="/60F73904/61029D10" Ref="D?"  Part="1" 
AR Path="/60FA12D6/61029D10" Ref="D?"  Part="1" 
AR Path="/60FA686E/61029D10" Ref="D?"  Part="1" 
AR Path="/60FA7824/61029D10" Ref="D?"  Part="1" 
AR Path="/60FA8167/61029D10" Ref="D?"  Part="1" 
AR Path="/60FA8857/61029D10" Ref="D?"  Part="1" 
AR Path="/60FAB88D/61029D10" Ref="D?"  Part="1" 
AR Path="/60FAB893/61029D10" Ref="D?"  Part="1" 
AR Path="/61029D10" Ref="D7"  Part="1" 
F 0 "D7" H 3693 1095 50  0000 C CNN
F 1 "LED" H 3693 1186 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm" H 3700 1350 50  0001 C CNN
F 3 "~" H 3700 1350 50  0001 C CNN
	1    3700 1350
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 61029D01
P 4000 1550
AR Path="/60F73904/61029D01" Ref="R?"  Part="1" 
AR Path="/60FA12D6/61029D01" Ref="R?"  Part="1" 
AR Path="/60FA686E/61029D01" Ref="R?"  Part="1" 
AR Path="/60FA7824/61029D01" Ref="R?"  Part="1" 
AR Path="/60FA8167/61029D01" Ref="R?"  Part="1" 
AR Path="/60FA8857/61029D01" Ref="R?"  Part="1" 
AR Path="/60FAB88D/61029D01" Ref="R?"  Part="1" 
AR Path="/60FAB893/61029D01" Ref="R?"  Part="1" 
AR Path="/61029D01" Ref="R7"  Part="1" 
F 0 "R7" H 3941 1596 50  0000 R CNN
F 1 "rled" H 3941 1505 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 4000 1550 50  0001 C CNN
F 3 "~" H 4000 1550 50  0001 C CNN
	1    4000 1550
	-1   0    0    -1  
$EndComp
$Comp
L Device:LED D?
U 1 1 6100DEA7
P 2100 2300
AR Path="/60F73904/6100DEA7" Ref="D?"  Part="1" 
AR Path="/60FA12D6/6100DEA7" Ref="D?"  Part="1" 
AR Path="/60FA686E/6100DEA7" Ref="D?"  Part="1" 
AR Path="/60FA7824/6100DEA7" Ref="D?"  Part="1" 
AR Path="/60FA8167/6100DEA7" Ref="D?"  Part="1" 
AR Path="/60FA8857/6100DEA7" Ref="D?"  Part="1" 
AR Path="/60FAB88D/6100DEA7" Ref="D?"  Part="1" 
AR Path="/60FAB893/6100DEA7" Ref="D?"  Part="1" 
AR Path="/6100DEA7" Ref="D2"  Part="1" 
F 0 "D2" H 2093 2045 50  0000 C CNN
F 1 "LED" H 2093 2136 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm" H 2100 2300 50  0001 C CNN
F 3 "~" H 2100 2300 50  0001 C CNN
	1    2100 2300
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 6100DE98
P 2400 2500
AR Path="/60F73904/6100DE98" Ref="R?"  Part="1" 
AR Path="/60FA12D6/6100DE98" Ref="R?"  Part="1" 
AR Path="/60FA686E/6100DE98" Ref="R?"  Part="1" 
AR Path="/60FA7824/6100DE98" Ref="R?"  Part="1" 
AR Path="/60FA8167/6100DE98" Ref="R?"  Part="1" 
AR Path="/60FA8857/6100DE98" Ref="R?"  Part="1" 
AR Path="/60FAB88D/6100DE98" Ref="R?"  Part="1" 
AR Path="/60FAB893/6100DE98" Ref="R?"  Part="1" 
AR Path="/6100DE98" Ref="R2"  Part="1" 
F 0 "R2" H 2341 2546 50  0000 R CNN
F 1 "rled" H 2341 2455 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 2400 2500 50  0001 C CNN
F 3 "~" H 2400 2500 50  0001 C CNN
	1    2400 2500
	-1   0    0    -1  
$EndComp
$Comp
L Device:LED D?
U 1 1 6100A47D
P 2100 1350
AR Path="/60F73904/6100A47D" Ref="D?"  Part="1" 
AR Path="/60FA12D6/6100A47D" Ref="D?"  Part="1" 
AR Path="/60FA686E/6100A47D" Ref="D?"  Part="1" 
AR Path="/60FA7824/6100A47D" Ref="D?"  Part="1" 
AR Path="/60FA8167/6100A47D" Ref="D?"  Part="1" 
AR Path="/60FA8857/6100A47D" Ref="D?"  Part="1" 
AR Path="/60FAB88D/6100A47D" Ref="D?"  Part="1" 
AR Path="/60FAB893/6100A47D" Ref="D?"  Part="1" 
AR Path="/6100A47D" Ref="D1"  Part="1" 
F 0 "D1" H 2093 1095 50  0000 C CNN
F 1 "LED" H 2093 1186 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm" H 2100 1350 50  0001 C CNN
F 3 "~" H 2100 1350 50  0001 C CNN
	1    2100 1350
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 6100A46E
P 2400 1550
AR Path="/60F73904/6100A46E" Ref="R?"  Part="1" 
AR Path="/60FA12D6/6100A46E" Ref="R?"  Part="1" 
AR Path="/60FA686E/6100A46E" Ref="R?"  Part="1" 
AR Path="/60FA7824/6100A46E" Ref="R?"  Part="1" 
AR Path="/60FA8167/6100A46E" Ref="R?"  Part="1" 
AR Path="/60FA8857/6100A46E" Ref="R?"  Part="1" 
AR Path="/60FAB88D/6100A46E" Ref="R?"  Part="1" 
AR Path="/60FAB893/6100A46E" Ref="R?"  Part="1" 
AR Path="/6100A46E" Ref="R1"  Part="1" 
F 0 "R1" H 2341 1596 50  0000 R CNN
F 1 "rled" H 2341 1505 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 2400 1550 50  0001 C CNN
F 3 "~" H 2400 1550 50  0001 C CNN
	1    2400 1550
	-1   0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H4
U 1 1 610061CC
P 5500 7350
F 0 "H4" H 5600 7396 50  0000 L CNN
F 1 "MountingHole" H 5600 7305 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad_Via" H 5500 7350 50  0001 C CNN
F 3 "~" H 5500 7350 50  0001 C CNN
	1    5500 7350
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 6100511B
P 4700 7350
F 0 "H2" H 4800 7396 50  0000 L CNN
F 1 "MountingHole" H 4800 7305 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad_Via" H 4700 7350 50  0001 C CNN
F 3 "~" H 4700 7350 50  0001 C CNN
	1    4700 7350
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 61004110
P 5500 7050
F 0 "H3" H 5600 7096 50  0000 L CNN
F 1 "MountingHole" H 5600 7005 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad_Via" H 5500 7050 50  0001 C CNN
F 3 "~" H 5500 7050 50  0001 C CNN
	1    5500 7050
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H1
U 1 1 610029C5
P 4700 7050
F 0 "H1" H 4800 7096 50  0000 L CNN
F 1 "MountingHole" H 4800 7005 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad_Via" H 4700 7050 50  0001 C CNN
F 3 "~" H 4700 7050 50  0001 C CNN
	1    4700 7050
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x10_Odd_Even J1
U 1 1 60F45D2B
P 1600 6850
F 0 "J1" H 1650 7467 50  0000 C CNN
F 1 "UI" H 1650 7376 50  0000 C CNN
F 2 "Connector_IDC:IDC-Header_2x10_P2.54mm_Vertical" H 1600 6850 50  0001 C CNN
F 3 "~" H 1600 6850 50  0001 C CNN
	1    1600 6850
	1    0    0    -1  
$EndComp
$EndSCHEMATC
