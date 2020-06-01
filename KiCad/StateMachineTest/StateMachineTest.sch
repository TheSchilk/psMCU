EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 58
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 5150 3150 1050 600 
U 5ED2705B
F0 "RegA" 50
F1 "RegA.sch" 50
F2 "OE" I L 5150 3250 50 
F3 "DB[0..7]" T R 6200 3250 50 
F4 "LATCH_EN" I L 5150 3350 50 
F5 "VAL[0..7]" O R 6200 3350 50 
F6 "RESET" I L 5150 3550 50 
F7 "CLK" I L 5150 3650 50 
F8 "DB_OUT" T R 6200 3450 50 
$EndSheet
$Sheet
S 1750 1300 1050 900 
U 5F607AA2
F0 "PC" 50
F1 "PC.sch" 50
F2 "ROMA[0..13]" I L 1750 1400 50 
F3 "PC[0..13]" O R 2800 1400 50 
F4 "INC_EN" I L 1750 1500 50 
F5 "CLK" I L 1750 2100 50 
F6 "~RESET" I L 1750 2000 50 
F7 "CNDT_INC_EN" I L 1750 1600 50 
F8 "CNDT_AFFIRMATIVE" I L 1750 1700 50 
F9 "LATCH_EN" I L 1750 1800 50 
$EndSheet
$Sheet
S 6200 1300 1200 550 
U 5F18F3CA
F0 "InstReg" 50
F1 "InstReg.sch" 50
F2 "LATCH_EN" I L 6200 1500 50 
F3 "CLK" I L 6200 1700 50 
F4 "NextInst[0..15]" I L 6200 1400 50 
F5 "Inst[0..15]" O R 7400 1400 50 
$EndSheet
$Sheet
S 3400 1300 1300 450 
U 5F28170E
F0 "ROM" 50
F1 "ROM.sch" 50
F2 "PC[0..13]" I L 3400 1400 50 
F3 "NextInst[0..15]" O R 4700 1400 50 
$EndSheet
Wire Bus Line
	2800 1400 3100 1400
$Sheet
S 7950 3900 750  400 
U 608BF85D
F0 "ClockCtrl" 50
F1 "ClockCtrl.sch" 50
F2 "CLK" O R 8700 4000 50 
F3 "RESET" O R 8700 4200 50 
F4 "~RESET" O R 8700 4100 50 
$EndSheet
$Sheet
S 7950 3300 1200 350 
U 609EB802
F0 "CrossOver.sch" 50
F1 "CrossOver.sch" 50
F2 "Inst[0..7]->DBus" I L 7950 3500 50 
F3 "Inst[0..15]" I L 7950 3400 50 
F4 "DB_OUT" O R 9150 3500 50 
F5 "DB[0..7]" T R 9150 3400 50 
$EndSheet
Wire Bus Line
	7400 1400 7650 1400
Wire Bus Line
	7650 1400 7650 2500
Wire Bus Line
	7650 3400 7950 3400
$Sheet
S 3400 700  1300 200 
U 60A296EE
F0 "Breakpoint" 50
F1 "Breakpoint.sch" 50
F2 "BRKPT_TRIG" O R 4700 800 50 
F3 "PC[0..13]" I L 3400 800 50 
$EndSheet
Wire Bus Line
	3400 800  3100 800 
Wire Bus Line
	3100 800  3100 1400
Connection ~ 3100 1400
Wire Bus Line
	3100 1400 3400 1400
