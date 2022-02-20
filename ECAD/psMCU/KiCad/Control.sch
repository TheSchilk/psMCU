EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 26 109
Title "psMCU"
Date "2022-02-13"
Rev "v1.1"
Comp "Philipp Schilk"
Comment1 ""
Comment2 "interrupts and instruction stepping logic."
Comment3 "individual sub-instruction steps are read from the Microcode ROMs. Also handles "
Comment4 "The central state-machine that handles execution. Instructions are decoded, and the "
$EndDescr
Text HLabel 5550 5150 0    50   Input ~ 0
Bkpt_Trig
Wire Wire Line
	5650 5650 5550 5650
Wire Wire Line
	5550 5750 5650 5750
Wire Wire Line
	5550 5150 5650 5150
Text HLabel 5550 5750 0    50   Input ~ 0
Inst_Step
Text HLabel 5550 5650 0    50   Input ~ 0
Inst_Step_EN
Text HLabel 6950 5450 2    50   Output ~ 0
UI_Halted
Text HLabel 6950 5550 2    50   Output ~ 0
UI_Halt_Inst
Text HLabel 6950 5650 2    50   Output ~ 0
UI_Halt_Step
Text HLabel 6950 5750 2    50   Output ~ 0
UI_Halt_Bkpt
$Comp
L Device:CP_Small C?
U 1 1 626F701B
P 6250 6650
AR Path="/62043340/626F701B" Ref="C?"  Part="1" 
AR Path="/5FD6B215/626F701B" Ref="C?"  Part="1" 
AR Path="/60E33DBC/626F701B" Ref="C20"  Part="1" 
F 0 "C20" H 6338 6696 50  0000 L CNN
F 1 "10u" H 6338 6605 50  0000 L CNN
F 2 "" H 6250 6650 50  0001 C CNN
F 3 "~" H 6250 6650 50  0001 C CNN
	1    6250 6650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 626F7021
P 6250 6800
AR Path="/626F7021" Ref="#PWR?"  Part="1" 
AR Path="/62043340/626F7021" Ref="#PWR?"  Part="1" 
AR Path="/5FD6B215/626F7021" Ref="#PWR?"  Part="1" 
AR Path="/60E33DBC/626F7021" Ref="#PWR0115"  Part="1" 
F 0 "#PWR0115" H 6250 6550 50  0001 C CNN
F 1 "GND" H 6255 6627 50  0000 C CNN
F 2 "" H 6250 6800 50  0001 C CNN
F 3 "" H 6250 6800 50  0001 C CNN
	1    6250 6800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 6800 6250 6750
Wire Wire Line
	6250 6500 6250 6550
$Comp
L power:+5V #PWR?
U 1 1 626F7029
P 6250 6500
AR Path="/626F7029" Ref="#PWR?"  Part="1" 
AR Path="/62043340/626F7029" Ref="#PWR?"  Part="1" 
AR Path="/5FD6B215/626F7029" Ref="#PWR?"  Part="1" 
AR Path="/60E33DBC/626F7029" Ref="#PWR0116"  Part="1" 
F 0 "#PWR0116" H 6250 6350 50  0001 C CNN
F 1 "+5V" H 6265 6673 50  0000 C CNN
F 2 "" H 6250 6500 50  0001 C CNN
F 3 "" H 6250 6500 50  0001 C CNN
	1    6250 6500
	1    0    0    -1  
$EndComp
Wire Bus Line
	8500 9000 7850 9000
Wire Bus Line
	7850 7900 7850 9000
Text Label 7900 9000 0    50   ~ 0
InstCode[0..8]
$Sheet
S 8500 7800 800  900 
U 6269E56B
F0 "Control_Rom5" 50
F1 "Control_Rom.sch" 50
F2 "0" O R 9300 7900 50 
F3 "1" O R 9300 8000 50 
F4 "2" O R 9300 8100 50 
F5 "3" O R 9300 8200 50 
F6 "4" O R 9300 8300 50 
F7 "5" O R 9300 8400 50 
F8 "6" O R 9300 8500 50 
F9 "7" O R 9300 8600 50 
F10 "InstCode[0..8]" I L 8500 7900 50 
$EndSheet
$Sheet
S 8500 8900 700  200 
U 6267D619
F0 "LEDs: Instruction Code" 50
F1 "9BitLED.sch" 50
F2 "VAL[0..8]" I L 8500 9000 50 
$EndSheet
Wire Wire Line
	6850 5000 7750 5000
