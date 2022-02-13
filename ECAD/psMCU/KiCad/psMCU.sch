EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 1 97
Title "psMCU"
Date "2022-02-13"
Rev "v1.1"
Comp "Philipp Schilk"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 "A fairly full-featured, 8-bit processor built entirely from 74-Series logic."
$EndDescr
Wire Notes Line
	16500 1050 16500 900 
Wire Wire Line
	10500 1500 9900 1500
Text Label 10500 1500 2    50   ~ 0
Prog_Do_Reset
Text Notes 4150 1000 0    315  Italic 0
Central State Machine:
Connection ~ 12800 1400
Connection ~ 12800 2550
Wire Bus Line
	12050 1400 12800 1400
Text Label 12600 1400 2    50   ~ 0
Inst[0..15]
Wire Bus Line
	12050 2550 12800 2550
Connection ~ 6600 2700
Wire Bus Line
	6600 2700 7250 2700
Connection ~ 6600 1400
Wire Bus Line
	7250 1400 6600 1400
Wire Bus Line
	6050 1400 6600 1400
Wire Wire Line
	4550 2000 4800 2000
Text Label 15850 3300 2    50   ~ 0
BarrelS_OE
Wire Wire Line
	15000 3300 15850 3300
Text Label 15850 3000 2    50   ~ 0
Logic_Comp_OE
Text Label 15850 2900 2    50   ~ 0
ALU_OE
Text Label 15850 2800 2    50   ~ 0
ALU_DoBComp
Wire Wire Line
	15000 3000 15850 3000
Wire Wire Line
	15000 2900 15850 2900
Wire Wire Line
	15000 2800 15850 2800
Text Label 15550 6200 2    50   ~ 0
Int_Active
Wire Wire Line
	15000 6200 15550 6200
Wire Wire Line
	15850 4500 15000 4500
Wire Wire Line
	15850 4400 15000 4400
Text Label 15850 4500 2    50   ~ 0
RAM_Sync_D_A
Text Label 15850 4400 2    50   ~ 0
RAM_R_Sync_A
Text Label 15850 4200 2    50   ~ 0
RAM_W
Wire Wire Line
	15000 4200 15850 4200
Wire Wire Line
	15000 2700 15850 2700
Wire Wire Line
	15000 2600 15850 2600
Wire Wire Line
	15000 2400 15850 2400
Wire Wire Line
	15000 2300 15850 2300
Wire Wire Line
	15000 2200 15850 2200
Wire Wire Line
	15000 2100 15850 2100
Wire Wire Line
	15000 2000 15850 2000
Wire Wire Line
	15000 1900 15850 1900
Wire Wire Line
	15000 1700 15850 1700
Wire Wire Line
	15000 1600 15850 1600
Wire Wire Line
	15000 1500 15850 1500
Wire Wire Line
	15000 1400 15850 1400
Text Label 15850 3900 2    50   ~ 0
RegB->RAMA
Text Label 15850 3800 2    50   ~ 0
In[0..7]->RAMA
Wire Wire Line
	15000 3900 15850 3900
Wire Wire Line
	15000 3800 15850 3800
Wire Wire Line
	4150 1700 4800 1700
Wire Wire Line
	4150 1600 4800 1600
Wire Wire Line
	4150 1400 4800 1400
Wire Wire Line
	4150 1500 4800 1500
Text Label 4150 1500 0    50   ~ 0
RegT_LatchH
Text Label 4150 1400 0    50   ~ 0
RegT_LatchL
Text Label 4150 1700 0    50   ~ 0
RegT_OE_DataL
Text Label 4150 1600 0    50   ~ 0
RegT_OE_Adr
Text Label 15850 2700 2    50   ~ 0
RegT_OE_DataL
Text Label 15850 2600 2    50   ~ 0
RegT_OE_Adr
Text Label 15850 2400 2    50   ~ 0
RegT_LatchH
Text Label 15850 2300 2    50   ~ 0
RegT_LatchL
$Sheet
S 4800 1300 1250 800 
U 612C5E2A
F0 "RegT" 50
F1 "RegT.sch" 50
F2 "CLK" I L 4800 1900 50 
F3 "RESET" I L 4800 2000 50 
F4 "DB_OUT" T R 6050 1800 50 
F5 "DB[0..7]" T R 6050 1700 50 
F6 "ROMA[0..13]" B R 6050 1400 50 
F7 "ROMA_OUT" B R 6050 1500 50 
F8 "LatchL" I L 4800 1400 50 
F9 "LatchH" I L 4800 1500 50 
F10 "OE_Adr" I L 4800 1600 50 
F11 "OE_DataL" I L 4800 1700 50 
$EndSheet
Text Label 15850 2200 2    50   ~ 0
RegB_OE
Text Label 15850 2100 2    50   ~ 0
RegB_Latch
Text Label 15850 2000 2    50   ~ 0
RegA_OE
Text Label 15850 1900 2    50   ~ 0
RegA_Latch
Text Label 15850 4100 2    50   ~ 0
IntAdr->ROMA
Wire Wire Line
	15000 4100 15850 4100
Text Label 15850 3700 2    50   ~ 0
PC[8..13]->DBus
Text Label 15850 3600 2    50   ~ 0
PC[0..7]->DBus
Wire Wire Line
	15000 3700 15850 3700
Wire Wire Line
	15000 3600 15850 3600
Text Label 15850 3500 2    50   ~ 0
In[0..13]->ROMA
Wire Wire Line
	15000 3500 15850 3500
Wire Bus Line
	12800 1400 12800 2550
Text Label 12700 2750 2    50   ~ 0
In[0..7]->DBus
Wire Wire Line
	12050 2750 12700 2750
Text Label 15850 4000 2    50   ~ 0
In[0..7]->DBus
Wire Wire Line
	15000 4000 15850 4000
Text Label 6700 2000 0    50   ~ 0
Cond
Wire Wire Line
	7250 2000 6700 2000
Wire Wire Line
	6700 1800 7250 1800
Wire Wire Line
	6700 1700 7250 1700
Wire Wire Line
	6700 1600 7250 1600
Text Label 6700 1800 0    50   ~ 0
PC_Latch
Text Label 6700 1700 0    50   ~ 0
PC_Cond_Inc
Text Label 6700 1600 0    50   ~ 0
PC_Inc
Text Label 15850 1700 2    50   ~ 0
PC_Latch
Text Label 15850 1600 2    50   ~ 0
PC_Cond_Inc
Text Label 15850 1500 2    50   ~ 0
PC_Inc
Wire Wire Line
	10400 1600 10850 1600
Text Label 10400 1600 0    50   ~ 0
RegI_Latch
Text Label 15850 1400 2    50   ~ 0
RegI_Latch
Wire Wire Line
	12900 2100 13400 2100
Text Label 12900 2100 0    50   ~ 0
Int_EN
Wire Wire Line
	12900 2000 13400 2000
Text Label 12900 2000 0    50   ~ 0
Int_Assert
Wire Wire Line
	13400 1500 12900 1500
Text Label 12900 1500 0    50   ~ 0
Bkpt_Trig
Text Label 12900 2300 0    50   ~ 0
CLK
Text Notes 14000 5350 0    59   ~ 12
5
Text Notes 14000 4450 0    59   ~ 12
4
Text Notes 14000 3550 0    59   ~ 12
3
Text Notes 14000 2650 0    59   ~ 12
2
Text Notes 14000 1950 0    59   ~ 12
1
Text Notes 14000 1450 0    59   ~ 12
0
Wire Notes Line
	14100 5650 14200 5650