$Sheet
S 8150 1300 1400 1100
U 60E33DBC
F0 "Control" 50
F1 "Control.sch" 50
F2 "BRPT_TRIG" I L 8150 1500 50 
F3 "CLK" I L 8150 1600 50 
F4 "~RESET" I L 8150 1700 50 
F5 "Inst[0..15]" I L 8150 1400 50 
F6 "PC_Inc_En" O R 9550 1400 50 
F7 "PC_CondInc_En" O R 9550 1500 50 
F8 "PC_Latch_En" O R 9550 1600 50 
F9 "RegA_Latch_En" O R 9550 1700 50 
F10 "RegA_OE" O R 9550 1800 50 
F11 "Inst[0..7]->DBus" O R 9550 1900 50 
F12 "RAM_WAsync" O R 9550 2000 50 
F13 "RAM_RAsync_LatchSafeA" O R 9550 2100 50 
F14 "RAM_LatchSafeDA_EN" O R 9550 2200 50 
F15 "InstReg_Latch_EN" O R 9550 2300 50 
$EndSheet
$Sheet
S 2800 3150 950  850 
U 5ED3C49A
F0 "RAM" 50
F1 "RAM.sch" 50
F2 "LatchSafeDA_EN" I L 2800 3700 50 
F3 "W_ASYNC" I L 2800 3800 50 
F4 "R_ASYNC" I L 2800 3900 50 
F5 "DB[0..7]" T L 2800 3250 50 
F6 "RAMA[0..8]" I L 2800 3350 50 
F7 "CLK" I L 2800 3600 50 
$EndSheet
$Sheet
S 5350 3950 800  300 
U 5F394B96
F0 "DBUS_DISPLAY.sch" 50
F1 "DBUS_DISPLAY.sch" 50
F2 "DB_OUT" T R 6150 4150 50 
F3 "DB[0..7]" T R 6150 4050 50 
$EndSheet
Wire Bus Line
	8150 1400 7650 1400
Connection ~ 7650 1400
Text Notes 7750 5300 0    50   ~ 0
\n\n
Wire Wire Line
	8150 1500 7900 1500
Wire Wire Line
	7900 1500 7900 800 
Wire Wire Line
	9550 1400 10500 1400
Wire Wire Line
	9550 1500 10500 1500
Wire Wire Line
	9550 1600 10500 1600
Wire Wire Line
	9550 1800 10500 1800
Text Label 10500 1400 2    50   ~ 0
PC_Inc_En
Text Label 10500 1500 2    50   ~ 0
PC_CondInc_En
Text Label 10500 1700 2    50   ~ 0
RegA_Latch_En
Text Label 10500 1600 2    50   ~ 0
PC_Latch_En
Wire Wire Line
	9550 1700 10500 1700
Wire Wire Line
	9550 1900 10500 1900
Wire Wire Line
	9550 2000 10500 2000
Wire Wire Line
	9550 2200 10500 2200
Wire Wire Line
	9550 2300 10500 2300
Text Label 10500 1800 2    50   ~ 0
RegA_OE
Text Label 10500 1900 2    50   ~ 0
Inst[0..7]->DBus
Text Label 10500 2000 2    50   ~ 0
RAM_WAsync
Text Label 10500 2100 2    50   ~ 0
RAM_RAsync_LatchSafeA
Wire Wire Line
	9550 2100 10500 2100
Text Label 10500 2200 2    50   ~ 0
RAM_LatchSafeDA_EN
Text Label 10500 2300 2    50   ~ 0
InstReg_Latch_EN
Wire Wire Line
	1750 1500 800  1500
Wire Wire Line
	1750 1600 800  1600
Wire Wire Line
	1750 1800 800  1800
Wire Wire Line
	5150 3250 4500 3250
Text Label 800  1500 0    50   ~ 0
PC_Inc_En
Text Label 800  1600 0    50   ~ 0
PC_CondInc_En
Text Label 4500 3350 0    50   ~ 0
RegA_Latch_En
Text Label 800  1800 0    50   ~ 0
PC_Latch_En
Wire Wire Line
	5150 3350 4500 3350
Wire Wire Line
	7950 3500 7250 3500
Wire Wire Line
	2800 3800 1850 3800
Wire Wire Line
	2800 3700 1850 3700
Text Label 4500 3250 0    50   ~ 0
RegA_OE
Text Label 7250 3500 0    50   ~ 0
Inst[0..7]->DBus
Text Label 1850 3800 0    50   ~ 0
RAM_WAsync
Text Label 1850 3900 0    50   ~ 0
RAM_RAsync_LatchSafeA
Wire Wire Line
	2800 3900 1850 3900