Entry Wire Line
	7750 5000 7850 5100
Text Label 7750 5000 2    50   ~ 0
InstCode8
Wire Wire Line
	6850 3900 7750 3900
Wire Wire Line
	6850 3800 7750 3800
Wire Wire Line
	6850 3700 7750 3700
Wire Wire Line
	6850 2800 7750 2800
Wire Wire Line
	6850 2700 7750 2700
Wire Wire Line
	6850 2600 7750 2600
Wire Wire Line
	6850 2500 7750 2500
Wire Wire Line
	6850 2400 7750 2400
Wire Wire Line
	6950 4450 5550 4450
Wire Wire Line
	6950 4100 6950 4450
Wire Wire Line
	6850 4100 6950 4100
Connection ~ 7850 7900
Entry Wire Line
	7750 3900 7850 4000
Text Label 7750 3900 2    50   ~ 0
InstCode2
Text Label 7750 3800 2    50   ~ 0
InstCode1
Text Label 7750 3700 2    50   ~ 0
InstCode0
Entry Wire Line
	7750 3800 7850 3900
Entry Wire Line
	7750 3700 7850 3800
$Sheet
S 5650 3600 1200 600 
U 624C202D
F0 "SubInst_Step" 50
F1 "SubInst_Step.sch" 50
F2 "SubInst_Step_Eq_0" O R 6850 4100 50 
F3 "InstCode0" O R 6850 3700 50 
F4 "InstCode1" O R 6850 3800 50 
F5 "InstCode2" O R 6850 3900 50 
F6 "Clr" I L 5650 3800 50 
F7 "Inc" I L 5650 3700 50 
$EndSheet
$Sheet
S 5650 4900 1200 950 
U 6249653A
F0 "Halting" 50
F1 "Halting.sch" 50
F2 "Halt_Set" I L 5650 5350 50 
F3 "Halt_Clr" I L 5650 5450 50 
F4 "Inst_Step_EN" I L 5650 5650 50 
F5 "Bkpt_Trig" I L 5650 5150 50 
F6 "SubInst_Step_Eq_0" I L 5650 5000 50 
F7 "Inst_Step" I L 5650 5750 50 
F8 "Halt" O R 6850 5000 50 
F9 "UI_Halted" O R 6850 5450 50 
F10 "UI_Halt_Inst" O R 6850 5550 50 
F11 "UI_Halt_Step" O R 6850 5650 50 
F12 "UI_Halt_Bkpt" O R 6850 5750 50 
$EndSheet
Text Notes 6000 4750 0    100  ~ 0
Halting
Text Notes 9150 2150 0    100  ~ 0
Microcode Lookup
Wire Bus Line
	7850 6800 7850 7900
Text HLabel 2350 3150 0    50   Input ~ 0
Int_EN
Text HLabel 9950 6100 2    50   Output ~ 0
In[0..8]+B->RAMA
Text HLabel 4800 3050 2    50   Output ~ 0
Int_Active
Wire Wire Line
	4550 3050 4800 3050
Wire Wire Line
	3050 3450 2350 3450
Text Label 2350 3450 0    50   ~ 0
RegI_Latch
Wire Wire Line
	3050 3250 2350 3250
Text Label 2350 3250 0    50   ~ 0
Int_Override_Clr
Text Label 2350 3350 0    50   ~ 0
Int_Clr
Wire Wire Line
	3050 3350 2350 3350