Wire Notes Line
	14100 5250 14100 5650
Wire Notes Line
	14200 5250 14100 5250
Wire Notes Line
	14100 5150 14200 5150
Wire Notes Line
	14100 4350 14100 5150
Wire Notes Line
	14200 4350 14100 4350
Wire Notes Line
	14100 4250 14200 4250
Wire Notes Line
	14100 3450 14100 4250
Wire Notes Line
	14200 3450 14100 3450
Wire Notes Line
	14100 3350 14200 3350
Wire Notes Line
	14100 2550 14100 3350
Wire Notes Line
	14200 2550 14100 2550
Wire Notes Line
	14100 2450 14200 2450
Wire Notes Line
	14100 1850 14100 2450
Wire Notes Line
	14200 1850 14100 1850
Wire Notes Line
	14100 1750 14200 1750
Wire Notes Line
	14100 1350 14100 1750
$Sheet
S 13400 1300 1600 5050
U 60E33DBC
F0 "Control" 50
F1 "Control.sch" 50
F2 "Inst[0..15]" I L 13400 1400 50 
F3 "Bkpt_Trig" I L 13400 1500 50 
F4 "CLK" I L 13400 2300 50 
F5 "~RESET" I L 13400 2400 50 
F6 "PC_Inc" O R 15000 1500 50 
F7 "PC_Cond_Inc" O R 15000 1600 50 
F8 "PC_Latch" O R 15000 1700 50 
F9 "RegA_Latch" O R 15000 1900 50 
F10 "RegA_OE" O R 15000 2000 50 
F11 "In[0..7]->DBus" O R 15000 4000 50 
F12 "RAM_W" O R 15000 4200 50 
F13 "RAM_R_Sync_A" O R 15000 4400 50 
F14 "RAM_Sync_D_A" O R 15000 4500 50 
F15 "RegI_Latch" O R 15000 1400 50 
F16 "RegB_Latch" O R 15000 2100 50 
F17 "RegB_OE" O R 15000 2200 50 
F18 "RegT_LatchL" O R 15000 2300 50 
F19 "RegT_LatchH" O R 15000 2400 50 
F20 "ALU_DoBComp" O R 15000 2800 50 
F21 "ALU_OE" O R 15000 2900 50 
F22 "Logic_Comp_OE" O R 15000 3000 50 
F23 "Logic_Not_OE" O R 15000 3100 50 
F24 "Logic_Dual_OE" O R 15000 3200 50 
F25 "BarrelS_OE" O R 15000 3300 50 
F26 "Stack_W" O R 15000 4600 50 
F27 "Stack_R" O R 15000 4700 50 
F28 "Stack_Present_Data" O R 15000 4800 50 
F29 "Stack_Sync_Data" O R 15000 4900 50 
F30 "Stack_Sync_Adr" O R 15000 5000 50 
F31 "In[0..13]->ROMA" O R 15000 3500 50 
F32 "PC[0..7]->DBus" O R 15000 3600 50 
F33 "PC[8..13]->DBus" O R 15000 3700 50 
F34 "Inst_Step" I L 13400 1700 50 
F35 "Inst_Step_EN" I L 13400 1800 50 
F36 "Int_Assert" I L 13400 2000 50 
F37 "Int_EN" I L 13400 2100 50 
F38 "UI_Halted" O R 15000 5800 50 
F39 "UI_Halt_Inst" O R 15000 5900 50 
F40 "UI_Halt_Step" O R 15000 6000 50 
F41 "UI_Halt_Bkpt" O R 15000 6100 50 
F42 "Stack_Ptr_Latch" O R 15000 5100 50 
F43 "Stack_Ofs_1" O R 15000 5300 50 
F44 "Stack_Ofs_-1" O R 15000 5400 50 
F45 "Stack_Ofs_0" O R 15000 5500 50 
F46 "RegT_OE_Adr" O R 15000 2600 50 
F47 "RegT_OE_DataL" O R 15000 2700 50 
F48 "Int_Active" O R 15000 6200 50 
F49 "IntAdr->ROMA" O R 15000 4100 50 
F50 "Stack_Ofs_Sgn" O R 15000 5600 50 
F51 "In[0..7]->RAMA" O R 15000 3800 50 
F52 "RegB->RAMA" O R 15000 3900 50 
$EndSheet
Wire Notes Line
	14100 1350 14200 1350
Wire Bus Line
	12800 1400 13400 1400
Wire Wire Line
	10000 1900 10000 2300
Wire Wire Line
	9900 1900 10000 1900
Wire Wire Line
	10100 1800 9900 1800
Wire Wire Line
	10100 2400 10100 1800
Wire Wire Line
	10200 1700 10200 2500
Wire Wire Line
	9900 1700 10200 1700
Wire Bus Line
	8450 1400 8600 1400
Connection ~ 8450 1400
Wire Bus Line
	8450 1400 8450 2300
Wire Bus Line
	8300 1400 8450 1400
Wire Wire Line
	7000 2300 7250 2300
Wire Wire Line
	7000 2200 7250 2200
Text Label 6500 1500 2    50   ~ 0
ROMA_OUT
Wire Wire Line
	6050 1500 6500 1500
Text Label 10500 2550 0    50   ~ 0
DB[0..7]
Wire Bus Line
	10850 2550 10500 2550
Text Label 6500 1700 2    50   ~ 0
DB[0..7]
Wire Bus Line
	6050 1700 6500 1700
Text Label 6500 1800 2    50   ~ 0
DB_OUT
Wire Wire Line
	6050 1800 6500 1800
Text Label 6800 2800 0    50   ~ 0
ROMA_OUT
Wire Wire Line
	7250 2800 6800 2800
Text Label 10500 2650 0    50   ~ 0
DB_OUT
Wire Wire Line
	10850 2650 10500 2650
Text Label 10250 2800 2    50   ~ 0
Bkpt_Trig
Text Label 10600 1800 0    50   ~ 0
CLK
Wire Wire Line
	10850 1800 10600 1800
Text Label 7000 2300 0    50   ~ 0
~RESET
Text Label 10600 1900 0    50   ~ 0
RESET
Wire Wire Line
	10850 1900 10600 1900
Text Label 7000 2200 0    50   ~ 0
CLK
Text Label 4550 2000 0    50   ~ 0
RESET
Text Label 4550 1900 0    50   ~ 0
CLK
Wire Wire Line
	4800 1900 4550 1900
