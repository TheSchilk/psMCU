EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 4 102
Title "psMCU"
Date "2022-02-13"
Rev "v1.1"
Comp "Philipp Schilk"
Comment1 ""
Comment2 "interrupts and instruction stepping logic."
Comment3 "individual sub-instruction steps are read from the Microcode ROMs. Also handles "
Comment4 "The central state-machine that handles execution. Instructions are decoded, and the "
$EndDescr
Text HLabel 6850 5000 0    50   Input ~ 0
Bkpt_Trig
Wire Wire Line
	6950 5500 6850 5500
Wire Wire Line
	6850 5600 6950 5600
Wire Wire Line
	6850 5000 6950 5000
Text HLabel 6850 5600 0    50   Input ~ 0
Inst_Step
Text HLabel 6850 5500 0    50   Input ~ 0
Inst_Step_EN
Text HLabel 8250 5300 2    50   Output ~ 0
UI_Halted
Text HLabel 8250 5400 2    50   Output ~ 0
UI_Halt_Inst
Text HLabel 8250 5500 2    50   Output ~ 0
UI_Halt_Step
Text HLabel 8250 5600 2    50   Output ~ 0
UI_Halt_Bkpt
$Comp
L Device:CP_Small C?
U 1 1 626F701B
P 7550 6500
AR Path="/62043340/626F701B" Ref="C?"  Part="1" 
AR Path="/5FD6B215/626F701B" Ref="C?"  Part="1" 
AR Path="/60E33DBC/626F701B" Ref="C20"  Part="1" 
F 0 "C20" H 7638 6546 50  0000 L CNN
F 1 "10u" H 7638 6455 50  0000 L CNN
F 2 "" H 7550 6500 50  0001 C CNN
F 3 "~" H 7550 6500 50  0001 C CNN
	1    7550 6500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 626F7021
P 7550 6650
AR Path="/626F7021" Ref="#PWR?"  Part="1" 
AR Path="/62043340/626F7021" Ref="#PWR?"  Part="1" 
AR Path="/5FD6B215/626F7021" Ref="#PWR?"  Part="1" 
AR Path="/60E33DBC/626F7021" Ref="#PWR0115"  Part="1" 
F 0 "#PWR0115" H 7550 6400 50  0001 C CNN
F 1 "GND" H 7555 6477 50  0000 C CNN
F 2 "" H 7550 6650 50  0001 C CNN
F 3 "" H 7550 6650 50  0001 C CNN
	1    7550 6650
	1    0    0    -1  
$EndComp
Wire Wire Line
	7550 6650 7550 6600
Wire Wire Line
	7550 6350 7550 6400
$Comp
L power:+5V #PWR?
U 1 1 626F7029
P 7550 6350
AR Path="/626F7029" Ref="#PWR?"  Part="1" 
AR Path="/62043340/626F7029" Ref="#PWR?"  Part="1" 
AR Path="/5FD6B215/626F7029" Ref="#PWR?"  Part="1" 
AR Path="/60E33DBC/626F7029" Ref="#PWR0116"  Part="1" 
F 0 "#PWR0116" H 7550 6200 50  0001 C CNN
F 1 "+5V" H 7565 6523 50  0000 C CNN
F 2 "" H 7550 6350 50  0001 C CNN
F 3 "" H 7550 6350 50  0001 C CNN
	1    7550 6350
	1    0    0    -1  
$EndComp
Wire Bus Line
	9800 8850 9150 8850
Wire Bus Line
	9150 7750 9150 8850
Text Label 9200 8850 0    50   ~ 0
InstCode[0..8]
$Sheet
S 9800 7650 800  900 
U 6269E56B
F0 "Control_Rom5" 50
F1 "Control_Rom.sch" 50
F2 "0" O R 10600 7750 50 
F3 "1" O R 10600 7850 50 
F4 "2" O R 10600 7950 50 
F5 "3" O R 10600 8050 50 
F6 "4" O R 10600 8150 50 
F7 "5" O R 10600 8250 50 
F8 "6" O R 10600 8350 50 
F9 "7" O R 10600 8450 50 
F10 "InstCode[0..8]" I L 9800 7750 50 
$EndSheet
$Sheet
S 9800 8750 700  200 
U 6267D619
F0 "LEDs: Instruction Code" 50
F1 "9BitLED.sch" 50
F2 "VAL[0..8]" I L 9800 8850 50 
$EndSheet
Wire Wire Line
	8150 4850 9050 4850
Entry Wire Line
	9050 4850 9150 4950