$Sheet
S 9800 3300 1200 800 
U 60AAEA82
F0 "Reg_A_B_Switch" 50
F1 "Reg_A_B_Switch.sch" 50
F2 "RegA_Latch_in" I L 9800 3500 50 
F3 "RegA_OE_in" I L 9800 3600 50 
F4 "RegB_Latch_in" I L 9800 3700 50 
F5 "RegB_OE_in" I L 9800 3800 50 
F6 "RegAB_Latch_in" I L 9800 3900 50 
F7 "RegAB_OE_in" I L 9800 4000 50 
F8 "RegA_Latch" O R 11000 3400 50 
F9 "RegA_OE" O R 11000 3500 50 
F10 "RegB_Latch" O R 11000 3600 50 
F11 "RegB_OE" O R 11000 3700 50 
F12 "Inst[0..15]" I L 9800 3400 50 
$EndSheet
Text Label 10000 2800 2    50   ~ 0
RegI_Latch
Text HLabel 9950 8200 2    50   Output ~ 0
Stack_Ofs_Sgn
Text HLabel 9950 8100 2    50   Output ~ 0
Stack_Ofs_0
Text HLabel 9950 8000 2    50   Output ~ 0
Stack_Ofs_-1
Text HLabel 9950 7900 2    50   Output ~ 0
Stack_Ofs_1
Text HLabel 9950 7500 2    50   Output ~ 0
Stack_Ptr_Latch
Wire Wire Line
	10000 4700 9300 4700
Wire Wire Line
	9300 4600 10000 4600
Wire Wire Line
	9600 4200 9600 4350
Wire Wire Line
	9300 4200 9600 4200
Wire Wire Line
	9700 4100 9700 4250
Wire Wire Line
	9300 4100 9700 4100
Wire Wire Line
	9300 4000 9800 4000
Wire Wire Line
	9300 3900 9800 3900
Wire Wire Line
	9300 3800 9800 3800
Wire Wire Line
	9300 3700 9800 3700
Wire Wire Line
	9300 3600 9800 3600
Wire Wire Line
	9300 3500 9800 3500
Wire Bus Line
	9350 3400 9800 3400
Text Label 9350 3400 0    50   ~ 0
Inst[0..15]
Text Label 2350 2400 0    50   ~ 0
Inst[0..15]
Wire Bus Line
	2300 2400 5650 2400
Wire Wire Line
	9300 8400 9950 8400
Wire Bus Line
	7850 5700 7850 6800
Connection ~ 7850 6800
Connection ~ 7850 5700
Connection ~ 7850 4600
Wire Wire Line
	9300 8200 9950 8200
Wire Wire Line
	9300 8100 9950 8100
Wire Wire Line
	9300 8000 9950 8000
Wire Wire Line
	9300 7900 9950 7900
Wire Wire Line
	9300 7500 9950 7500
Wire Bus Line
	8500 7900 7850 7900
Text Notes 3400 2750 0    100  ~ 0
Interrupts
Text Notes 5550 2150 0    100  ~ 0
Instruction Decode
Text HLabel 2350 2950 0    50   Input ~ 0
Int_Assert
Wire Wire Line
	3050 3150 2350 3150
Wire Wire Line
	3050 2950 2350 2950
$Sheet
S 3050 2850 1500 700 
U 5FD12DEC
F0 "Interrupts" 50
F1 "Interrupts.sch" 50
F2 "Interrupt_Override" O R 4550 2950 50 
F3 "IReg_Latch" I L 3050 3450 50 
F4 "Int_Clr" I L 3050 3350 50 
F5 "Int_Override_Clr" I L 3050 3250 50 
F6 "Int_Assert" I L 3050 2950 50 
F7 "Int_EN" I L 3050 3150 50 
F8 "Interrupt_Active" O R 4550 3050 50 
$EndSheet
Wire Bus Line
	8500 4600 7850 4600
Text Label 9950 8400 2    50   ~ 0
Int_Override_Clr
Text HLabel 9950 6300 2    50   Output ~ 0
IntAdr->ROMA
Text HLabel 9950 6000 2    50   Output ~ 0
In[0..8]->RAMA
Text HLabel 9950 5700 2    50   Output ~ 0
In[0..13]->ROMA
Text HLabel 9950 7400 2    50   Output ~ 0
Stack_Sync_Adr
Text HLabel 9950 7300 2    50   Output ~ 0
Stack_Sync_Data
Text HLabel 9950 7200 2    50   Output ~ 0
Stack_Present_Data
Text HLabel 9950 7100 2    50   Output ~ 0
Stack_R
Text HLabel 9950 7000 2    50   Output ~ 0
Stack_W
Text HLabel 10000 5300 2    50   Output ~ 0
BarrelS_OE
Text HLabel 10000 5200 2    50   Output ~ 0
Logic_Dual_OE
Text HLabel 10000 5100 2    50   Output ~ 0
Logic_Not_OE
Text HLabel 10000 5000 2    50   Output ~ 0
Logic_Comp_OE
Text HLabel 10000 4900 2    50   Output ~ 0
ALU_OE
Text HLabel 10000 4800 2    50   Output ~ 0
ALU_DoBComp
Wire Wire Line
	9300 5300 10000 5300