$Sheet
S 7250 1300 1050 1100
U 5F607AA2
F0 "PC" 50
F1 "PC.sch" 50
F2 "PC[0..13]" O R 8300 1400 50 
F3 "CLK" I L 7250 2200 50 
F4 "~RESET" I L 7250 2300 50 
F5 "ROMA[0..13]" B L 7250 1400 50 
F6 "Inc" I L 7250 1600 50 
F7 "Latch" I L 7250 1800 50 
F8 "Cond_Inc" I L 7250 1700 50 
F9 "Cond" I L 7250 2000 50 
$EndSheet
$Sheet
S 8600 1300 1300 700 
U 5F28170E
F0 "ROM" 50
F1 "ROM.sch" 50
F2 "PC[0..13]" I L 8600 1400 50 
F3 "NextInst[0..15]" O R 9900 1400 50 
F4 "BKPT_RCLK" O R 9900 1700 50 
F5 "BKPT_SER" O R 9900 1800 50 
F6 "BKPT_SCLK" O R 9900 1900 50 
F7 "Prog_Do_Reset" O R 9900 1500 50 
$EndSheet
$Sheet
S 10850 1300 1200 700 
U 5F18F3CA
F0 "RegI" 50
F1 "RegI.sch" 50
F2 "CLK" I L 10850 1800 50 
F3 "NextInst[0..15]" I L 10850 1400 50 
F4 "Inst[0..15]" O R 12050 1400 50 
F5 "RESET" I L 10850 1900 50 
F6 "Latch" I L 10850 1600 50 
$EndSheet
$Sheet
S 7250 2600 1050 300 
U 6041A022
F0 "ROMA Bus Display" 50
F1 "ROMA_DISPLAY.sch" 50
F2 "ROMA_OUT" T L 7250 2800 50 
F3 "ROMA[0..13]" B L 7250 2700 50 
$EndSheet
$Sheet
S 10850 2450 1200 400 
U 609EB802
F0 "Inst[0..7]->DBus" 50
F1 "Inst0..7_to_DBus.sch" 50
F2 "Inst[0..15]" I R 12050 2550 50 
F3 "DB[0..7]" T L 10850 2550 50 
F4 "DB_OUT" T L 10850 2650 50 
F5 "In[0..7]->DBus" I R 12050 2750 50 
$EndSheet
Wire Bus Line
	6050 10450 5500 10450
Text Label 6050 10450 2    50   ~ 0
RegB[0..7]
Wire Bus Line
	3450 5300 3450 7300
Connection ~ 3450 7300
Text Notes 650  4800 0    315  Italic 0
Memory & Peripherals:
Text Notes 2900 6350 0    50   ~ 0
\n
$Sheet
S 1400 7600 1500 1100
U 5ED3C49A
F0 "RAM" 50
F1 "RAM.sch" 50
F2 "DB[0..7]" T R 2900 7700 50 
F3 "CLK" I L 1400 8400 50 
F4 "RESET" I L 1400 8500 50 
F5 "~RESET" I L 1400 8600 50 
F6 "RAMA[0..8]" B L 1400 7700 50 
F7 "DB_OUT" T R 2900 7800 50 
F8 "PAGE[0..4]" I L 1400 7800 50 
F9 "Sync_D_A" I L 1400 8000 50 
F10 "W" I L 1400 8100 50 
F11 "R_Sync_A" I L 1400 8200 50 
$EndSheet
$Sheet
S 4150 10250 1350 600 
U 5F6FD493
F0 "In[0..7]/RegB->RAMA[0..7]" 50
F1 "In0..7_RegB_to_RAMA.sch" 50
F2 "Inst[0..15]" I R 5500 10350 50 
F3 "RegB[0..7]" I R 5500 10450 50 
F4 "RAMA[0..8]" B L 4150 10650 50 
F5 "RAMA_OUT" T L 4150 10750 50 
F6 "RegB->RAMA" I R 5500 10650 50 
F7 "In[0..7]->RAMA" I R 5500 10750 50 
$EndSheet
Wire Wire Line
	1400 8400 1150 8400
Text Label 1150 8400 0    50   ~ 0
CLK
Wire Wire Line
	1400 8500 1150 8500
Text Label 1150 8500 0    50   ~ 0
RESET
Wire Wire Line
	1400 8600 1150 8600
Text Label 1150 8600 0    50   ~ 0
~RESET
Wire Wire Line
	1400 6600 1150 6600
Text Label 1150 6600 0    50   ~ 0
CLK
Wire Wire Line
	1400 6700 1150 6700
Text Label 1150 6700 0    50   ~ 0
RESET
Wire Wire Line
	1400 6800 1150 6800
Text Label 1150 6800 0    50   ~ 0
~RESET
Wire Bus Line
	1400 7800 950  7800
Text Label 950  7800 0    50   ~ 0
PAGE[0..4]
Wire Wire Line
	2900 5400 3250 5400
Text Label 3250 5400 2    50   ~ 0
DB_OUT
Wire Bus Line
	2900 5300 3250 5300
Text Label 3250 5300 2    50   ~ 0
DB[0..7]
Wire Wire Line
	2900 7800 3250 7800
Text Label 3250 7800 2    50   ~ 0
DB_OUT
Wire Bus Line
	2900 7700 3250 7700
Text Label 3250 7700 2    50   ~ 0
DB[0..7]
$Sheet
S 1400 7100 1500 300 
U 604F08FB
F0 "RAMA Bus Display" 50
F1 "RAMA_DISPLAY.sch" 50
F2 "RAMA[0..8]" T L 1400 7200 50 
F3 "RAMA_OUT" T L 1400 7300 50 
$EndSheet
Text Label 1000 7300 0    50   ~ 0
RAMA_OUT
Wire Wire Line
	1000 7300 1400 7300
Text Label 3250 9200 2    50   ~ 0
DB[0..7]
Wire Bus Line
	2900 9200 3250 9200
Text Label 3250 9300 2    50   ~ 0
DB_OUT
Wire Wire Line
	2900 9300 3250 9300
Wire Wire Line
	1400 9700 950  9700
Text Label 1150 10000 0    50   ~ 0
CLK
Wire Wire Line
	1400 10000 1150 10000
Text Label 1150 10100 0    50   ~ 0
~RESET
Wire Wire Line
	1400 10100 1150 10100
Text Label 5950 7300 2    50   ~ 0
DB[0..7]
Wire Bus Line
	5500 7300 5950 7300
Text Label 5850 5300 2    50   ~ 0
DB[0..7]
Wire Bus Line
	5500 5300 5850 5300
Wire Bus Line
	4150 7300 3450 7300
Wire Bus Line
	4150 5300 3450 5300
Text Label 5950 7500 2    50   ~ 0
PAGE[0..4]
Wire Bus Line
	5500 7500 5950 7500
Text Label 5950 7400 2    50   ~ 0
DB_OUT
Wire Wire Line
	5500 7400 5950 7400
Text Label 5850 5400 2    50   ~ 0
DB_OUT
Wire Wire Line
	5500 5400 5850 5400
Text Label 3900 8050 0    50   ~ 0
RESET
Wire Wire Line
	4150 8050 3900 8050
Text Label 3900 7950 0    50   ~ 0
CLK
Wire Wire Line
	4150 7950 3900 7950
Text Label 3850 6700 0    50   ~ 0
CLK
Text Label 3850 6900 0    50   ~ 0
~RESET
$Sheet
S 4150 7200 1350 1050
U 5FD65291
F0 "SysReg_2" 50
F1 "SysReg_2.sch" 50
F2 "DB_OUT" T R 5500 7400 50 
F3 "DB[0..7]" T R 5500 7300 50 
F4 "RESET" I L 4150 8050 50 
F5 "CLK" I L 4150 7950 50 
F6 "Periph_W" I L 4150 7500 50 
F7 "Periph_R" I L 4150 7600 50 
F8 "CLK_F[0..2]" I L 4150 7800 50 
F9 "PAGE[0..4]" O R 5500 7500 50 
F10 "~RESET" I L 4150 8150 50 
F11 "PeriphA[0..7]" I L 4150 7300 50 
$EndSheet
Text Notes 3300 5200 0    50   ~ 0
\n\n
Text Label 3750 10750 0    50   ~ 0
RAMA_OUT
Wire Wire Line
	3750 10750 4150 10750