Text Label 9050 4850 2    50   ~ 0
InstCode8
Wire Wire Line
	8150 3750 9050 3750
Wire Wire Line
	8150 3650 9050 3650
Wire Wire Line
	8150 3550 9050 3550
Wire Wire Line
	8150 2650 9050 2650
Wire Wire Line
	8150 2550 9050 2550
Wire Wire Line
	8150 2450 9050 2450
Wire Wire Line
	8150 2350 9050 2350
Wire Wire Line
	8150 2250 9050 2250
Wire Wire Line
	8250 4300 6850 4300
Wire Wire Line
	8250 3950 8250 4300
Wire Wire Line
	8150 3950 8250 3950
Connection ~ 9150 7750
Entry Wire Line
	9050 3750 9150 3850
Text Label 9050 3750 2    50   ~ 0
InstCode2
Text Label 9050 3650 2    50   ~ 0
InstCode1
Text Label 9050 3550 2    50   ~ 0
InstCode0
Entry Wire Line
	9050 3650 9150 3750
Entry Wire Line
	9050 3550 9150 3650
$Sheet
S 6950 3450 1200 600 
U 624C202D
F0 "SubInst_Step" 50
F1 "SubInst_Step.sch" 50
F2 "SubInst_Step_Eq_0" O R 8150 3950 50 
F3 "InstCode0" O R 8150 3550 50 
F4 "InstCode1" O R 8150 3650 50 
F5 "InstCode2" O R 8150 3750 50 
F6 "Clr" I L 6950 3650 50 
F7 "Inc" I L 6950 3550 50 
$EndSheet
$Sheet
S 6950 4750 1200 950 
U 6249653A
F0 "Halting" 50
F1 "Halting.sch" 50
F2 "Halt_Set" I L 6950 5200 50 
F3 "Halt_Clr" I L 6950 5300 50 
F4 "Inst_Step_EN" I L 6950 5500 50 
F5 "Bkpt_Trig" I L 6950 5000 50 
F6 "SubInst_Step_Eq_0" I L 6950 4850 50 
F7 "Inst_Step" I L 6950 5600 50 
F8 "Halt" O R 8150 4850 50 
F9 "UI_Halted" O R 8150 5300 50 
F10 "UI_Halt_Inst" O R 8150 5400 50 
F11 "UI_Halt_Step" O R 8150 5500 50 
F12 "UI_Halt_Bkpt" O R 8150 5600 50 
$EndSheet
Text Notes 7300 4600 0    100  ~ 0
Halting
Text Notes 10450 2000 0    100  ~ 0
Microcode Lookup
Wire Bus Line
	9150 6650 9150 7750
Wire Wire Line
	5850 2900 6100 2900
Text HLabel 3650 3000 0    50   Input ~ 0
Int_EN
Text HLabel 11250 5950 2    50   Output ~ 0
In[0..8]+B->RAMA
Text HLabel 5950 3000 2    50   Output ~ 0
Int_Active
Wire Wire Line
	5850 3000 5950 3000
Wire Wire Line
	4350 3300 3650 3300
Text Label 3650 3300 0    50   ~ 0
RegI_Latch
Wire Wire Line
	4350 3100 3650 3100
Text Label 3650 3100 0    50   ~ 0
Int_Override_Clr
Text Label 3650 3200 0    50   ~ 0
Int_Clr
Wire Wire Line
	4350 3200 3650 3200
$Sheet
S 11100 3150 1200 800 
U 60AAEA82
F0 "Reg_A_B_Switch" 50
F1 "Reg_A_B_Switch.sch" 50
F2 "RegA_Latch_in" I L 11100 3350 50 
F3 "RegA_OE_in" I L 11100 3450 50 
F4 "RegB_Latch_in" I L 11100 3550 50 
F5 "RegB_OE_in" I L 11100 3650 50 
F6 "RegAB_Latch_in" I L 11100 3750 50 
F7 "RegAB_OE_in" I L 11100 3850 50 
F8 "RegA_Latch" O R 12300 3250 50 
F9 "RegA_OE" O R 12300 3350 50 
F10 "RegB_Latch" O R 12300 3450 50 
F11 "RegB_OE" O R 12300 3550 50 
F12 "Inst[0..15]" I L 11100 3250 50 
$EndSheet
Text Label 11300 2650 2    50   ~ 0
RegI_Latch
Text HLabel 11250 8050 2    50   Output ~ 0
Stack_Ofs_Sgn
Text HLabel 11250 7950 2    50   Output ~ 0
Stack_Ofs_0
Text HLabel 11250 7850 2    50   Output ~ 0
Stack_Ofs_-1
Text HLabel 11250 7750 2    50   Output ~ 0
Stack_Ofs_1
Text HLabel 11250 7350 2    50   Output ~ 0
Stack_Ptr_Latch
Wire Wire Line
	11300 4550 10600 4550