Text Label 1850 3700 0    50   ~ 0
RAM_LatchSafeDA_EN
$Comp
L Connector_Generic:Conn_01x03 J?
U 1 1 5ED8A767
P 2400 900
AR Path="/60A296EE/5ED8A767" Ref="J?"  Part="1" 
AR Path="/5ED8A767" Ref="J2"  Part="1" 
F 0 "J2" H 2480 942 50  0000 L CNN
F 1 "DO_COND" H 2480 851 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 2400 900 50  0001 C CNN
F 3 "~" H 2400 900 50  0001 C CNN
	1    2400 900 
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5ED8A76D
P 2150 800
AR Path="/60A296EE/5ED8A76D" Ref="#PWR?"  Part="1" 
AR Path="/5ED8A76D" Ref="#PWR0101"  Part="1" 
F 0 "#PWR0101" H 2150 650 50  0001 C CNN
F 1 "+5V" V 2165 928 50  0000 L CNN
F 2 "" H 2150 800 50  0001 C CNN
F 3 "" H 2150 800 50  0001 C CNN
	1    2150 800 
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5ED8A773
P 2150 1000
AR Path="/60A296EE/5ED8A773" Ref="#PWR?"  Part="1" 
AR Path="/5ED8A773" Ref="#PWR0102"  Part="1" 
F 0 "#PWR0102" H 2150 750 50  0001 C CNN
F 1 "GND" V 2155 872 50  0000 R CNN
F 2 "" H 2150 1000 50  0001 C CNN
F 3 "" H 2150 1000 50  0001 C CNN
	1    2150 1000
	0    1    1    0   
$EndComp
Wire Wire Line
	2150 1000 2200 1000
Wire Wire Line
	2150 800  2200 800 
Wire Wire Line
	1600 900  1600 1700
Wire Wire Line
	1600 1700 1750 1700
Wire Wire Line
	1600 900  2200 900 
Wire Wire Line
	8700 4000 9050 4000
Wire Wire Line
	8700 4100 9050 4100
Wire Wire Line
	8700 4200 9050 4200
Text Label 9050 4000 2    50   ~ 0
CLK
Text Label 9050 4100 2    50   ~ 0
~RESET
Text Label 9050 4200 2    50   ~ 0
RESET
Wire Wire Line
	1750 2100 1400 2100
Wire Wire Line
	1750 2000 1400 2000
Text Label 1400 2100 0    50   ~ 0
CLK
Text Label 1400 2000 0    50   ~ 0
~RESET
Wire Wire Line
	2800 3600 2450 3600
Text Label 2450 3600 0    50   ~ 0
CLK
Wire Wire Line
	4700 800  7900 800 
Wire Bus Line
	4700 1400 6200 1400
Wire Wire Line
	6200 1500 5250 1500
Text Label 5250 1500 0    50   ~ 0
InstReg_Latch_EN
Wire Wire Line
	5150 3650 4800 3650
Wire Wire Line
	5150 3550 4800 3550
Text Label 4800 3650 0    50   ~ 0
CLK
Text Label 4800 3550 0    50   ~ 0
RESET
Wire Wire Line
	6200 1700 5850 1700
Text Label 5850 1700 0    50   ~ 0
CLK
Wire Bus Line
	9150 3400 9300 3400
Wire Bus Line
	9300 3400 9300 3000
Wire Bus Line
	9300 3000 6650 3000
Wire Bus Line
	6650 3000 6650 3250
Wire Bus Line
	6650 3250 6200 3250
Wire Bus Line
	6650 3000 2550 3000
Wire Bus Line
	2550 3000 2550 3250
Wire Bus Line
	2550 3250 2800 3250
Connection ~ 6650 3000
NoConn ~ 6300 3350
Wire Wire Line
	6200 3350 6300 3350
Wire Wire Line
	6200 3450 6550 3450
Text Label 6550 3450 2    50   ~ 0
DB_OUT
Wire Wire Line
	6150 4150 6500 4150