Wire Wire Line
	5500 5600 6000 5600
Text Label 6000 5600 2    50   ~ 0
ShiftIn
Text Label 950  9700 0    50   ~ 0
Int_Assert
Text Label 3850 6800 0    50   ~ 0
RESET
$Sheet
S 1400 8900 1500 1600
U 5FD1E173
F0 "PeriphealInterface" 50
F1 "PeripheralInterface.sch" 50
F2 "DB[0..7]" T R 2900 9200 50 
F3 "CLK" I L 1400 10000 50 
F4 "DB_OUT" T R 2900 9300 50 
F5 "RAMA[0..8]" B L 1400 9000 50 
F6 "~RESET" I L 1400 10100 50 
F7 "RAM_Sync_D_A" I L 1400 9400 50 
F8 "RAM_W" I L 1400 9200 50 
F9 "RAM_R_Sync_A" I L 1400 9300 50 
F10 "Periph_W" O R 2900 9500 50 
F11 "PeriphA[0..7]" O R 2900 9000 50 
F12 "Int_Active" I L 1400 9800 50 
F13 "Int_Assert" B L 1400 9700 50 
F14 "Int_EN" I L 1400 9600 50 
F15 "Periph_R_Sync_A" O R 2900 9600 50 
$EndSheet
Wire Wire Line
	1400 9800 950  9800
Text Label 950  9800 0    50   ~ 0
Int_Active
Text Label 950  9600 0    50   ~ 0
Int_EN
Wire Wire Line
	950  9600 1400 9600
Text Label 3400 9500 2    50   ~ 0
Periph_W
Text Label 3400 9600 2    50   ~ 0
Periph_R
Wire Wire Line
	3400 9500 2900 9500
Wire Wire Line
	2900 9600 3400 9600
Text Label 3650 5500 0    50   ~ 0
Periph_W
Text Label 3650 5600 0    50   ~ 0
Periph_R
Wire Wire Line
	3650 5500 4150 5500
Wire Wire Line
	4150 5600 3650 5600
Wire Wire Line
	4150 5800 3500 5800
Wire Wire Line
	4150 5900 3500 5900
Wire Wire Line
	4150 6000 3500 6000
Text Label 3500 5800 0    50   ~ 0
ALU_DoBComp
Text Label 3500 5900 0    50   ~ 0
ALU_OE
Text Label 3500 6000 0    50   ~ 0
Logic_Comp_OE
Wire Wire Line
	4150 6200 3850 6200
Wire Wire Line
	4150 6300 3850 6300
Wire Wire Line
	4150 6400 3850 6400
Text Label 6000 5700 2    50   ~ 0
C_Flag
Wire Wire Line
	5500 5700 6000 5700
Wire Wire Line
	5500 5800 6000 5800
Text Label 3850 6300 0    50   ~ 0
HC
Text Label 3850 6400 0    50   ~ 0
OVF
Text Label 3850 6200 0    50   ~ 0
C
Wire Wire Line
	1400 9200 800  9200
Text Label 800  9200 0    50   ~ 0
RAM_W
Text Label 800  9300 0    50   ~ 0
RAM_R_Sync_A
Text Label 800  9400 0    50   ~ 0
RAM_Sync_D_A
Wire Wire Line
	800  9300 1400 9300
Wire Wire Line
	800  9400 1400 9400
Text Label 3650 7800 0    50   ~ 0
CLK_F[0..2]
Wire Bus Line
	3650 7800 4150 7800
Text Label 3650 7500 0    50   ~ 0
Periph_W
Text Label 3650 7600 0    50   ~ 0
Periph_R
Wire Wire Line
	3650 7500 4150 7500
Wire Wire Line
	4150 7600 3650 7600
Wire Wire Line
	4150 8850 3650 8850
Wire Wire Line
	3650 8750 4150 8750
Text Label 3650 8850 0    50   ~ 0
Periph_R
Text Label 3650 8750 0    50   ~ 0
Periph_W
Wire Wire Line
	4150 9450 3900 9450
Wire Wire Line
	4150 9350 3900 9350
Wire Wire Line
	4150 9250 3900 9250
Wire Wire Line
	4150 9150 3900 9150
Text Label 3900 9450 0    50   ~ 0
B=0
Text Label 3900 9350 0    50   ~ 0
A=0
Text Label 3900 9250 0    50   ~ 0
A=B
Text Label 3900 9150 0    50   ~ 0
A<B
Text Label 3900 9050 0    50   ~ 0
A>B
Wire Wire Line
	4150 9050 3900 9050
$Sheet
S 4150 8450 1350 1600
U 5FD65308
F0 "SysReg_3" 50
F1 "SysReg_3.sch" 50
F2 "A>B" I L 4150 9050 50 
F3 "A<B" I L 4150 9150 50 
F4 "A=B" I L 4150 9250 50 
F5 "A=0" I L 4150 9350 50 
F6 "B=0" I L 4150 9450 50 
F7 "~RESET" I L 4150 9950 50 
F8 "CLK" I L 4150 9850 50 
F9 "DB[0..7]" T R 5500 8550 50 
F10 "DB_OUT" T R 5500 8650 50 
F11 "PeriphA[0..7]" I L 4150 8550 50 
F12 "Periph_W" I L 4150 8750 50 
F13 "Periph_R" I L 4150 8850 50 
F14 "Int_EN" O R 5500 8750 50 
F15 "Set_Btn_Int_Flag" I L 4150 9650 50 
$EndSheet
Wire Wire Line
	4150 9950 3900 9950
Text Label 3900 9950 0    50   ~ 0
~RESET
Wire Wire Line
	4150 9850 3900 9850
Text Label 3900 9850 0    50   ~ 0
CLK
Wire Wire Line
	5500 8750 5850 8750
Text Label 5850 8750 2    50   ~ 0
Int_EN
Wire Wire Line
	5500 8650 5850 8650
Text Label 5850 8650 2    50   ~ 0
DB_OUT
Wire Bus Line
	3450 8550 4150 8550
Wire Bus Line
	5500 8550 5850 8550
Text Label 5850 8550 2    50   ~ 0
DB[0..7]
Text Label 3500 9650 0    50   ~ 0
Set_Btn_Int_Flag
Wire Wire Line
	3500 9650 4150 9650
Wire Bus Line
	5500 10350 6050 10350
Text Label 6050 10350 2    50   ~ 0
Inst[0..15]
Wire Bus Line
	700  7200 1400 7200
Text Notes 700  2950 0    79   ~ 0
 - 8bit Processor\n - 1MHz Clock\n - 8kB Heap RAM, \n - 32kB Stack RAM\n - 16kB Program ROM\n - Interrupts
Text Notes 2200 2150 0    118  ~ 0
Features:\n
Text Notes 2200 3300 0    79   ~ 0
 - 300+ LEDs\n - Instruction Stepping\n - Clock Stepping\n - 1Hz-1MHz Clock\n - External remote control\n - External USB programmer\n - Hardware Call/Return\n - Peripheral Ports\n - Hardware breakpoint