Wire Wire Line
	10600 4450 11300 4450
Wire Wire Line
	10900 4200 12450 4200
Wire Wire Line
	10900 4050 10900 4200
Wire Wire Line
	10600 4050 10900 4050
Wire Wire Line
	11000 4100 12450 4100
Wire Wire Line
	11000 3950 11000 4100
Wire Wire Line
	10600 3950 11000 3950
Wire Wire Line
	12300 3550 12450 3550
Wire Wire Line
	12300 3450 12450 3450
Wire Wire Line
	12300 3350 12450 3350
Wire Wire Line
	12300 3250 12450 3250
Wire Wire Line
	10600 3850 11100 3850
Wire Wire Line
	10600 3750 11100 3750
Wire Wire Line
	10600 3650 11100 3650
Wire Wire Line
	10600 3550 11100 3550
Wire Wire Line
	10600 3450 11100 3450
Wire Wire Line
	10600 3350 11100 3350
Wire Bus Line
	10650 3250 11100 3250
Text Label 10650 3250 0    50   ~ 0
Inst[0..15]
Text Label 3650 2250 0    50   ~ 0
Inst[0..15]
Wire Bus Line
	3600 2250 6950 2250
Wire Wire Line
	10600 8250 11250 8250
Wire Bus Line
	9150 5550 9150 6650
Connection ~ 9150 6650
Connection ~ 9150 5550
Connection ~ 9150 4450
Wire Wire Line
	10600 8050 11250 8050
Wire Wire Line
	10600 7950 11250 7950
Wire Wire Line
	10600 7850 11250 7850
Wire Wire Line
	10600 7750 11250 7750
Wire Wire Line
	10600 7350 11250 7350
Wire Bus Line
	9800 7750 9150 7750
Text Notes 4700 2600 0    100  ~ 0
Interrupts
Text Notes 6850 2000 0    100  ~ 0
Instruction Decode
Text HLabel 3650 2800 0    50   Input ~ 0
Int_Assert
Wire Wire Line
	4350 3000 3650 3000
Wire Wire Line
	4350 2800 3650 2800
$Sheet
S 4350 2700 1500 700 
U 5FD12DEC
F0 "Interrupts" 50
F1 "Interrupts.sch" 50
F2 "Interrupt_Override" O R 5850 2900 50 
F3 "IReg_Latch" I L 4350 3300 50 
F4 "Int_Clr" I L 4350 3200 50 
F5 "Int_Override_Clr" I L 4350 3100 50 
F6 "Int_Assert" I L 4350 2800 50 
F7 "Int_EN" I L 4350 3000 50 
F8 "Interrupt_Active" O R 5850 3000 50 
$EndSheet
Wire Bus Line
	9800 4450 9150 4450
Text Label 11250 8250 2    50   ~ 0
Int_Override_Clr
Text HLabel 11250 6150 2    50   Output ~ 0
IntAdr->ROMA
Text HLabel 11250 5850 2    50   Output ~ 0
In[0..8]->RAMA
Text HLabel 11250 5550 2    50   Output ~ 0
In[0..13]->ROMA
Text HLabel 11250 7250 2    50   Output ~ 0
Stack_Sync_Adr
Text HLabel 11250 7150 2    50   Output ~ 0
Stack_Sync_Data
Text HLabel 11250 7050 2    50   Output ~ 0
Stack_Present_Data
Text HLabel 11250 6950 2    50   Output ~ 0
Stack_R
Text HLabel 11250 6850 2    50   Output ~ 0
Stack_W
Text HLabel 11300 5150 2    50   Output ~ 0
BarrelS_OE
Text HLabel 11300 5050 2    50   Output ~ 0
Logic_Dual_OE
Text HLabel 11300 4950 2    50   Output ~ 0
Logic_Not_OE
Text HLabel 11300 4850 2    50   Output ~ 0
Logic_Comp_OE
Text HLabel 11300 4750 2    50   Output ~ 0
ALU_OE
Text HLabel 11300 4650 2    50   Output ~ 0
ALU_DoBComp
Wire Wire Line
	10600 5150 11300 5150
Wire Wire Line
	10600 5050 11300 5050
Wire Wire Line
	10600 4950 11300 4950
Wire Wire Line
	10600 4850 11300 4850
Wire Wire Line
	10600 4750 11300 4750