Wire Wire Line
	9300 5200 10000 5200
Wire Wire Line
	9300 5100 10000 5100
Wire Wire Line
	9300 5000 10000 5000
Wire Wire Line
	9300 4900 10000 4900
Wire Wire Line
	9300 4800 10000 4800
Text HLabel 10000 4700 2    50   Output ~ 0
RegJ_OE_DataL
Text HLabel 10000 4600 2    50   Output ~ 0
RegJ_OE_Adr
Text HLabel 10000 4350 2    50   Output ~ 0
RegJ_LatchH
Text HLabel 10000 4250 2    50   Output ~ 0
RegJ_LatchL
Text HLabel 11100 3700 2    50   Output ~ 0
RegB_OE
Text HLabel 13200 3600 2    50   Output ~ 0
RegB_Latch
Text Label 9950 8300 2    50   ~ 0
Int_Clr
Wire Wire Line
	9300 6100 9950 6100
Wire Wire Line
	9300 6000 9950 6000
Wire Wire Line
	9300 5900 9950 5900
Wire Wire Line
	9300 5800 9950 5800
Wire Wire Line
	9300 5700 9950 5700
Wire Wire Line
	9300 6300 9950 6300
Wire Wire Line
	9300 7400 9950 7400
Wire Wire Line
	9300 7300 9950 7300
Wire Wire Line
	9300 7200 9950 7200
Wire Wire Line
	9300 7100 9950 7100
Wire Wire Line
	9300 7000 9950 7000
Wire Wire Line
	9300 8300 9950 8300
$Sheet
S 8500 4500 800  900 
U 5F47FADF
F0 "Control_Rom2" 50
F1 "Control_Rom.sch" 50
F2 "0" O R 9300 4600 50 
F3 "1" O R 9300 4700 50 
F4 "2" O R 9300 4800 50 
F5 "3" O R 9300 4900 50 
F6 "4" O R 9300 5000 50 
F7 "5" O R 9300 5100 50 
F8 "6" O R 9300 5200 50 
F9 "7" O R 9300 5300 50 
F10 "InstCode[0..8]" I L 8500 4600 50 
$EndSheet
Text HLabel 10000 2800 2    50   Output ~ 0
RegI_Latch
Text HLabel 13200 6900 2    50   Output ~ 0
RAM_Sync_D_A
Text HLabel 13200 6800 2    50   Output ~ 0
RAM_R_Sync_A
Text HLabel 13200 6400 2    50   Output ~ 0
RAM_W
Text HLabel 9950 6200 2    50   Output ~ 0
In[0..7]->DBus
Text HLabel 11100 3500 2    50   Output ~ 0
RegA_OE
Text HLabel 13200 3400 2    50   Output ~ 0
RegA_Latch
Wire Wire Line
	9300 2900 10000 2900
Wire Wire Line
	9300 3000 10000 3000
Wire Wire Line
	9300 3100 10000 3100
Text HLabel 10000 3100 2    50   Output ~ 0
PC_Latch
Text HLabel 10000 3000 2    50   Output ~ 0
PC_Cond_Inc
Text HLabel 10000 2900 2    50   Output ~ 0
PC_Inc
Wire Wire Line
	9300 2400 10000 2400
Wire Wire Line
	9300 2500 10000 2500
Wire Wire Line
	9300 2800 10000 2800
Text Label 10000 2400 2    50   ~ 0
SubInst_Inc
Wire Wire Line
	9300 6200 9950 6200