Text Notes 700  2150 0    118  ~ 0
Specs:
Text Notes 650  1500 0    118  Italic 0
'Why not?'
Text Notes 700  1900 0    118  ~ 0
Philipp Schilk\n2020-2021
Text Notes 700  1100 0    315  Italic 63
psMCU
Connection ~ 8500 6100
Wire Bus Line
	8050 6100 8500 6100
Wire Bus Line
	8500 5300 8050 5300
Text Notes 6500 4800 0    315  Italic 0
Data Manipulation:
Wire Bus Line
	9100 5600 8500 5600
$Sheet
S 11250 5200 1500 900 
U 5F43204F
F0 "BarrelShifter" 50
F1 "BarrelShifter.sch" 50
F2 "Shift_In" I L 11250 5800 50 
F3 "DB[0..7]" T R 12750 5300 50 
F4 "DB_OUT" T R 12750 5400 50 
F5 "OE" I L 11250 6000 50 
F6 "RegA[0..7]" I L 11250 5300 50 
F7 "OpB[0..7]" I L 11250 5400 50 
F8 "Inst[0..15]" I L 11250 5600 50 
$EndSheet
$Sheet
S 9100 7550 1000 300 
U 5F394B96
F0 "Data Bus Display" 50
F1 "DBUS_DISPLAY.sch" 50
F2 "DB_OUT" T L 9100 7750 50 
F3 "DB[0..7]" T L 9100 7650 50 
$EndSheet
$Sheet
S 9100 7050 1000 300 
U 5F629530
F0 "Operand B Select" 50
F1 "OperandB_select.sch" 50
F2 "Inst[0..15]" I L 9100 7250 50 
F3 "RegB[0..7]" I L 9100 7150 50 
F4 "OpB[0..7]" O R 10100 7150 50 
$EndSheet
$Sheet
S 9100 6300 1000 550 
U 5FD6B1FB
F0 "BitTest" 50
F1 "BitTest.sch" 50
F2 "DB[0..7]" T L 9100 6500 50 
F3 "Inst[0..15]" I L 9100 6400 50 
F4 "Cond" O R 10100 6400 50 
F5 "Cond_Inc" I L 9100 6700 50 
$EndSheet
$Sheet
S 11250 7700 1500 1000
U 5FD6F26B
F0 "ALU" 50
F1 "ALU.sch" 50
F2 "OpB[0..7]" I L 11250 8000 50 
F3 "DB_OUT" T R 12750 7900 50 
F4 "DB[0..7]" T R 12750 7800 50 
F5 "OE" I L 11250 8300 50 
F6 "OP_B_Comp[0..7]" I L 11250 7800 50 
F7 "RegA[0..7]" I L 11250 7900 50 
F8 "HC" O R 12750 8200 50 
F9 "C" O R 12750 8100 50 
F10 "Inst[0..15]" I L 11250 8100 50 
F11 "C_Flag" I L 11250 8600 50 
F12 "OVF" O R 12750 8300 50 
F13 "DoBComp" I L 11250 8400 50 
$EndSheet
$Sheet
S 9100 5500 1000 600 
U 5FD6B215
F0 "Comparator.sch" 50
F1 "Comparator.sch" 50
F2 "A>B" O R 10100 5600 50 
F3 "A<B" O R 10100 5700 50 
F4 "A=B" O R 10100 5800 50 
F5 "A=0" O R 10100 5900 50 
F6 "B=0" O R 10100 6000 50 
F7 "REG_A[0..7]" I L 9100 5600 50 
F8 "REG_B[0..7]" I L 9100 5700 50 
$EndSheet
Wire Wire Line
	10100 5600 10350 5600
Text Label 10350 5600 2    50   ~ 0
A>B
Text Label 10350 5700 2    50   ~ 0
A<B
Text Label 10350 5800 2    50   ~ 0
A=B
Text Label 10350 5900 2    50   ~ 0
A=0
Text Label 10350 6000 2    50   ~ 0
B=0
Wire Wire Line
	10100 5700 10350 5700
Wire Wire Line
	10100 5800 10350 5800
Wire Wire Line
	10100 5900 10350 5900
Wire Wire Line
	10100 6000 10350 6000
Wire Wire Line
	12750 7900 13150 7900
Text Label 13150 7900 2    50   ~ 0
DB_OUT
Wire Wire Line
	12750 5400 13150 5400
Text Label 13150 5400 2    50   ~ 0
DB_OUT
Wire Wire Line
	12750 6500 13150 6500
Text Label 13150 6500 2    50   ~ 0
DB_OUT
$Sheet
S 7000 5200 1050 600 
U 61C3CF7F
F0 "RegA" 50
F1 "Reg.sch" 50
F2 "DB[0..7]" T R 8050 5500 50 
F3 "VAL[0..7]" O R 8050 5300 50 
F4 "RESET" I L 7000 5700 50 
F5 "CLK" I L 7000 5600 50 
F6 "DB_OUT" T R 8050 5600 50 
F7 "OE" I L 7000 5300 50 
F8 "Latch" I L 7000 5400 50 
$EndSheet
$Sheet
S 7000 6000 1050 600 
U 61C3CF88
F0 "RegB" 50
F1 "Reg.sch" 50
F2 "OE" I L 7000 6100 50 
F3 "DB[0..7]" T R 8050 6300 50 
F4 "VAL[0..7]" O R 8050 6100 50 
F5 "RESET" I L 7000 6500 50 
F6 "CLK" I L 7000 6400 50 
F7 "DB_OUT" T R 8050 6400 50 
F8 "Latch" I L 7000 6200 50 
$EndSheet
Wire Wire Line
	7000 6400 6750 6400
Text Label 6750 6400 0    50   ~ 0
CLK
Wire Wire Line
	7000 6500 6750 6500
Text Label 6750 6500 0    50   ~ 0
RESET
Wire Wire Line
	7000 5600 6750 5600
Text Label 6750 5600 0    50   ~ 0
CLK
Wire Wire Line
	7000 5700 6750 5700
Text Label 6750 5700 0    50   ~ 0
RESET
Wire Wire Line
	8050 5600 8400 5600
Text Label 8400 5600 2    50   ~ 0
DB_OUT
Wire Bus Line
	11250 7800 11150 7800
Wire Bus Line
	11150 7800 11150 7550
Wire Bus Line
	11150 7550 12850 7550
Wire Bus Line
	12750 6700 12850 6700
Wire Wire Line
	9100 7750 8750 7750
Text Label 8750 7750 0    50   ~ 0
DB_OUT
Text Label 9050 5600 2    50   ~ 0
RegA[0..7]
Wire Bus Line
	9100 7650 8750 7650
Text Label 8750 7650 0    50   ~ 0
DB[0..7]
Wire Bus Line
	8050 5500 8400 5500
Text Label 8400 5500 2    50   ~ 0
DB[0..7]
Wire Bus Line
	12750 5300 13150 5300
Text Label 13150 5300 2    50   ~ 0
DB[0..7]
Wire Bus Line
	12750 6400 13150 6400
Text Label 13150 6400 2    50   ~ 0
DB[0..7]
Wire Bus Line
	12750 7800 13150 7800
Text Label 13150 7800 2    50   ~ 0
DB[0..7]
Wire Bus Line
	9100 6500 8600 6500