Wire Wire Line
	10600 4650 11300 4650
Text HLabel 11300 4550 2    50   Output ~ 0
RegT_OE_DataL
Text HLabel 11300 4450 2    50   Output ~ 0
RegT_OE_Adr
Text HLabel 12450 4200 2    50   Output ~ 0
RegT_LatchH
Text HLabel 12450 4100 2    50   Output ~ 0
RegT_LatchL
Text HLabel 12450 3550 2    50   Output ~ 0
RegB_OE
Text HLabel 12450 3450 2    50   Output ~ 0
RegB_Latch
Text Label 11250 8150 2    50   ~ 0
Int_Clr
Wire Wire Line
	10600 5950 11250 5950
Wire Wire Line
	10600 5850 11250 5850
Wire Wire Line
	10600 5750 11250 5750
Wire Wire Line
	10600 5650 11250 5650
Wire Wire Line
	10600 5550 11250 5550
Wire Wire Line
	10600 6150 11250 6150
Wire Wire Line
	10600 7250 11250 7250
Wire Wire Line
	10600 7150 11250 7150
Wire Wire Line
	10600 7050 11250 7050
Wire Wire Line
	10600 6950 11250 6950
Wire Wire Line
	10600 6850 11250 6850
Wire Wire Line
	10600 8150 11250 8150
$Sheet
S 9800 4350 800  900 
U 5F47FADF
F0 "Control_Rom2" 50
F1 "Control_Rom.sch" 50
F2 "0" O R 10600 4450 50 
F3 "1" O R 10600 4550 50 
F4 "2" O R 10600 4650 50 
F5 "3" O R 10600 4750 50 
F6 "4" O R 10600 4850 50 
F7 "5" O R 10600 4950 50 
F8 "6" O R 10600 5050 50 
F9 "7" O R 10600 5150 50 
F10 "InstCode[0..8]" I L 9800 4450 50 
$EndSheet
Text HLabel 11300 2650 2    50   Output ~ 0
RegI_Latch
Text HLabel 11250 6750 2    50   Output ~ 0
RAM_Sync_D_A
Text HLabel 11250 6650 2    50   Output ~ 0
RAM_R_Sync_A
Text HLabel 11250 6250 2    50   Output ~ 0
RAM_W
Text HLabel 11250 6050 2    50   Output ~ 0
In[0..7]->DBus
Text HLabel 12450 3350 2    50   Output ~ 0
RegA_OE
Text HLabel 12450 3250 2    50   Output ~ 0
RegA_Latch
Wire Wire Line
	10600 2750 11300 2750
Wire Wire Line
	10600 2850 11300 2850
Wire Wire Line
	10600 2950 11300 2950
Text HLabel 11300 2950 2    50   Output ~ 0
PC_Latch
Text HLabel 11300 2850 2    50   Output ~ 0
PC_Cond_Inc
Text HLabel 11300 2750 2    50   Output ~ 0
PC_Inc
Wire Wire Line
	10600 2250 11300 2250
Wire Wire Line
	10600 2350 11300 2350
Wire Wire Line
	10600 2650 11300 2650
Text Label 11300 2250 2    50   ~ 0
SubInst_Inc
Wire Wire Line
	10600 6750 11250 6750
Wire Wire Line
	10600 6650 11250 6650
Wire Wire Line
	10600 6250 11250 6250
Wire Wire Line
	10600 6050 11250 6050