$Sheet
S 8500 6700 800  900 
U 5F768DA1
F0 "Control_Rom4" 50
F1 "Control_Rom.sch" 50
F2 "0" O R 9300 6800 50 
F3 "1" O R 9300 6900 50 
F4 "2" O R 9300 7000 50 
F5 "3" O R 9300 7100 50 
F6 "4" O R 9300 7200 50 
F7 "5" O R 9300 7300 50 
F8 "6" O R 9300 7400 50 
F9 "7" O R 9300 7500 50 
F10 "InstCode[0..8]" I L 8500 6800 50 
$EndSheet
$Sheet
S 8500 5600 800  900 
U 5F767EF5
F0 "Control_Rom3" 50
F1 "Control_Rom.sch" 50
F2 "0" O R 9300 5700 50 
F3 "1" O R 9300 5800 50 
F4 "2" O R 9300 5900 50 
F5 "3" O R 9300 6000 50 
F6 "4" O R 9300 6100 50 
F7 "5" O R 9300 6200 50 
F8 "6" O R 9300 6300 50 
F9 "7" O R 9300 6400 50 
F10 "InstCode[0..8]" I L 8500 5700 50 
$EndSheet
$Sheet
S 8500 3400 800  900 
U 5F765D85
F0 "Control_Rom1" 50
F1 "Control_Rom.sch" 50
F2 "0" O R 9300 3500 50 
F3 "1" O R 9300 3600 50 
F4 "2" O R 9300 3700 50 
F5 "3" O R 9300 3800 50 
F6 "4" O R 9300 3900 50 
F7 "5" O R 9300 4000 50 
F8 "6" O R 9300 4100 50 
F9 "7" O R 9300 4200 50 
F10 "InstCode[0..8]" I L 8500 3500 50 
$EndSheet
$Sheet
S 8500 2300 800  900 
U 5F3D7BFA
F0 "Control_Rom0" 50
F1 "Control_Rom.sch" 50
F2 "0" O R 9300 2400 50 
F3 "1" O R 9300 2500 50 
F4 "2" O R 9300 2600 50 
F5 "3" O R 9300 2700 50 
F6 "4" O R 9300 2800 50 
F7 "5" O R 9300 2900 50 
F8 "6" O R 9300 3000 50 
F9 "7" O R 9300 3100 50 
F10 "InstCode[0..8]" I L 8500 2400 50 
$EndSheet
Wire Bus Line
	8500 5700 7850 5700
Connection ~ 7850 3500
Wire Bus Line
	8500 3500 7850 3500
Wire Bus Line
	7850 2400 8500 2400
Wire Bus Line
	8500 6800 7850 6800
Text Label 7750 2800 2    50   ~ 0
InstCode7
Text Label 7750 2700 2    50   ~ 0
InstCode6
Text Label 7750 2600 2    50   ~ 0
InstCode5
Text Label 7750 2500 2    50   ~ 0
InstCode4
Text Label 7750 2400 2    50   ~ 0
InstCode3
Entry Wire Line
	7750 2800 7850 2900
Entry Wire Line
	7750 2700 7850 2800
Entry Wire Line
	7750 2600 7850 2700
Entry Wire Line
	7750 2500 7850 2600
Entry Wire Line
	7750 2400 7850 2500
$Sheet
S 5650 2300 1200 750 
U 5F3D8E0D
F0 "Inst_Decode_ROM" 50
F1 "Inst_Decode_ROM.sch" 50
F2 "Inst[0..15]" I L 5650 2400 50 
F3 "InstCode3" O R 6850 2400 50 
F4 "InstCode4" O R 6850 2500 50 
F5 "InstCode5" O R 6850 2600 50 
F6 "InstCode6" O R 6850 2700 50 
F7 "InstCode7" O R 6850 2800 50 
F8 "Interrupt" I L 5650 2500 50 
$EndSheet
Text HLabel 2300 2400 0    50   Input ~ 0
Inst[0..15]
Text Notes 5050 3450 0    100  ~ 0
Sub-Instruction Step Counter
Wire Wire Line
	5550 4450 5550 5000
Wire Wire Line
	5550 5000 5650 5000
Wire Wire Line
	6850 5450 6950 5450