Text Label 8600 6500 0    50   ~ 0
DB[0..7]
Wire Bus Line
	9100 7250 8600 7250
Wire Wire Line
	11250 5800 10650 5800
Text Label 10650 5800 0    50   ~ 0
ShiftIn
Wire Wire Line
	10300 6400 10100 6400
Text Label 8600 6700 0    50   ~ 0
PC_Cond_Inc
Wire Wire Line
	8600 6700 9100 6700
Text Label 6550 5400 0    50   ~ 0
RegA_Latch
Text Label 6550 5300 0    50   ~ 0
RegA_OE
Text Label 6550 6200 0    50   ~ 0
RegB_Latch
Text Label 6550 6100 0    50   ~ 0
RegB_OE
Wire Wire Line
	7000 5300 6550 5300
Wire Wire Line
	7000 5400 6550 5400
Wire Wire Line
	7000 6100 6550 6100
Wire Wire Line
	7000 6200 6550 6200
Wire Wire Line
	11250 6000 10650 6000
Text Label 10650 6000 0    50   ~ 0
BarrelS_OE
Text Label 8600 6400 0    50   ~ 0
Inst[0..15]
Wire Bus Line
	9100 6400 8600 6400
Text Label 10650 6700 0    50   ~ 0
Inst[0..15]
Wire Bus Line
	11250 6700 10650 6700
Text Label 10650 5600 0    50   ~ 0
Inst[0..15]
Wire Bus Line
	11250 5600 10650 5600
Text Label 8600 7250 0    50   ~ 0
Inst[0..15]
Wire Wire Line
	8050 6400 8400 6400
Text Label 8400 6400 2    50   ~ 0
DB_OUT
Wire Bus Line
	8050 6300 8400 6300
Text Label 8400 6300 2    50   ~ 0
DB[0..7]
Wire Bus Line
	9100 5700 8500 5700
Text Label 9050 5700 2    50   ~ 0
RegB[0..7]
$Sheet
S 7000 10700 1250 150 
U 62043340
F0 "PowerInput" 50
F1 "PowerInput.sch" 50
$EndSheet
Text Label 6750 10200 0    50   ~ 0
RESET
Wire Wire Line
	7000 10200 6750 10200
Text Label 10750 10000 2    50   ~ 0
CLK
Wire Wire Line
	10550 10000 10750 10000
Text Label 11000 9500 2    50   ~ 0
PWR_RESET
Text Label 11000 9400 2    50   ~ 0
~RESET
Text Label 11000 9300 2    50   ~ 0
RESET
Wire Wire Line
	10550 9500 11000 9500
Wire Wire Line
	10550 9400 11000 9400
Wire Wire Line
	10550 9300 11000 9300
Text Label 6500 9400 0    50   ~ 0
Int_Assert
Text Label 11050 10200 2    50   ~ 0
CLK_F[0..2]
Text Label 6750 10100 0    50   ~ 0
CLK
Wire Wire Line
	6750 10100 7000 10100
Text Label 8950 9500 2    50   ~ 0
Set_Btn_Int_Flag
Wire Wire Line
	8950 9500 8250 9500
Wire Wire Line
	7000 9400 6500 9400
Wire Wire Line
	9050 10700 8600 10700
Text Label 8600 10700 0    50   ~ 0
~RESET
$Sheet
S 9050 9900 1500 900 
U 608BF85D
F0 "Clock" 50
F1 "Clock.sch" 50
F2 "CLK" O R 10550 10000 50 
F3 "~RESET" I L 9050 10700 50 
F4 "CLK_F[0..2]" O R 10550 10200 50 
F5 "Inc_Clk_F" I L 9050 10400 50 
F6 "Dec_Clk_F" I L 9050 10300 50 
F7 "PWR_Reset" I L 9050 10600 50 
F8 "Clk_Step_EN" I L 9050 10100 50 
F9 "Clk_Step" I L 9050 10000 50 
$EndSheet
$Sheet
S 9050 9200 1500 400 
U 5FD3CD07
F0 "ResetCtrl" 50
F1 "ResetCtrl.sch" 50
F2 "~RESET" O R 10550 9400 50 
F3 "RESET" O R 10550 9300 50 
F4 "UI_Do_Reset" I L 9050 9300 50 
F5 "Prog_Do_Reset" I L 9050 9400 50 
F6 "PWR_RESET" O R 10550 9500 50 
$EndSheet
Wire Wire Line
	9050 10600 8600 10600
Text Label 8600 10600 0    50   ~ 0
PWR_RESET
Wire Wire Line
	8250 9300 9050 9300
Wire Wire Line
	8250 10000 9050 10000
Wire Bus Line
	11050 10200 10550 10200
Text Label 8350 9400 0    50   ~ 0
Prog_Do_Reset
Wire Wire Line
	8350 9400 9050 9400
Wire Wire Line
	9050 10100 8250 10100
Wire Wire Line
	8250 10300 9050 10300
Wire Wire Line
	8250 10400 9050 10400
Text Notes 6500 8900 0    315  Italic 0
System Control:
$Sheet
S 7000 9200 1250 1300
U 5FD4EE20
F0 "UI" 50
F1 "UI.sch" 50
F2 "RESET" I L 7000 10200 50 
F3 "CLK" I L 7000 10100 50 
F4 "Int_Assert" T L 7000 9400 50 
F5 "Int_Active" I L 7000 9300 50 
F6 "UI_Halted" I L 7000 9600 50 
F7 "UI_Halt_Inst" I L 7000 9700 50 
F8 "UI_Halt_Step" I L 7000 9800 50 
F9 "UI_Halt_Bkpt" I L 7000 9900 50 
F10 "Set_Btn_Int_Flag" O R 8250 9500 50 
F11 "Clk_Step" O R 8250 10000 50 
F12 "Clk_Step_EN" O R 8250 10100 50 
F13 "Inst_Step_EN" O R 8250 9900 50 
F14 "Inst_Step" O R 8250 9800 50 
F15 "Dec_Clk_F" O R 8250 10300 50 
F16 "Inc_Clk_F" O R 8250 10400 50 
F17 "UI_Do_Reset" O R 8250 9300 50 
$EndSheet
Wire Wire Line
	7000 9700 6500 9700
Wire Wire Line
	7000 9600 6500 9600
Wire Wire Line
	7000 9800 6500 9800
Wire Wire Line
	7000 9900 6500 9900
Text Label 6500 9700 0    50   ~ 0
UI_Halt_Inst
Text Label 6500 9600 0    50   ~ 0
UI_Halted
Text Label 6500 9800 0    50   ~ 0
UI_Halt_Step
Text Label 6500 9900 0    50   ~ 0
UI_Halt_Bkpt
Text Label 15550 5900 2    50   ~ 0
UI_Halt_Inst
Text Label 15550 5800 2    50   ~ 0
UI_Halted
Text Label 15550 6000 2    50   ~ 0
UI_Halt_Step
Text Label 15550 6100 2    50   ~ 0
UI_Halt_Bkpt
Wire Wire Line
	15000 5800 15550 5800
Wire Wire Line
	15000 5900 15550 5900
Wire Wire Line
	15000 6000 15550 6000
Wire Wire Line
	15000 6100 15550 6100
Text Label 6500 9300 0    50   ~ 0
Int_Active
Wire Wire Line
	7000 9300 6500 9300