Text Label 6500 4150 2    50   ~ 0
DB_OUT
Wire Wire Line
	9150 3500 9500 3500
Text Label 9500 3500 2    50   ~ 0
DB_OUT
Wire Bus Line
	6650 3250 6650 4050
Wire Bus Line
	6650 4050 6150 4050
Connection ~ 6650 3250
Wire Bus Line
	7650 2500 650  2500
Connection ~ 7650 2500
Wire Bus Line
	7650 2500 7650 3400
Entry Wire Line
	650  2600 750  2700
Entry Wire Line
	650  2700 750  2800
Entry Wire Line
	650  2800 750  2900
Entry Wire Line
	650  2900 750  3000
Entry Wire Line
	650  3000 750  3100
Entry Wire Line
	650  3100 750  3200
Entry Wire Line
	650  3200 750  3300
Entry Wire Line
	650  3300 750  3400
Entry Wire Line
	650  3400 750  3500
Text Label 750  2700 0    50   ~ 0
Inst0
Text Label 750  2800 0    50   ~ 0
Inst1
Text Label 750  2900 0    50   ~ 0
Inst2
Text Label 750  3000 0    50   ~ 0
Inst3
Text Label 750  3100 0    50   ~ 0
Inst4
Text Label 750  3200 0    50   ~ 0
Inst5
Text Label 750  3300 0    50   ~ 0
Inst6
Text Label 750  3400 0    50   ~ 0
Inst7
Text Label 750  3500 0    50   ~ 0
Inst8
Entry Wire Line
	1350 2700 1450 2800
Entry Wire Line
	1350 2800 1450 2900
Entry Wire Line
	1350 2900 1450 3000
Entry Wire Line
	1350 3000 1450 3100
Entry Wire Line
	1350 3100 1450 3200
Entry Wire Line
	1350 3200 1450 3300
Entry Wire Line
	1350 3300 1450 3400
Entry Wire Line
	1350 3400 1450 3500
Entry Wire Line
	1350 3500 1450 3600
Wire Wire Line
	750  2700 1350 2700
Wire Wire Line
	750  2800 1350 2800
Wire Wire Line
	750  2900 1350 2900
Wire Wire Line
	750  3000 1350 3000
Wire Wire Line
	750  3100 1350 3100
Wire Wire Line
	750  3200 1350 3200
Wire Wire Line
	750  3300 1350 3300
Wire Wire Line
	750  3400 1350 3400
Wire Wire Line
	750  3500 1350 3500
Wire Bus Line
	2800 3350 1700 3350
Wire Bus Line
	1700 3350 1700 3700
Wire Bus Line
	1700 3700 1450 3700
Text Label 1350 2700 2    50   ~ 0
RAMA0
Text Label 1350 2800 2    50   ~ 0
RAMA1
Text Label 1350 2900 2    50   ~ 0
RAMA2
Text Label 1350 3000 2    50   ~ 0
RAMA3
Text Label 1350 3100 2    50   ~ 0
RAMA4
Text Label 1350 3200 2    50   ~ 0
RAMA5
Text Label 1350 3300 2    50   ~ 0
RAMA6
Text Label 1350 3400 2    50   ~ 0
RAMA7
Text Label 1350 3500 2    50   ~ 0
RAMA8
$Comp
L Connector_Generic:Conn_01x02 J1
U 1 1 5F064A98
P 950 6850
F 0 "J1" H 868 6525 50  0000 C CNN
F 1 "Conn_01x02" H 868 6616 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 950 6850 50  0001 C CNN
F 3 "~" H 950 6850 50  0001 C CNN
	1    950  6850
	-1   0    0    1   