Wire Wire Line
	6850 5550 6950 5550
Wire Wire Line
	6850 5650 6950 5650
Wire Wire Line
	6850 5750 6950 5750
Text Label 10000 2500 2    50   ~ 0
SubInst_Clr
Wire Wire Line
	5650 3700 5100 3700
Wire Wire Line
	5650 3800 5100 3800
Text Label 5100 3700 0    50   ~ 0
SubInst_Inc
Text Label 5100 3800 0    50   ~ 0
SubInst_Clr
Wire Wire Line
	9300 2600 10000 2600
Wire Wire Line
	9300 2700 10000 2700
Text Label 10000 2600 2    50   ~ 0
Halt_Set
Text Label 10000 2700 2    50   ~ 0
Halt_Clr
Wire Wire Line
	5650 5350 5150 5350
Wire Wire Line
	5650 5450 5150 5450
Text Label 5150 5350 0    50   ~ 0
Halt_Set
Text Label 5150 5450 0    50   ~ 0
Halt_Clr
Text HLabel 9950 5900 2    50   Output ~ 0
IAdr[8..13]->DBus
Text HLabel 9950 5800 2    50   Output ~ 0
IAdr[0..7]->DBus
Wire Wire Line
	4800 2500 5650 2500
Wire Wire Line
	4800 2950 4800 2500
$Sheet
S 11600 3300 1450 4350
U 6981B843
F0 "DBGCtrlOverride" 50
F1 "DBGCtrlOverride.sch" 50
F2 "RAM_Sync_D_A_O" O R 13050 6900 50 
F3 "RAM_R_Sync_A_O" O R 13050 6800 50 
F4 "RAM_W_O" O R 13050 6400 50 
F5 "RegB_Latch_O" O R 13050 3600 50 
F6 "RegA_Latch_O" O R 13050 3400 50 
F7 "RegA_Latch_I" I L 11600 3400 50 
F8 "RegB_Latch_I" I L 11600 3600 50 
F9 "RAM_R_Sync_A_I" I L 11600 6800 50 
F10 "RAM_Sync_D_A_I" I L 11600 6900 50 
F11 "RAM_W_I" I L 11600 6400 50 
F12 "DBGW_SER" I L 11600 7350 50 
F13 "DBGW_SCLK" I L 11600 7450 50 
F14 "DBGW_CTRL" I L 11600 7550 50 
$EndSheet
Wire Wire Line
	9700 4250 10000 4250
Wire Wire Line
	9600 4350 10000 4350
Wire Wire Line
	11100 3500 11000 3500
Wire Wire Line
	11100 3700 11000 3700
Wire Wire Line
	11000 3600 11600 3600
Wire Wire Line
	11000 3400 11600 3400
Wire Wire Line
	13200 3400 13050 3400
Wire Wire Line
	13200 3600 13050 3600
Wire Wire Line
	9300 6800 11600 6800
Wire Wire Line
	9300 6900 11600 6900
Wire Wire Line
	13050 6800 13200 6800
Wire Wire Line
	13050 6900 13200 6900
Wire Wire Line
	9300 6400 11600 6400
Wire Wire Line
	13050 6400 13200 6400
Text HLabel 11500 7350 0    50   Input ~ 0
DBGW_SER
Text HLabel 11500 7450 0    50   Input ~ 0
DBGW_SCLK
Text HLabel 11500 7550 0    50   Input ~ 0
DBGW_CTRL
Wire Wire Line
	11500 7350 11600 7350
Wire Wire Line
	11500 7450 11600 7450
Wire Wire Line
	11500 7550 11600 7550
Wire Wire Line
	9300 8600 9950 8600
Wire Wire Line
	9300 8500 9950 8500
Text HLabel 9950 8500 2    50   Output ~ 0
RAM_W_Fast
Text HLabel 9950 8600 2    50   Output ~ 0
RAM_R_Fast
Wire Wire Line
	4550 2950 4800 2950
Wire Bus Line
	7850 4600 7850 5700
Wire Bus Line
	7850 3500 7850 4600
Wire Bus Line
	7850 2400 7850 3500
$EndSCHEMATC