$Sheet
S 11250 6300 1500 1100
U 5FF66C9F
F0 "LogicOps.sch" 50
F1 "LogicOps.sch" 50
F2 "DB_OUT" T R 12750 6500 50 
F3 "DB[0..7]" T R 12750 6400 50 
F4 "Inst[0..15]" I L 11250 6700 50 
F5 "OP_B_Comp[0..7]" O R 12750 6700 50 
F6 "RegA[0..7]" I L 11250 6400 50 
F7 "OpB[0..7]" I L 11250 6500 50 
F8 "Dual_OE" I L 11250 6900 50 
F9 "Comp_OE" I L 11250 7000 50 
F10 "Not_OE" I L 11250 7100 50 
F11 "CompC" O R 12750 6900 50 
F12 "CompC_Flag" I L 11250 7300 50 
$EndSheet
Text Label 10700 8100 0    50   ~ 0
Inst[0..15]
Text Label 13150 8200 2    50   ~ 0
HC
Text Label 13150 8300 2    50   ~ 0
OVF
Text Label 13150 8100 2    50   ~ 0
C
Wire Wire Line
	12750 8100 13150 8100
Wire Wire Line
	12750 8200 13150 8200
Wire Wire Line
	13150 8300 12750 8300
Text Label 10700 8300 0    50   ~ 0
ALU_OE
Wire Wire Line
	10700 8300 11250 8300
Text Label 10700 8400 0    50   ~ 0
ALU_DoBComp
Wire Wire Line
	10700 8400 11250 8400
Text Label 10700 8600 0    50   ~ 0
C_Flag
Wire Wire Line
	11250 8600 10700 8600
Wire Wire Line
	15000 3100 15850 3100
Wire Wire Line
	15000 3200 15850 3200
Text Label 15850 3100 2    50   ~ 0
Logic_Not_OE
Text Label 15850 3200 2    50   ~ 0
Logic_Dual_OE
Text Label 10650 7100 0    50   ~ 0
Logic_Not_OE
Text Label 10650 6900 0    50   ~ 0
Logic_Dual_OE
Wire Bus Line
	8500 5300 10450 5300
Connection ~ 8500 5300
Wire Bus Line
	9100 7150 8500 7150
Wire Bus Line
	10100 7150 10550 7150
Text Label 10650 7000 0    50   ~ 0
Logic_Comp_OE
Wire Bus Line
	10550 5400 10550 6500
Wire Bus Line
	10450 5300 10450 6400
Wire Bus Line
	10550 8000 11250 8000
Wire Bus Line
	10450 7900 11250 7900
Wire Bus Line
	10550 6500 11250 6500
Connection ~ 10550 6500
Wire Bus Line
	10450 6400 11250 6400
Connection ~ 10450 6400
Wire Bus Line
	10550 5400 11250 5400
Wire Bus Line
	10450 5300 11250 5300
Connection ~ 10450 5300
Wire Wire Line
	10650 6900 11250 6900
Wire Wire Line
	10650 7000 11250 7000
Wire Wire Line
	10650 7100 11250 7100
Wire Bus Line
	12850 6700 12850 7550
Wire Bus Line
	10450 6400 10450 7900
Wire Bus Line
	11250 8100 10700 8100
Wire Wire Line
	12750 6900 13150 6900
Text Label 13150 6900 2    50   ~ 0
CompC
Wire Wire Line
	4150 6500 3850 6500
Text Label 3850 6500 0    50   ~ 0
CompC
Text Label 6000 5800 2    50   ~ 0
CompC_Flag
Text Label 10650 7300 0    50   ~ 0
CompC_Flag
Wire Wire Line
	10650 7300 11250 7300
Wire Wire Line
	4150 8150 3900 8150
Text Label 3900 8150 0    50   ~ 0
~RESET
$Sheet
S 4150 5200 1350 1800
U 5FD65262
F0 "SysReg_1" 50
F1 "SysReg_1.sch" 50
F2 "PeriphA[0..7]" I L 4150 5300 50 
F3 "Periph_W" I L 4150 5500 50 
F4 "Periph_R" I L 4150 5600 50 
F5 "~RESET" I L 4150 6900 50 
F6 "DB_OUT" T R 5500 5400 50 
F7 "DB[0..7]" T R 5500 5300 50 
F8 "ShiftIn" O R 5500 5600 50 
F9 "C_Out" O R 5500 5700 50 
F10 "CompC_Out" O R 5500 5800 50 
F11 "CLK" I L 4150 6700 50 
F12 "RESET" I L 4150 6800 50 
F13 "C" I L 4150 6200 50 
F14 "HC" I L 4150 6300 50 
F15 "CompC" I L 4150 6500 50 
F16 "OVF" I L 4150 6400 50 
F17 "ALU_DoBComp" I L 4150 5800 50 
F18 "ALU_OE" I L 4150 5900 50 
F19 "Logic_Comp_OE" I L 4150 6000 50 
$EndSheet
Wire Wire Line
	3850 6700 4150 6700
Wire Wire Line
	3850 6800 4150 6800
Wire Wire Line
	3850 6900 4150 6900
Wire Wire Line
	8250 9800 8800 9800
Text Label 8800 9800 2    50   ~ 0
Inst_Step
Text Label 8800 9900 2    50   ~ 0
Inst_Step_EN
Wire Wire Line
	8250 9900 8800 9900
Wire Wire Line
	13400 1700 12900 1700
Text Label 12900 1700 0    50   ~ 0
Inst_Step
Text Label 12900 1800 0    50   ~ 0
Inst_Step_EN
Wire Wire Line
	13400 1800 12900 1800
Text Label 12900 2400 0    50   ~ 0
~RESET
Wire Wire Line
	12900 2300 13400 2300
Wire Wire Line
	12900 2400 13400 2400
Text Label 10300 6400 2    50   ~ 0
Cond
Wire Wire Line
	800  8000 1400 8000
Wire Wire Line
	800  8200 1400 8200
Text Label 800  8000 0    50   ~ 0
RAM_Sync_D_A
Text Label 800  8200 0    50   ~ 0
RAM_R_Sync_A
Text Label 800  8100 0    50   ~ 0
RAM_W
Wire Wire Line
	1400 8100 800  8100
Wire Bus Line
	3450 7300 3450 8550
Wire Bus Line
	700  10650 4150 10650
Wire Bus Line
	1400 9000 700  9000
Wire Bus Line
	1400 7700 700  7700
Text Label 950  5300 0    50   ~ 0
Inst[0..15]
Wire Bus Line
	1400 5300 950  5300
Wire Wire Line
	15000 4600 15850 4600
Wire Wire Line
	15000 4700 15850 4700
Wire Wire Line
	15000 4800 15850 4800
Wire Wire Line
	15000 4900 15850 4900
Wire Wire Line
	15000 5000 15850 5000
Wire Wire Line
	15000 5100 15850 5100
Wire Wire Line
	15000 5300 15850 5300
Wire Wire Line
	15000 5400 15850 5400
Wire Wire Line
	15000 5500 15850 5500
Wire Wire Line
	15000 5600 15850 5600