$EndComp
$Comp
L Regulator_Linear:L7805 U1
U 1 1 5F0653EF
P 1950 6500
F 0 "U1" H 1950 6742 50  0000 C CNN
F 1 "L7805" H 1950 6651 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:TO-252-2" H 1975 6350 50  0001 L CIN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/41/4f/b3/b0/12/d4/47/88/CD00000444.pdf/files/CD00000444.pdf/jcr:content/translations/en.CD00000444.pdf" H 1950 6450 50  0001 C CNN
	1    1950 6500
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C1
U 1 1 5F065F7B
P 2450 6800
F 0 "C1" H 2568 6846 50  0000 L CNN
F 1 "100u" H 2568 6755 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_8x6.2" H 2488 6650 50  0001 C CNN
F 3 "~" H 2450 6800 50  0001 C CNN
	1    2450 6800
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C2
U 1 1 5F0663D0
P 2900 6800
F 0 "C2" H 3018 6846 50  0000 L CNN
F 1 "100u" H 3018 6755 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_8x6.2" H 2938 6650 50  0001 C CNN
F 3 "~" H 2900 6800 50  0001 C CNN
	1    2900 6800
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 6500 1550 6500
Wire Wire Line
	1400 6500 1400 6750
Wire Wire Line
	1400 6750 1150 6750
Wire Wire Line
	1150 6850 1400 6850
Wire Wire Line
	1400 6850 1400 7100
Wire Wire Line
	1400 7100 1550 7100
Wire Wire Line
	2900 7100 2900 6950
Wire Wire Line
	2450 6950 2450 7100
Connection ~ 2450 7100
Wire Wire Line
	2450 7100 2900 7100
Wire Wire Line
	1950 6800 1950 7100
Connection ~ 1950 7100
Wire Wire Line
	1950 7100 2450 7100
Wire Wire Line
	2250 6500 2450 6500
Wire Wire Line
	2900 6500 2900 6650
Wire Wire Line
	2450 6650 2450 6500
Connection ~ 2450 6500
Wire Wire Line
	2450 6500 2900 6500
$Comp
L power:GND #PWR0103
U 1 1 5F07B4A4
P 2900 7150
F 0 "#PWR0103" H 2900 6900 50  0001 C CNN
F 1 "GND" H 2905 6977 50  0000 C CNN
F 2 "" H 2900 7150 50  0001 C CNN
F 3 "" H 2900 7150 50  0001 C CNN
	1    2900 7150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 7150 2900 7100
Connection ~ 2900 7100
$Comp
L power:+5V #PWR0104
U 1 1 5F07EBCC
P 2900 6450
F 0 "#PWR0104" H 2900 6300 50  0001 C CNN
F 1 "+5V" H 2915 6623 50  0000 C CNN
F 2 "" H 2900 6450 50  0001 C CNN
F 3 "" H 2900 6450 50  0001 C CNN
	1    2900 6450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 6450 2900 6500
Connection ~ 2900 6500
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 5F2B9585
P 1550 6450
F 0 "#FLG0101" H 1550 6525 50  0001 C CNN
F 1 "PWR_FLAG" H 1550 6623 50  0000 C CNN
F 2 "" H 1550 6450 50  0001 C CNN
F 3 "~" H 1550 6450 50  0001 C CNN
	1    1550 6450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 6450 1550 6500
Connection ~ 1550 6500
Wire Wire Line
	1550 6500 1400 6500
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 5F2BE17B
P 1550 7150
F 0 "#FLG0102" H 1550 7225 50  0001 C CNN
F 1 "PWR_FLAG" H 1550 7323 50  0000 C CNN
F 2 "" H 1550 7150 50  0001 C CNN
F 3 "~" H 1550 7150 50  0001 C CNN
	1    1550 7150
	-1   0    0    1   
$EndComp
Wire Wire Line
	1550 7150 1550 7100
Connection ~ 1550 7100
Wire Wire Line
	1550 7100 1950 7100
Entry Wire Line
	650  4300 750  4400
Entry Wire Line
	650  4400 750  4500
Entry Wire Line
	650  4500 750  4600
Entry Wire Line
	650  4600 750  4700
Entry Wire Line
	650  4700 750  4800
Entry Wire Line
	650  4800 750  4900
Entry Wire Line
	650  4900 750  5000
Entry Wire Line
	650  5000 750  5100
Entry Wire Line
	650  5100 750  5200
Entry Wire Line
	650  5200 750  5300