$Sheet
S 9800 6550 800  900 
U 5F768DA1
F0 "Control_Rom4" 50
F1 "Control_Rom.sch" 50
F2 "0" O R 10600 6650 50 
F3 "1" O R 10600 6750 50 
F4 "2" O R 10600 6850 50 
F5 "3" O R 10600 6950 50 
F6 "4" O R 10600 7050 50 
F7 "5" O R 10600 7150 50 
F8 "6" O R 10600 7250 50 
F9 "7" O R 10600 7350 50 
F10 "InstCode[0..8]" I L 9800 6650 50 
$EndSheet
$Sheet
S 9800 5450 800  900 
U 5F767EF5
F0 "Control_Rom3" 50
F1 "Control_Rom.sch" 50
F2 "0" O R 10600 5550 50 
F3 "1" O R 10600 5650 50 
F4 "2" O R 10600 5750 50 
F5 "3" O R 10600 5850 50 
F6 "4" O R 10600 5950 50 
F7 "5" O R 10600 6050 50 
F8 "6" O R 10600 6150 50 
F9 "7" O R 10600 6250 50 
F10 "InstCode[0..8]" I L 9800 5550 50 
$EndSheet
$Sheet
S 9800 3250 800  900 
U 5F765D85
F0 "Control_Rom1" 50
F1 "Control_Rom.sch" 50
F2 "0" O R 10600 3350 50 
F3 "1" O R 10600 3450 50 
F4 "2" O R 10600 3550 50 
F5 "3" O R 10600 3650 50 
F6 "4" O R 10600 3750 50 
F7 "5" O R 10600 3850 50 
F8 "6" O R 10600 3950 50 
F9 "7" O R 10600 4050 50 
F10 "InstCode[0..8]" I L 9800 3350 50 
$EndSheet
$Sheet
S 9800 2150 800  900 
U 5F3D7BFA
F0 "Control_Rom0" 50
F1 "Control_Rom.sch" 50
F2 "0" O R 10600 2250 50 
F3 "1" O R 10600 2350 50 
F4 "2" O R 10600 2450 50 
F5 "3" O R 10600 2550 50 
F6 "4" O R 10600 2650 50 
F7 "5" O R 10600 2750 50 
F8 "6" O R 10600 2850 50 
F9 "7" O R 10600 2950 50 
F10 "InstCode[0..8]" I L 9800 2250 50 
$EndSheet
Wire Bus Line
	9800 5550 9150 5550
Connection ~ 9150 3350
Wire Bus Line
	9800 3350 9150 3350
Wire Bus Line
	9150 2250 9800 2250
Wire Bus Line
	9800 6650 9150 6650
Text Label 9050 2650 2    50   ~ 0
InstCode7
Text Label 9050 2550 2    50   ~ 0
InstCode6
Text Label 9050 2450 2    50   ~ 0
InstCode5
Text Label 9050 2350 2    50   ~ 0
InstCode4
Text Label 9050 2250 2    50   ~ 0
InstCode3
Entry Wire Line
	9050 2650 9150 2750
Entry Wire Line
	9050 2550 9150 2650
Entry Wire Line
	9050 2450 9150 2550
Entry Wire Line
	9050 2350 9150 2450
Entry Wire Line
	9050 2250 9150 2350
$Sheet
S 6950 2150 1200 750 
U 5F3D8E0D
F0 "Inst_Decode_ROM" 50
F1 "Inst_Decode_ROM.sch" 50
F2 "Inst[0..15]" I L 6950 2250 50 
F3 "InstCode3" O R 8150 2250 50 
F4 "InstCode4" O R 8150 2350 50 
F5 "InstCode5" O R 8150 2450 50 
F6 "InstCode6" O R 8150 2550 50 
F7 "InstCode7" O R 8150 2650 50 
F8 "Interrupt" I L 6950 2350 50 
$EndSheet
Text HLabel 3600 2250 0    50   Input ~ 0
Inst[0..15]
Text Notes 6350 3300 0    100  ~ 0
Sub-Instruction Step Counter
Wire Wire Line
	6850 4300 6850 4850
Wire Wire Line
	6850 4850 6950 4850
Wire Wire Line
	8150 5300 8250 5300
Wire Wire Line
	8150 5400 8250 5400
Wire Wire Line
	8150 5500 8250 5500
Wire Wire Line
	8150 5600 8250 5600
Text Label 11300 2350 2    50   ~ 0
SubInst_Clr
Wire Wire Line
	6950 3550 6400 3550
Wire Wire Line
	6950 3650 6400 3650
Text Label 6400 3550 0    50   ~ 0
SubInst_Inc
Text Label 6400 3650 0    50   ~ 0
SubInst_Clr
Wire Wire Line
	10600 2450 11300 2450
Wire Wire Line
	10600 2550 11300 2550
Text Label 11300 2450 2    50   ~ 0
Halt_Set
Text Label 11300 2550 2    50   ~ 0
Halt_Clr
Wire Wire Line
	6950 5200 6450 5200
Wire Wire Line
	6950 5300 6450 5300
Text Label 6450 5200 0    50   ~ 0
Halt_Set
Text Label 6450 5300 0    50   ~ 0
Halt_Clr
Text HLabel 11250 5750 2    50   Output ~ 0
IAdr[8..13]->DBus
Text HLabel 11250 5650 2    50   Output ~ 0
IAdr[0..7]->DBus
Wire Wire Line
	6100 2350 6950 2350
Wire Wire Line
	6100 2900 6100 2350
Wire Bus Line
	9150 4450 9150 5550
Wire Bus Line
	9150 3350 9150 4450
Wire Bus Line
	9150 2250 9150 3350
$EndSCHEMATC