Text Label 15850 4600 2    50   ~ 0
Stack_W
Text Label 15850 4700 2    50   ~ 0
Stack_R
Text Label 15850 4800 2    50   ~ 0
Stack_Present_Data
Text Label 15850 4900 2    50   ~ 0
Stack_Sync_Data
Text Label 15850 5000 2    50   ~ 0
Stack_Sync_Adr
Text Label 15850 5100 2    50   ~ 0
Stack_Ptr_Latch
Text Label 15850 5300 2    50   ~ 0
Stack_Ofs_1
Text Label 15850 5400 2    50   ~ 0
Stack_Ofs_-1
Text Label 15850 5500 2    50   ~ 0
Stack_Ofs_0
Text Label 15850 5600 2    50   ~ 0
Stack_Ofs_Sgn
Wire Wire Line
	1400 5500 650  5500
Wire Wire Line
	1400 5600 650  5600
Wire Wire Line
	1400 5700 650  5700
Wire Wire Line
	1400 5800 650  5800
Wire Wire Line
	1400 5900 650  5900
Wire Wire Line
	1400 6000 650  6000
Wire Wire Line
	1400 6100 650  6100
Wire Wire Line
	1400 6200 650  6200
Wire Wire Line
	1400 6300 650  6300
Wire Wire Line
	1400 6400 650  6400
Text Label 650  5500 0    50   ~ 0
Stack_W
Text Label 650  5600 0    50   ~ 0
Stack_R
Text Label 650  5700 0    50   ~ 0
Stack_Present_Data
Text Label 650  5800 0    50   ~ 0
Stack_Sync_Data
Text Label 650  5900 0    50   ~ 0
Stack_Sync_Adr
Text Label 650  6000 0    50   ~ 0
Stack_Ptr_Latch
Text Label 650  6100 0    50   ~ 0
Stack_Ofs_1
Text Label 650  6200 0    50   ~ 0
Stack_Ofs_-1
Text Label 650  6300 0    50   ~ 0
Stack_Ofs_0
Text Label 650  6400 0    50   ~ 0
Stack_Ofs_Sgn
Connection ~ 700  7700
Connection ~ 700  9000
Wire Bus Line
	700  9000 700  10650
Wire Bus Line
	700  7700 700  9000
Wire Bus Line
	700  7200 700  7700
$Sheet
S 1400 5200 1500 1700
U 5FD6EE9C
F0 "Stack" 50
F1 "Stack.sch" 50
F2 "CLK" I L 1400 6600 50 
F3 "RESET" I L 1400 6700 50 
F4 "~RESET" I L 1400 6800 50 
F5 "DB[0..7]" T R 2900 5300 50 
F6 "W" I L 1400 5500 50 
F7 "R" I L 1400 5600 50 
F8 "DB_OUT" T R 2900 5400 50 
F9 "Present_Data" I L 1400 5700 50 
F10 "Sync_Data" I L 1400 5800 50 
F11 "Ofs_Sgn" I L 1400 6400 50 
F12 "Inst[0..15]" I L 1400 5300 50 
F13 "Ofs_0" I L 1400 6300 50 
F14 "Ofs_-1" I L 1400 6200 50 
F15 "Ofs_1" I L 1400 6100 50 
F16 "Sync_Adr" I L 1400 5900 50 
F17 "Ptr_Latch" I L 1400 6000 50 
$EndSheet
$Sheet
S 8600 3100 1300 550 
U 5F3A2F3D
F0 "PC[0..7]/[8..13] ->  DBus" 50
F1 "PC_to_DBus.sch" 50
F2 "PC[0..7]->DBus" I L 8600 3550 50 
F3 "PC[0..13]" I L 8600 3200 50 
F4 "DB_OUT" T R 9900 3300 50 
F5 "DB[0..7]" T R 9900 3200 50 
F6 "PC[8..13]->DBus" I L 8600 3450 50 
$EndSheet
Wire Wire Line
	9900 3300 10250 3300
Text Label 10250 3300 2    50   ~ 0
DB_OUT
Text Label 10250 3200 2    50   ~ 0
DB[0..7]
Wire Bus Line
	8450 3200 8600 3200
Wire Wire Line
	8600 3550 7800 3550
Wire Wire Line
	8600 3450 7800 3450
Text Label 7800 3550 0    50   ~ 0
PC[0..7]->DBus
Text Label 7800 3450 0    50   ~ 0
PC[8..13]->DBus
Wire Bus Line
	8450 2300 8450 3200
Connection ~ 8450 2300
Wire Wire Line
	9900 2800 10250 2800
Wire Wire Line
	10000 2300 9900 2300
Wire Wire Line
	9900 2400 10100 2400
Wire Wire Line
	10200 2500 9900 2500
Wire Bus Line
	8450 2300 8600 2300
$Sheet
S 8600 2200 1300 700 
U 5FD6F3D6
F0 "Breakpoint" 50
F1 "Breakpoint.sch" 50
F2 "PC[0..13]" I L 8600 2300 50 
F3 "BKPT_RCLK" I R 9900 2500 50 
F4 "BKPT_SER" I R 9900 2400 50 
F5 "BKPT_SCLK" I R 9900 2300 50 
F6 "Bkpt_Trig" O R 9900 2800 50 
F7 "PWR_RESET" I R 9900 2600 50 
$EndSheet
Wire Bus Line
	2900 9000 3450 9000
Wire Bus Line
	3450 9000 3450 8550
Connection ~ 3450 8550
Wire Bus Line
	8500 5700 8500 6100
Connection ~ 10550 7150
Wire Bus Line
	10550 7150 10550 8000
Wire Bus Line
	10550 6500 10550 7150
Wire Bus Line
	8500 5300 8500 5600
Wire Bus Line
	8500 6100 8500 7150
Text Label 6050 10650 2    50   ~ 0
RegB->RAMA
Text Label 6150 10750 2    50   ~ 0
In[0..7]->RAMA
Wire Wire Line
	5500 10650 6050 10650
Wire Wire Line
	5500 10750 6150 10750
Text Label 10350 2600 2    50   ~ 0
PWR_RESET
Wire Wire Line
	9900 2600 10350 2600
Wire Bus Line
	6600 1400 6600 2700
Wire Bus Line
	9900 3200 10250 3200
Wire Bus Line
	12800 2550 12800 3200
Wire Bus Line
	12050 3200 12800 3200
$Sheet
S 10850 3100 1200 500 
U 5F5CACFC
F0 "In[0..13]->ROMA" 50
F1 "In0..13_to_ROMA.sch" 50
F2 "ROMA[0..13]" B L 10850 3200 50 
F3 "In[0..13]->ROMA" I R 12050 3400 50 
F4 "ROMA_OUT" T L 10850 3300 50 
F5 "Inst[0..15]" I R 12050 3200 50 
F6 "IntAdr->ROMA" I R 12050 3500 50 
$EndSheet
Wire Wire Line
	10850 3300 10450 3300
Text Label 10450 3300 0    50   ~ 0
ROMA_OUT
Wire Wire Line
	12050 3400 12750 3400
Text Label 12750 3400 2    50   ~ 0
In[0..13]->ROMA
Wire Wire Line
	12050 3500 12750 3500
Text Label 12750 3500 2    50   ~ 0
IntAdr->ROMA
Wire Bus Line
	10350 3200 10350 3800
Wire Bus Line
	10350 3800 6600 3800
Wire Bus Line
	6600 2700 6600 3800
Wire Bus Line
	9900 1400 10850 1400
Wire Bus Line
	10350 3200 10850 3200
$EndSCHEMATC