Entry Wire Line
	650  5300 750  5400
Entry Wire Line
	650  5400 750  5500
Entry Wire Line
	650  5500 750  5600
Entry Wire Line
	650  5600 750  5700
Text Label 750  4400 0    50   ~ 0
Inst0
Text Label 750  4500 0    50   ~ 0
Inst1
Text Label 750  4600 0    50   ~ 0
Inst2
Text Label 750  4700 0    50   ~ 0
Inst3
Text Label 750  4800 0    50   ~ 0
Inst4
Text Label 750  4900 0    50   ~ 0
Inst5
Text Label 750  5000 0    50   ~ 0
Inst6
Text Label 750  5100 0    50   ~ 0
Inst7
Text Label 750  5200 0    50   ~ 0
Inst8
Text Label 750  5300 0    50   ~ 0
Inst9
Text Label 750  5400 0    50   ~ 0
Inst10
Text Label 750  5500 0    50   ~ 0
Inst11
Text Label 750  5600 0    50   ~ 0
Inst12
Text Label 750  5700 0    50   ~ 0
Inst13
Wire Wire Line
	750  4400 1350 4400
Wire Wire Line
	750  4500 1350 4500
Wire Wire Line
	750  4600 1350 4600
Wire Wire Line
	750  4700 1350 4700
Wire Wire Line
	750  4800 1350 4800
Wire Wire Line
	750  4900 1350 4900
Wire Wire Line
	750  5000 1350 5000
Wire Wire Line
	750  5100 1350 5100
Wire Wire Line
	750  5200 1350 5200
Wire Wire Line
	750  5300 1350 5300
Wire Wire Line
	750  5400 1350 5400
Wire Wire Line
	750  5500 1350 5500
Wire Wire Line
	750  5600 1350 5600
Wire Wire Line
	750  5700 1350 5700
Entry Wire Line
	1350 4400 1450 4500
Entry Wire Line
	1350 4500 1450 4600
Entry Wire Line
	1350 4600 1450 4700
Entry Wire Line
	1350 4700 1450 4800
Entry Wire Line
	1350 4800 1450 4900
Entry Wire Line
	1350 4900 1450 5000
Entry Wire Line
	1350 5000 1450 5100
Entry Wire Line
	1350 5100 1450 5200
Entry Wire Line
	1350 5200 1450 5300
Entry Wire Line
	1350 5300 1450 5400
Entry Wire Line
	1350 5400 1450 5500
Entry Wire Line
	1350 5500 1450 5600
Entry Wire Line
	1350 5600 1450 5700
Entry Wire Line
	1350 5700 1450 5800
Text Label 1350 4400 2    50   ~ 0
ROMA0
Text Label 1350 4500 2    50   ~ 0
ROMA1
Text Label 1350 4600 2    50   ~ 0
ROMA2
Text Label 1350 4700 2    50   ~ 0
ROMA3
Text Label 1350 4800 2    50   ~ 0
ROMA4
Text Label 1350 4900 2    50   ~ 0
ROMA5
Text Label 1350 5000 2    50   ~ 0
ROMA6
Text Label 1350 5100 2    50   ~ 0
ROMA7
Text Label 1350 5200 2    50   ~ 0
ROMA8
Text Label 1350 5300 2    50   ~ 0
ROMA9
Text Label 1350 5400 2    50   ~ 0
ROMA10
Text Label 1350 5500 2    50   ~ 0
ROMA11
Text Label 1350 5600 2    50   ~ 0
ROMA12
Text Label 1350 5700 2    50   ~ 0
ROMA13
Wire Bus Line
	1450 6100 550  6100
Wire Bus Line
	550  6100 550  1400
Wire Bus Line
	550  1400 1750 1400
Text Label 750  6100 0    50   ~ 0
ROMA[0..13]
Text Label 7200 2500 0    50   ~ 0
Inst[0..15]
Wire Bus Line
	1450 4500 1450 6100
Wire Bus Line
	1450 2800 1450 3700
Wire Bus Line
	650  2500 650  5600
$EndSCHEMATC
