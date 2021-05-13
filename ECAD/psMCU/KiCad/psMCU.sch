EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 1 98
Title "psMCU"
Date "2021-03-30"
Rev "v1.0"
Comp "Philipp Schilk"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 "A fairly full-featured, 8-bit processor built entirely from 74-Series logic."
$EndDescr
Wire Notes Line
	16500 1050 16500 900 
Wire Wire Line
	10600 1500 10000 1500
Text Label 10600 1500 2    50   ~ 0
Prog_Do_Reset
Text Notes 4150 1000 0    315  Italic 0
Central State Machine:
Connection ~ 12800 1400
Wire Bus Line
	6700 2700 6700 3850
Wire Bus Line
	12800 2550 12800 3850
Wire Bus Line
	10000 1400 10850 1400
Connection ~ 12800 2550
Wire Bus Line
	12050 3850 12800 3850
Wire Bus Line
	10850 3850 6700 3850
Wire Bus Line
	12050 1400 12800 1400
Text Label 12600 1400 2    50   ~ 0
Inst[0..15]
Wire Bus Line
	12050 2550 12800 2550
Connection ~ 6700 2700
Wire Bus Line
	6700 2700 7350 2700
Connection ~ 6700 1400
Wire Bus Line
	7350 1400 6700 1400
Wire Bus Line
	6700 2400 6700 2700
Connection ~ 6700 2400
Wire Bus Line
	6150 2400 6700 2400
Wire Bus Line
	6700 1400 6700 2400
Wire Bus Line
	6150 1400 6700 1400
Wire Wire Line
	4650 2000 4900 2000
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
RegB->RAMA[0..7]
Text Label 15850 3800 2    50   ~ 0
In[0..7]->RAMA[0..7]
Wire Wire Line
	15000 3900 15850 3900
Wire Wire Line
	15000 3800 15850 3800
Wire Wire Line
	4250 1700 4900 1700
Wire Wire Line
	4250 1600 4900 1600
Wire Wire Line
	4250 1500 4900 1500
Wire Wire Line
	4250 1400 4900 1400
Text Label 4250 1400 0    50   ~ 0
RegT_LatchH
Text Label 4250 1500 0    50   ~ 0
RegT_LatchL
Text Label 4250 1700 0    50   ~ 0
RegT_OE_DataL
Text Label 4250 1600 0    50   ~ 0
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
S 4900 1300 1250 800 
U 612C5E2A
F0 "RegT" 50
F1 "RegT.sch" 50
F2 "CLK" I L 4900 1900 50 
F3 "RESET" I L 4900 2000 50 
F4 "DB_OUT" T R 6150 1800 50 
F5 "DB[0..7]" T R 6150 1700 50 
F6 "ROMA[0..13]" B R 6150 1400 50 
F7 "ROMA_OUT" B R 6150 1500 50 
F8 "LatchL" I L 4900 1400 50 
F9 "LatchH" I L 4900 1500 50 
F10 "OE_Adr" I L 4900 1600 50 
F11 "OE_DataL" I L 4900 1700 50 
$EndSheet
Text Label 15850 2200 2    50   ~ 0
RegB_OE
Text Label 15850 2100 2    50   ~ 0
RegB_Latch
Text Label 15850 2000 2    50   ~ 0
RegA_OE
Text Label 15850 1900 2    50   ~ 0
RegA_Latch
Text Label 4300 2400 0    50   ~ 0
IntAdr->ROMA
Wire Wire Line
	4900 2400 4300 2400
Text Label 15850 4100 2    50   ~ 0
IntAdr->ROMA
Wire Wire Line
	15000 4100 15850 4100
Text Label 7900 3400 0    50   ~ 0
PC[8..13]->DBus
Text Label 7900 3500 0    50   ~ 0
PC[0..7]->DBus
Wire Wire Line
	8700 3400 7900 3400
Wire Wire Line
	8700 3500 7900 3500
Text Label 15850 3700 2    50   ~ 0
PC[8..13]->DBus
Text Label 15850 3600 2    50   ~ 0
PC[0..7]->DBus
Wire Wire Line
	15000 3700 15850 3700
Wire Wire Line
	15000 3600 15850 3600
Text Label 12750 4050 2    50   ~ 0
In[0..13]->ROMA
Wire Wire Line
	12050 4050 12750 4050
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
Text Label 6800 2000 0    50   ~ 0
Cond
Wire Wire Line
	7350 2000 6800 2000
Wire Wire Line
	6800 1800 7350 1800
Wire Wire Line
	6800 1700 7350 1700
Wire Wire Line
	6800 1600 7350 1600
Text Label 6800 1800 0    50   ~ 0
PC_Latch
Text Label 6800 1700 0    50   ~ 0
PC_Cond_Inc
Text Label 6800 1600 0    50   ~ 0
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
F34 "In[0..7]->RAMA[0..7]" O R 15000 3800 50 
F35 "RegB->RAMA[0..7]" O R 15000 3900 50 
F36 "Inst_Step" I L 13400 1700 50 
F37 "Inst_Step_EN" I L 13400 1800 50 
F38 "Int_Assert" I L 13400 2000 50 
F39 "Int_EN" I L 13400 2100 50 
F40 "UI_Halted" O R 15000 5800 50 
F41 "UI_Halt_Inst" O R 15000 5900 50 
F42 "UI_Halt_Step" O R 15000 6000 50 
F43 "UI_Halt_Bkpt" O R 15000 6100 50 
F44 "Stack_Ptr_Latch" O R 15000 5100 50 
F45 "Stack_Ofs_1" O R 15000 5300 50 
F46 "Stack_Ofs_-1" O R 15000 5400 50 
F47 "Stack_Ofs_0" O R 15000 5500 50 
F48 "RegT_OE_Adr" O R 15000 2600 50 
F49 "RegT_OE_DataL" O R 15000 2700 50 
F50 "Int_Active" O R 15000 6200 50 
F51 "IntAdr->ROMA" O R 15000 4100 50 
F52 "Stack_Ofs_Sgn" O R 15000 5600 50 
$EndSheet
Wire Notes Line
	14100 1350 14200 1350
Wire Bus Line
	12800 1400 13400 1400
Wire Wire Line
	10100 2300 10000 2300
Wire Wire Line
	10100 1900 10100 2300
Wire Wire Line
	10000 1900 10100 1900
Wire Wire Line
	10200 1800 10000 1800
Wire Wire Line
	10200 2400 10200 1800
Wire Wire Line
	10000 2400 10200 2400
Wire Wire Line
	10300 2500 10000 2500
Wire Wire Line
	10300 1700 10300 2500
Wire Wire Line
	10000 1700 10300 1700
Connection ~ 8550 2300
Wire Bus Line
	8550 2300 8550 3150
$Sheet
S 8700 2200 1300 650 
U 5FD6F3D6
F0 "Breakpoint" 50
F1 "Breakpoint.sch" 50
F2 "PC[0..13]" I L 8700 2300 50 
F3 "BKPT_RCLK" I R 10000 2500 50 
F4 "BKPT_SER" I R 10000 2400 50 
F5 "BKPT_SCLK" I R 10000 2300 50 
F6 "Bkpt_Trig" O R 10000 2750 50 
$EndSheet
Wire Bus Line
	8550 1400 8700 1400
Connection ~ 8550 1400
Wire Bus Line
	8550 1400 8550 2300
Wire Bus Line
	8400 1400 8550 1400
Wire Wire Line
	7100 2300 7350 2300
Wire Wire Line
	7100 2200 7350 2200
Text Label 6600 1500 2    50   ~ 0
ROMA_OUT
Wire Wire Line
	6150 1500 6600 1500
Text Label 10500 2550 0    50   ~ 0
DB[0..7]
Wire Bus Line
	10850 2550 10500 2550
Wire Bus Line
	8550 3150 8700 3150
Text Label 10350 3150 2    50   ~ 0
DB[0..7]
Wire Bus Line
	10000 3150 10350 3150
Text Label 6600 1700 2    50   ~ 0
DB[0..7]
Wire Bus Line
	6150 1700 6600 1700
Text Label 6600 1800 2    50   ~ 0
DB_OUT
Wire Wire Line
	6150 1800 6600 1800
Text Label 10450 3950 0    50   ~ 0
ROMA_OUT
Wire Wire Line
	10850 3950 10450 3950
Text Label 6900 2800 0    50   ~ 0
ROMA_OUT
Wire Wire Line
	7350 2800 6900 2800
Text Label 6600 2500 2    50   ~ 0
ROMA_OUT
Wire Wire Line
	6150 2500 6600 2500
Text Label 10500 2650 0    50   ~ 0
DB_OUT
Wire Wire Line
	10850 2650 10500 2650
Text Label 10350 3250 2    50   ~ 0
DB_OUT
Wire Wire Line
	10000 3250 10350 3250
Text Label 10350 2750 2    50   ~ 0
Bkpt_Trig
Wire Wire Line
	10000 2750 10350 2750
Text Label 10600 1800 0    50   ~ 0
CLK
Wire Wire Line
	10850 1800 10600 1800
Text Label 7100 2300 0    50   ~ 0
~RESET
Text Label 10600 1900 0    50   ~ 0
RESET
Wire Wire Line
	10850 1900 10600 1900
Text Label 7100 2200 0    50   ~ 0
CLK
Text Label 4650 2000 0    50   ~ 0
RESET
Text Label 4650 1900 0    50   ~ 0
CLK
Wire Wire Line
	4900 1900 4650 1900
Wire Bus Line
	8550 2300 8700 2300
$Sheet
S 10850 3750 1200 400 
U 5F5CACFC
F0 "In[0..13]->ROMA" 50
F1 "In0..13_to_ROMA.sch" 50
F2 "ROMA[0..13]" B L 10850 3850 50 
F3 "In[0..13]->ROMA" I R 12050 4050 50 
F4 "ROMA_OUT" T L 10850 3950 50 
F5 "Inst[0..15]" I R 12050 3850 50 
$EndSheet
$Sheet
S 4900 2300 1250 350 
U 5F575798
F0 "INTAdr->ROMA" 50
F1 "INTAdr_to_ROMA.sch" 50
F2 "ROMA[0..13]" B R 6150 2400 50 
F3 "ROMA_OUT" T R 6150 2500 50 
F4 "IntAdr->ROMA" I L 4900 2400 50 
$EndSheet
$Sheet
S 7350 1300 1050 1100
U 5F607AA2
F0 "PC" 50
F1 "PC.sch" 50
F2 "PC[0..13]" O R 8400 1400 50 
F3 "CLK" I L 7350 2200 50 
F4 "~RESET" I L 7350 2300 50 
F5 "ROMA[0..13]" B L 7350 1400 50 
F6 "Inc" I L 7350 1600 50 
F7 "Latch" I L 7350 1800 50 
F8 "Cond_Inc" I L 7350 1700 50 
F9 "Cond" I L 7350 2000 50 
$EndSheet
$Sheet
S 8700 1300 1300 700 
U 5F28170E
F0 "ROM" 50
F1 "ROM.sch" 50
F2 "PC[0..13]" I L 8700 1400 50 
F3 "NextInst[0..15]" O R 10000 1400 50 
F4 "BKPT_RCLK" O R 10000 1700 50 
F5 "BKPT_SER" O R 10000 1800 50 
F6 "BKPT_SCLK" O R 10000 1900 50 
F7 "Prog_Do_Reset" O R 10000 1500 50 
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
S 8700 3050 1300 550 
U 5F3A2F3D
F0 "PC[0..7]/[8..13] ->  DBus" 50
F1 "PC_to_DBus.sch" 50
F2 "PC[0..7]->DBus" I L 8700 3500 50 
F3 "PC[0..13]" I L 8700 3150 50 
F4 "DB_OUT" T R 10000 3250 50 
F5 "DB[0..7]" T R 10000 3150 50 
F6 "PC[8..13]->DBus" I L 8700 3400 50 
$EndSheet
$Sheet
S 7350 2600 1050 300 
U 6041A022
F0 "ROMA Bus Display" 50
F1 "ROMA_DISPLAY.sch" 50
F2 "ROMA_OUT" T L 7350 2800 50 
F3 "ROMA[0..13]" B L 7350 2700 50 
$EndSheet
$Sheet
S 10850 2450 1200 400 
U 609EB802
F0 "Inst[0..7]->DBus" 50
F1 "Inst0..7_to_DBus.sch" 50
F2 "Inst[0..7]->DBus" I R 12050 2750 50 
F3 "Inst[0..15]" I R 12050 2550 50 
F4 "DB[0..7]" T L 10850 2550 50 
F5 "DB_OUT" T L 10850 2650 50 
$EndSheet
Wire Bus Line
	5950 10450 5400 10450
Text Label 5950 10450 2    50   ~ 0
RegB[0..7]
Wire Bus Line
	3350 5300 3350 7300
Connection ~ 3350 7300
Text Notes 550  4800 0    315  Italic 0
Memory & Peripherals:
Text Notes 2800 6350 0    50   ~ 0
\n
$Sheet
S 1300 7600 1500 1100
U 5ED3C49A
F0 "RAM" 50
F1 "RAM.sch" 50
F2 "DB[0..7]" T R 2800 7700 50 
F3 "CLK" I L 1300 8400 50 
F4 "RESET" I L 1300 8500 50 
F5 "~RESET" I L 1300 8600 50 
F6 "RAMA[0..8]" B L 1300 7700 50 
F7 "DB_OUT" T R 2800 7800 50 
F8 "PAGE[0..4]" I L 1300 7800 50 
F9 "Sync_D_A" I L 1300 8000 50 
F10 "W" I L 1300 8100 50 
F11 "R_Sync_A" I L 1300 8200 50 
$EndSheet
$Sheet
S 4050 10250 1350 600 
U 5F6FD493
F0 "In[0..7]/RegB->RAMA[0..7]" 50
F1 "In0..7_RegB_to_RAMA.sch" 50
F2 "Inst[0..15]" I R 5400 10350 50 
F3 "RegB[0..7]" I R 5400 10450 50 
F4 "RAMA[0..8]" B L 4050 10650 50 
F5 "RAMA_OUT" T L 4050 10750 50 
F6 "RegB->RAMA[0..7]" I R 5400 10650 50 
F7 "In[0..7]->RAMA[0..7]" I R 5400 10750 50 
$EndSheet
Wire Wire Line
	1300 8400 1050 8400
Text Label 1050 8300 0    50   ~ 0
CLK
Wire Wire Line
	1300 8500 1050 8500
Text Label 1050 8500 0    50   ~ 0
RESET
Wire Wire Line
	1300 8600 1050 8600
Text Label 1050 8600 0    50   ~ 0
~RESET
Wire Wire Line
	1300 6600 1050 6600
Text Label 1050 6600 0    50   ~ 0
CLK
Wire Wire Line
	1300 6700 1050 6700
Text Label 1050 6700 0    50   ~ 0
RESET
Wire Wire Line
	1300 6800 1050 6800
Text Label 1050 6800 0    50   ~ 0
~RESET
Wire Bus Line
	1300 7800 850  7800
Text Label 850  7800 0    50   ~ 0
PAGE[0..4]
Wire Wire Line
	2800 5400 3150 5400
Text Label 3150 5400 2    50   ~ 0
DB_OUT
Wire Bus Line
	2800 5300 3150 5300
Text Label 3150 5300 2    50   ~ 0
DB[0..7]
Wire Wire Line
	2800 7800 3150 7800
Text Label 3150 7800 2    50   ~ 0
DB_OUT
Wire Bus Line
	2800 7700 3150 7700
Text Label 3150 7700 2    50   ~ 0
DB[0..7]
$Sheet
S 1300 7100 1500 300 
U 604F08FB
F0 "RAMA Bus Display" 50
F1 "RAMA_DISPLAY.sch" 50
F2 "RAMA[0..8]" T L 1300 7200 50 
F3 "RAMA_OUT" T L 1300 7300 50 
$EndSheet
Text Label 900  7300 0    50   ~ 0
RAMA_OUT
Wire Wire Line
	900  7300 1300 7300
Text Label 3150 9200 2    50   ~ 0
DB[0..7]
Wire Bus Line
	2800 9200 3150 9200
Text Label 3150 9300 2    50   ~ 0
DB_OUT
Wire Wire Line
	2800 9300 3150 9300
Wire Wire Line
	1300 9700 850  9700
Text Label 1050 9900 0    50   ~ 0
CLK
Wire Wire Line
	1300 10000 1050 10000
Text Label 1050 10100 0    50   ~ 0
~RESET
Wire Wire Line
	1300 10100 1050 10100
Text Label 5850 7300 2    50   ~ 0
DB[0..7]
Wire Bus Line
	5400 7300 5850 7300
Text Label 5750 5300 2    50   ~ 0
DB[0..7]
Wire Bus Line
	5400 5300 5750 5300
Wire Bus Line
	4050 7300 3350 7300
Wire Bus Line
	4050 5300 3350 5300
Text Label 5850 7500 2    50   ~ 0
PAGE[0..4]
Wire Bus Line
	5400 7500 5850 7500
Text Label 5850 7400 2    50   ~ 0
DB_OUT
Wire Wire Line
	5400 7400 5850 7400
Text Label 5750 5400 2    50   ~ 0
DB_OUT
Wire Wire Line
	5400 5400 5750 5400
Text Label 3800 8050 0    50   ~ 0
RESET
Wire Wire Line
	4050 8050 3800 8050
Text Label 3800 7950 0    50   ~ 0
CLK
Wire Wire Line
	4050 7950 3800 7950
Text Label 3750 6700 0    50   ~ 0
CLK
Text Label 3750 6900 0    50   ~ 0
~RESET
$Sheet
S 4050 7200 1350 1050
U 5FD65291
F0 "SysReg_2" 50
F1 "SysReg_2.sch" 50
F2 "DB_OUT" T R 5400 7400 50 
F3 "DB[0..7]" T R 5400 7300 50 
F4 "RESET" I L 4050 8050 50 
F5 "CLK" I L 4050 7950 50 
F6 "PeriphA[0..7]" I L 4050 7300 50 
F7 "Periph_W" I L 4050 7500 50 
F8 "Periph_R" I L 4050 7600 50 
F9 "CLK_F[0..2]" I L 4050 7800 50 
F10 "PAGE[0..4]" O R 5400 7500 50 
F11 "~RESET" I L 4050 8150 50 
$EndSheet
Text Notes 3200 5200 0    50   ~ 0
\n\n
Text Label 3650 10750 0    50   ~ 0
RAMA_OUT
Wire Wire Line
	3650 10750 4050 10750
Wire Wire Line
	5400 5600 5900 5600
Text Label 5900 5600 2    50   ~ 0
ShiftIn
Text Label 850  9700 0    50   ~ 0
Int_Assert
Text Label 3750 6800 0    50   ~ 0
RESET
$Sheet
S 1300 8900 1500 1600
U 5FD1E173
F0 "PeriphealInterface" 50
F1 "PeripheralInterface.sch" 50
F2 "DB[0..7]" T R 2800 9200 50 
F3 "CLK" I L 1300 10000 50 
F4 "DB_OUT" T R 2800 9300 50 
F5 "RAMA[0..8]" B L 1300 9000 50 
F6 "~RESET" I L 1300 10100 50 
F7 "RAM_Sync_D_A" I L 1300 9400 50 
F8 "RAM_W" I L 1300 9200 50 
F9 "RAM_R_Sync_A" I L 1300 9300 50 
F10 "Periph_W" O R 2800 9500 50 
F11 "PeriphA[0..7]" O R 2800 9000 50 
F12 "Int_Active" I L 1300 9800 50 
F13 "Int_Assert" B L 1300 9700 50 
F14 "Int_EN" I L 1300 9600 50 
F15 "Periph_R_Sync_A" O R 2800 9600 50 
$EndSheet
Wire Wire Line
	1300 9800 850  9800
Text Label 850  9800 0    50   ~ 0
Int_Active
Text Label 850  9500 0    50   ~ 0
Int_EN
Wire Wire Line
	850  9600 1300 9600
Text Label 3300 9500 2    50   ~ 0
Periph_W
Text Label 3300 9600 2    50   ~ 0
Periph_R
Wire Wire Line
	3300 9500 2800 9500
Wire Wire Line
	2800 9600 3300 9600
Text Label 3550 5500 0    50   ~ 0
Periph_W
Text Label 3550 5600 0    50   ~ 0
Periph_R
Wire Wire Line
	3550 5500 4050 5500
Wire Wire Line
	4050 5600 3550 5600
Wire Wire Line
	4050 5800 3400 5800
Wire Wire Line
	4050 5900 3400 5900
Wire Wire Line
	4050 6000 3400 6000
Text Label 3400 5800 0    50   ~ 0
ALU_DoBComp
Text Label 3400 5900 0    50   ~ 0
ALU_OE
Text Label 3400 6000 0    50   ~ 0
Logic_Comp_OE
Wire Wire Line
	4050 6200 3750 6200
Wire Wire Line
	4050 6300 3750 6300
Wire Wire Line
	4050 6400 3750 6400
Text Label 5900 5700 2    50   ~ 0
C_Flag
Wire Wire Line
	5400 5700 5900 5700
Wire Wire Line
	5400 5800 5900 5800
Text Label 3750 6300 0    50   ~ 0
HC
Text Label 3750 6400 0    50   ~ 0
OVF
Text Label 3750 6200 0    50   ~ 0
C
Wire Wire Line
	1300 9200 700  9200
Text Label 700  9100 0    50   ~ 0
RAM_W
Text Label 700  9300 0    50   ~ 0
RAM_R_Sync_A
Text Label 700  9400 0    50   ~ 0
RAM_Sync_D_A
Wire Wire Line
	700  9300 1300 9300
Wire Wire Line
	700  9400 1300 9400
Text Label 3550 7800 0    50   ~ 0
CLK_F[0..2]
Wire Bus Line
	3550 7800 4050 7800
Text Label 3550 7500 0    50   ~ 0
Periph_W
Text Label 3550 7600 0    50   ~ 0
Periph_R
Wire Wire Line
	3550 7500 4050 7500
Wire Wire Line
	4050 7600 3550 7600
Wire Wire Line
	4050 8850 3550 8850
Wire Wire Line
	3550 8750 4050 8750
Text Label 3550 8850 0    50   ~ 0
Periph_R
Text Label 3550 8750 0    50   ~ 0
Periph_W
Wire Wire Line
	4050 9450 3800 9450
Wire Wire Line
	4050 9350 3800 9350
Wire Wire Line
	4050 9250 3800 9250
Wire Wire Line
	4050 9150 3800 9150
Text Label 3800 9450 0    50   ~ 0
B=0
Text Label 3800 9350 0    50   ~ 0
A=0
Text Label 3800 9250 0    50   ~ 0
A=B
Text Label 3800 9150 0    50   ~ 0
A<B
Text Label 3800 9050 0    50   ~ 0
A>B
Wire Wire Line
	4050 9050 3800 9050
$Sheet
S 4050 8450 1350 1600
U 5FD65308
F0 "SysReg_3" 50
F1 "SysReg_3.sch" 50
F2 "A>B" I L 4050 9050 50 
F3 "A<B" I L 4050 9150 50 
F4 "A=B" I L 4050 9250 50 
F5 "A=0" I L 4050 9350 50 
F6 "B=0" I L 4050 9450 50 
F7 "~RESET" I L 4050 9950 50 
F8 "CLK" I L 4050 9850 50 
F9 "DB[0..7]" T R 5400 8550 50 
F10 "DB_OUT" T R 5400 8650 50 
F11 "PeriphA[0..7]" I L 4050 8550 50 
F12 "Periph_W" I L 4050 8750 50 
F13 "Periph_R" I L 4050 8850 50 
F14 "Int_EN" O R 5400 8750 50 
F15 "Set_Btn_Int_Flag" I L 4050 9650 50 
$EndSheet
Wire Wire Line
	4050 9950 3800 9950
Text Label 3800 9950 0    50   ~ 0
~RESET
Wire Wire Line
	4050 9850 3800 9850
Text Label 3800 9850 0    50   ~ 0
CLK
Wire Wire Line
	5400 8750 5750 8750
Text Label 5750 8750 2    50   ~ 0
Int_EN
Wire Wire Line
	5400 8650 5750 8650
Text Label 5750 8650 2    50   ~ 0
DB_OUT
Wire Bus Line
	3350 8550 4050 8550
Wire Bus Line
	5400 8550 5750 8550
Text Label 5750 8550 2    50   ~ 0
DB[0..7]
Text Label 3400 9650 0    50   ~ 0
Set_Btn_Int_Flag
Wire Wire Line
	3400 9650 4050 9650
Wire Bus Line
	5400 10350 5950 10350
Text Label 5950 10350 2    50   ~ 0
Inst[0..15]
Wire Bus Line
	600  7200 1300 7200
Text Label 6250 10650 2    50   ~ 0
RegB->RAMA[0..7]
Text Label 6250 10750 2    50   ~ 0
In[0..7]->RAMA[0..7]
Wire Wire Line
	5400 10650 6250 10650
Wire Wire Line
	5400 10750 6250 10750
Text Notes 700  2950 0    79   ~ 0
 - 8bit Processor\n - 1MHz Clock\n - 4kB Heap RAM, \n - 4kB Stack RAM\n - 16kB Program ROM\n - Interrupts
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
Wire Bus Line
	8400 6100 8400 7050
Connection ~ 8400 6100
Wire Bus Line
	7950 6100 8400 6100
Wire Bus Line
	8400 5300 7950 5300
Text Notes 6400 4800 0    315  Italic 0
Data Manipulation:
Wire Bus Line
	8400 5300 8400 5500
Wire Bus Line
	9000 5500 8400 5500
$Sheet
S 11150 5200 1500 900 
U 5F43204F
F0 "BarrelShifter" 50
F1 "BarrelShifter.sch" 50
F2 "Shift_In" I L 11150 5800 50 
F3 "DB[0..7]" T R 12650 5300 50 
F4 "DB_OUT" T R 12650 5400 50 
F5 "OE" I L 11150 6000 50 
F6 "RegA[0..7]" I L 11150 5300 50 
F7 "OpB[0..7]" I L 11150 5400 50 
F8 "Inst[0..15]" I L 11150 5600 50 
$EndSheet
$Sheet
S 9000 7450 1000 300 
U 5F394B96
F0 "Data Bus Display" 50
F1 "DBUS_DISPLAY.sch" 50
F2 "DB_OUT" T L 9000 7650 50 
F3 "DB[0..7]" T L 9000 7550 50 
$EndSheet
$Sheet
S 9000 6950 1000 300 
U 5F629530
F0 "Operand B Select" 50
F1 "OperandB_select.sch" 50
F2 "Inst[0..15]" I L 9000 7150 50 
F3 "RegB[0..7]" I L 9000 7050 50 
F4 "OpB[0..7]" O R 10000 7050 50 
$EndSheet
$Sheet
S 9000 6200 1000 550 
U 5FD6B1FB
F0 "BitTest" 50
F1 "BitTest.sch" 50
F2 "DB[0..7]" T L 9000 6400 50 
F3 "Inst[0..15]" I L 9000 6300 50 
F4 "Cond" O R 10000 6300 50 
F5 "Cond_Inc" I L 9000 6600 50 
$EndSheet
$Sheet
S 11150 7700 1500 1000
U 5FD6F26B
F0 "ALU" 50
F1 "ALU.sch" 50
F2 "OpB[0..7]" I L 11150 8000 50 
F3 "DB_OUT" T R 12650 7900 50 
F4 "DB[0..7]" T R 12650 7800 50 
F5 "OE" I L 11150 8300 50 
F6 "OP_B_Comp[0..7]" I L 11150 7800 50 
F7 "RegA[0..7]" I L 11150 7900 50 
F8 "HC" O R 12650 8200 50 
F9 "C" O R 12650 8100 50 
F10 "Inst[0..15]" I L 11150 8100 50 
F11 "C_Flag" I L 11150 8600 50 
F12 "OVF" O R 12650 8300 50 
F13 "DoBComp" I L 11150 8400 50 
$EndSheet
$Sheet
S 9000 5400 1000 600 
U 5FD6B215
F0 "Comparator.sch" 50
F1 "Comparator.sch" 50
F2 "A>B" O R 10000 5500 50 
F3 "A<B" O R 10000 5600 50 
F4 "A=B" O R 10000 5700 50 
F5 "A=0" O R 10000 5800 50 
F6 "B=0" O R 10000 5900 50 
F7 "REG_A[0..7]" I L 9000 5500 50 
F8 "REG_B[0..7]" I L 9000 5600 50 
$EndSheet
Wire Wire Line
	10000 5500 10250 5500
Text Label 10250 5500 2    50   ~ 0
A>B
Text Label 10250 5600 2    50   ~ 0
A<B
Text Label 10250 5700 2    50   ~ 0
A=B
Text Label 10250 5800 2    50   ~ 0
A=0
Text Label 10250 5900 2    50   ~ 0
B=0
Wire Wire Line
	10000 5600 10250 5600
Wire Wire Line
	10000 5700 10250 5700
Wire Wire Line
	10000 5800 10250 5800
Wire Wire Line
	10000 5900 10250 5900
Wire Wire Line
	12650 7900 13050 7900
Text Label 13050 7900 2    50   ~ 0
DB_OUT
Wire Wire Line
	12650 5400 13050 5400
Text Label 13050 5400 2    50   ~ 0
DB_OUT
Wire Wire Line
	12650 6500 13050 6500
Text Label 13050 6500 2    50   ~ 0
DB_OUT
$Sheet
S 6900 5200 1050 600 
U 61C3CF7F
F0 "RegA" 50
F1 "Reg.sch" 50
F2 "DB[0..7]" T R 7950 5500 50 
F3 "VAL[0..7]" O R 7950 5300 50 
F4 "RESET" I L 6900 5700 50 
F5 "CLK" I L 6900 5600 50 
F6 "DB_OUT" T R 7950 5600 50 
F7 "OE" I L 6900 5300 50 
F8 "Latch" I L 6900 5400 50 
$EndSheet
$Sheet
S 6900 6000 1050 600 
U 61C3CF88
F0 "RegB" 50
F1 "Reg.sch" 50
F2 "OE" I L 6900 6100 50 
F3 "DB[0..7]" T R 7950 6300 50 
F4 "VAL[0..7]" O R 7950 6100 50 
F5 "RESET" I L 6900 6500 50 
F6 "CLK" I L 6900 6400 50 
F7 "DB_OUT" T R 7950 6400 50 
F8 "Latch" I L 6900 6200 50 
$EndSheet
Wire Wire Line
	6900 6400 6650 6400
Text Label 6650 6400 0    50   ~ 0
CLK
Wire Wire Line
	6900 6500 6650 6500
Text Label 6650 6500 0    50   ~ 0
RESET
Wire Wire Line
	6900 5600 6650 5600
Text Label 6650 5600 0    50   ~ 0
CLK
Wire Wire Line
	6900 5700 6650 5700
Text Label 6650 5700 0    50   ~ 0
RESET
Wire Wire Line
	7950 5600 8300 5600
Text Label 8300 5600 2    50   ~ 0
DB_OUT
Wire Bus Line
	11150 7800 11050 7800
Wire Bus Line
	11050 7800 11050 7550
Wire Bus Line
	11050 7550 12750 7550
Wire Bus Line
	12650 6700 12750 6700
Wire Wire Line
	9000 7650 8650 7650
Text Label 8650 7650 0    50   ~ 0
DB_OUT
Text Label 8950 5500 2    50   ~ 0
RegA[0..7]
Wire Bus Line
	9000 7550 8650 7550
Text Label 8650 7550 0    50   ~ 0
DB[0..7]
Wire Bus Line
	7950 5500 8300 5500
Text Label 8300 5500 2    50   ~ 0
DB[0..7]
Wire Bus Line
	12650 5300 13050 5300
Text Label 13050 5300 2    50   ~ 0
DB[0..7]
Wire Bus Line
	12650 6400 13050 6400
Text Label 13050 6400 2    50   ~ 0
DB[0..7]
Wire Bus Line
	12650 7800 13050 7800
Text Label 13050 7800 2    50   ~ 0
DB[0..7]
Wire Bus Line
	9000 6400 8500 6400
Text Label 8500 6400 0    50   ~ 0
DB[0..7]
Wire Bus Line
	9000 7150 8500 7150
Wire Wire Line
	11150 5800 10550 5800
Text Label 10550 5800 0    50   ~ 0
ShiftIn
Wire Wire Line
	10200 6300 10000 6300
Text Label 8500 6600 0    50   ~ 0
PC_Cond_Inc
Wire Wire Line
	8500 6600 9000 6600
Text Label 6450 5400 0    50   ~ 0
RegA_Latch
Text Label 6450 5300 0    50   ~ 0
RegA_OE
Text Label 6450 6200 0    50   ~ 0
RegB_Latch
Text Label 6450 6100 0    50   ~ 0
RegB_OE
Wire Wire Line
	6900 5300 6450 5300
Wire Wire Line
	6900 5400 6450 5400
Wire Wire Line
	6900 6100 6450 6100
Wire Wire Line
	6900 6200 6450 6200
Wire Wire Line
	11150 6000 10550 6000
Text Label 10550 6000 0    50   ~ 0
BarrelS_OE
Text Label 8500 6300 0    50   ~ 0
Inst[0..15]
Wire Bus Line
	9000 6300 8500 6300
Text Label 10550 6700 0    50   ~ 0
Inst[0..15]
Wire Bus Line
	11150 6700 10550 6700
Text Label 10550 5600 0    50   ~ 0
Inst[0..15]
Wire Bus Line
	11150 5600 10550 5600
Text Label 8500 7150 0    50   ~ 0
Inst[0..15]
Wire Wire Line
	7950 6400 8300 6400
Text Label 8300 6400 2    50   ~ 0
DB_OUT
Wire Bus Line
	7950 6300 8300 6300
Text Label 8300 6300 2    50   ~ 0
DB[0..7]
Wire Bus Line
	9000 5600 8400 5600
Text Label 8950 5600 2    50   ~ 0
RegB[0..7]
$Sheet
S 6900 10700 1250 150 
U 62043340
F0 "PowerInput" 50
F1 "PowerInput.sch" 50
$EndSheet
Text Label 6650 10200 0    50   ~ 0
RESET
Wire Wire Line
	6900 10200 6650 10200
Text Label 10650 10000 2    50   ~ 0
CLK
Wire Wire Line
	10450 10000 10650 10000
Text Label 10900 9500 2    50   ~ 0
PWR_RESET
Text Label 10900 9400 2    50   ~ 0
~RESET
Text Label 10900 9300 2    50   ~ 0
RESET
Wire Wire Line
	10450 9500 10900 9500
Wire Wire Line
	10450 9400 10900 9400
Wire Wire Line
	10450 9300 10900 9300
Text Label 6400 9400 0    50   ~ 0
Int_Assert
Text Label 10950 10200 2    50   ~ 0
CLK_F[0..2]
Text Label 6650 10100 0    50   ~ 0
CLK
Wire Wire Line
	6650 10100 6900 10100
Text Label 8850 9500 2    50   ~ 0
Set_Btn_Int_Flag
Wire Wire Line
	8850 9500 8150 9500
Wire Wire Line
	6900 9400 6400 9400
Wire Wire Line
	8950 10700 8500 10700
Text Label 8500 10700 0    50   ~ 0
~RESET
$Sheet
S 8950 9900 1500 900 
U 608BF85D
F0 "Clock" 50
F1 "Clock.sch" 50
F2 "CLK" O R 10450 10000 50 
F3 "~RESET" I L 8950 10700 50 
F4 "CLK_F[0..2]" O R 10450 10200 50 
F5 "Inc_Clk_F" I L 8950 10400 50 
F6 "Dec_Clk_F" I L 8950 10300 50 
F7 "PWR_Reset" I L 8950 10600 50 
F8 "Clk_Step_EN" I L 8950 10100 50 
F9 "Clk_Step" I L 8950 10000 50 
$EndSheet
$Sheet
S 8950 9200 1500 400 
U 5FD3CD07
F0 "ResetCtrl" 50
F1 "ResetCtrl.sch" 50
F2 "~RESET" O R 10450 9400 50 
F3 "RESET" O R 10450 9300 50 
F4 "UI_Do_Reset" I L 8950 9300 50 
F5 "Prog_Do_Reset" I L 8950 9400 50 
F6 "PWR_RESET" O R 10450 9500 50 
$EndSheet
Wire Wire Line
	8950 10600 8500 10600
Text Label 8500 10600 0    50   ~ 0
PWR_RESET
Wire Wire Line
	8150 9300 8950 9300
Wire Wire Line
	8150 10000 8950 10000
Wire Bus Line
	10950 10200 10450 10200
Text Label 8250 9400 0    50   ~ 0
Prog_Do_Reset
Wire Wire Line
	8250 9400 8950 9400
Wire Wire Line
	8950 10100 8150 10100
Wire Wire Line
	8150 10300 8950 10300
Wire Wire Line
	8150 10400 8950 10400
Text Notes 6350 8900 0    315  Italic 0
System Control:
$Sheet
S 6900 9200 1250 1300
U 5FD4EE20
F0 "UI" 50
F1 "UI.sch" 50
F2 "RESET" I L 6900 10200 50 
F3 "CLK" I L 6900 10100 50 
F4 "Int_Assert" T L 6900 9400 50 
F5 "Int_Active" I L 6900 9300 50 
F6 "UI_Halted" I L 6900 9600 50 
F7 "UI_Halt_Inst" I L 6900 9700 50 
F8 "UI_Halt_Step" I L 6900 9800 50 
F9 "UI_Halt_Bkpt" I L 6900 9900 50 
F10 "Set_Btn_Int_Flag" O R 8150 9500 50 
F11 "Clk_Step" O R 8150 10000 50 
F12 "Clk_Step_EN" O R 8150 10100 50 
F13 "Inst_Step_EN" O R 8150 9900 50 
F14 "Inst_Step" O R 8150 9800 50 
F15 "Dec_Clk_F" O R 8150 10300 50 
F16 "Inc_Clk_F" O R 8150 10400 50 
F17 "UI_Do_Reset" O R 8150 9300 50 
$EndSheet
Wire Wire Line
	6900 9700 6400 9700
Wire Wire Line
	6900 9600 6400 9600
Wire Wire Line
	6900 9800 6400 9800
Wire Wire Line
	6900 9900 6400 9900
Text Label 6400 9700 0    50   ~ 0
UI_Halt_Inst
Text Label 6400 9600 0    50   ~ 0
UI_Halted
Text Label 6400 9800 0    50   ~ 0
UI_Halt_Step
Text Label 6400 9900 0    50   ~ 0
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
Text Label 6400 9300 0    50   ~ 0
Int_Active
Wire Wire Line
	6900 9300 6400 9300
$Sheet
S 11150 6300 1500 1100
U 5FF66C9F
F0 "LogicOps.sch" 50
F1 "LogicOps.sch" 50
F2 "DB_OUT" T R 12650 6500 50 
F3 "DB[0..7]" T R 12650 6400 50 
F4 "Inst[0..15]" I L 11150 6700 50 
F5 "OP_B_Comp[0..7]" O R 12650 6700 50 
F6 "RegA[0..7]" I L 11150 6400 50 
F7 "OpB[0..7]" I L 11150 6500 50 
F8 "Dual_OE" I L 11150 6900 50 
F9 "Comp_OE" I L 11150 7000 50 
F10 "Not_OE" I L 11150 7100 50 
F11 "CompC" O R 12650 6900 50 
F12 "CompC_Flag" I L 11150 7300 50 
$EndSheet
Text Label 10600 8100 0    50   ~ 0
Inst[0..15]
Text Label 13050 8200 2    50   ~ 0
HC
Text Label 13050 8300 2    50   ~ 0
OVF
Text Label 13050 8100 2    50   ~ 0
C
Wire Wire Line
	12650 8100 13050 8100
Wire Wire Line
	12650 8200 13050 8200
Wire Wire Line
	13050 8300 12650 8300
Text Label 10600 8300 0    50   ~ 0
ALU_OE
Wire Wire Line
	10600 8300 11150 8300
Text Label 10600 8400 0    50   ~ 0
ALU_DoBComp
Wire Wire Line
	10600 8400 11150 8400
Text Label 10600 8600 0    50   ~ 0
C_Flag
Wire Wire Line
	11150 8600 10600 8600
Wire Wire Line
	15000 3100 15850 3100
Wire Wire Line
	15000 3200 15850 3200
Text Label 15850 3100 2    50   ~ 0
Logic_Not_OE
Text Label 15850 3200 2    50   ~ 0
Logic_Dual_OE
Text Label 10550 7100 0    50   ~ 0
Logic_Not_OE
Text Label 10550 6900 0    50   ~ 0
Logic_Dual_OE
Wire Bus Line
	8400 5300 10350 5300
Connection ~ 8400 5300
Wire Bus Line
	8400 5600 8400 6100
Wire Bus Line
	9000 7050 8400 7050
Wire Bus Line
	10000 7050 10450 7050
Connection ~ 10450 7050
Text Label 10550 7000 0    50   ~ 0
Logic_Comp_OE
Wire Bus Line
	10450 5400 10450 6500
Wire Bus Line
	10350 5300 10350 6400
Wire Bus Line
	10450 8000 11150 8000
Wire Bus Line
	10350 7900 11150 7900
Wire Bus Line
	10450 6500 11150 6500
Connection ~ 10450 6500
Wire Bus Line
	10450 6500 10450 7050
Wire Bus Line
	10350 6400 11150 6400
Connection ~ 10350 6400
Wire Bus Line
	10450 5400 11150 5400
Wire Bus Line
	10350 5300 11150 5300
Connection ~ 10350 5300
Wire Wire Line
	10550 6900 11150 6900
Wire Wire Line
	10550 7000 11150 7000
Wire Wire Line
	10550 7100 11150 7100
Wire Bus Line
	12750 6700 12750 7550
Wire Bus Line
	10350 6400 10350 7900
Wire Bus Line
	10450 7050 10450 8000
Wire Bus Line
	11150 8100 10600 8100
Wire Wire Line
	12650 6900 13050 6900
Text Label 13050 6900 2    50   ~ 0
CompC
Wire Wire Line
	4050 6500 3750 6500
Text Label 3750 6500 0    50   ~ 0
CompC
Text Label 5900 5800 2    50   ~ 0
CompC_Flag
Text Label 10550 7300 0    50   ~ 0
CompC_Flag
Wire Wire Line
	10550 7300 11150 7300
Wire Wire Line
	4050 8150 3800 8150
Text Label 3800 8150 0    50   ~ 0
~RESET
$Sheet
S 4050 5200 1350 1800
U 5FD65262
F0 "SysReg_1" 50
F1 "SysReg_1.sch" 50
F2 "PeriphA[0..7]" I L 4050 5300 50 
F3 "Periph_W" I L 4050 5500 50 
F4 "Periph_R" I L 4050 5600 50 
F5 "~RESET" I L 4050 6900 50 
F6 "DB_OUT" T R 5400 5400 50 
F7 "DB[0..7]" T R 5400 5300 50 
F8 "ShiftIn" O R 5400 5600 50 
F9 "C_Out" O R 5400 5700 50 
F10 "CompC_Out" O R 5400 5800 50 
F11 "CLK" I L 4050 6700 50 
F12 "RESET" I L 4050 6800 50 
F13 "C" I L 4050 6200 50 
F14 "HC" I L 4050 6300 50 
F15 "CompC" I L 4050 6500 50 
F16 "OVF" I L 4050 6400 50 
F17 "ALU_DoBComp" I L 4050 5800 50 
F18 "ALU_OE" I L 4050 5900 50 
F19 "Logic_Comp_OE" I L 4050 6000 50 
$EndSheet
Wire Wire Line
	3750 6700 4050 6700
Wire Wire Line
	3750 6800 4050 6800
Wire Wire Line
	3750 6900 4050 6900
Wire Wire Line
	8150 9800 8700 9800
Text Label 8700 9800 2    50   ~ 0
Inst_Step
Text Label 8700 9900 2    50   ~ 0
Inst_Step_EN
Wire Wire Line
	8150 9900 8700 9900
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
Text Label 10200 6300 2    50   ~ 0
Cond
Wire Wire Line
	700  8000 1300 8000
Wire Wire Line
	700  8200 1300 8200
Text Label 700  8000 0    50   ~ 0
RAM_Sync_D_A
Text Label 700  8200 0    50   ~ 0
RAM_R_Sync_A
Text Label 700  8000 0    50   ~ 0
RAM_W
Wire Wire Line
	1300 8100 700  8100
Wire Bus Line
	3350 7300 3350 8550
Wire Bus Line
	600  10650 4050 10650
Wire Bus Line
	1300 9000 600  9000
Wire Bus Line
	1300 7700 600  7700
Text Label 850  5300 0    50   ~ 0
Inst[0..15]
Wire Bus Line
	1300 5300 850  5300
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
	1300 5500 550  5500
Wire Wire Line
	1300 5600 550  5600
Wire Wire Line
	1300 5700 550  5700
Wire Wire Line
	1300 5800 550  5800
Wire Wire Line
	1300 5900 550  5900
Wire Wire Line
	1300 6000 550  6000
Wire Wire Line
	1300 6100 550  6100
Wire Wire Line
	1300 6200 550  6200
Wire Wire Line
	1300 6300 550  6300
Wire Wire Line
	1300 6400 550  6400
Text Label 550  5500 0    50   ~ 0
Stack_W
Text Label 550  5600 0    50   ~ 0
Stack_R
Text Label 550  5700 0    50   ~ 0
Stack_Present_Data
Text Label 550  5800 0    50   ~ 0
Stack_Sync_Data
Text Label 550  5900 0    50   ~ 0
Stack_Sync_Adr
Text Label 550  6000 0    50   ~ 0
Stack_Ptr_Latch
Text Label 550  6100 0    50   ~ 0
Stack_Ofs_1
Text Label 550  6200 0    50   ~ 0
Stack_Ofs_-1
Text Label 550  6300 0    50   ~ 0
Stack_Ofs_0
Text Label 550  6400 0    50   ~ 0
Stack_Ofs_Sgn
Connection ~ 600  7700
Connection ~ 600  9000
Wire Bus Line
	600  9000 600  10650
Wire Bus Line
	600  7700 600  9000
Wire Bus Line
	600  7200 600  7700
$Sheet
S 1300 5200 1500 1700
U 5FD6EE9C
F0 "Stack" 50
F1 "Stack.sch" 50
F2 "CLK" I L 1300 6600 50 
F3 "RESET" I L 1300 6700 50 
F4 "~RESET" I L 1300 6800 50 
F5 "DB[0..7]" T R 2800 5300 50 
F6 "W" I L 1300 5500 50 
F7 "R" I L 1300 5600 50 
F8 "DB_OUT" T R 2800 5400 50 
F9 "Present_Data" I L 1300 5700 50 
F10 "Sync_Data" I L 1300 5800 50 
F11 "Ofs_Sgn" I L 1300 6400 50 
F12 "Inst[0..15]" I L 1300 5300 50 
F13 "Ofs_0" I L 1300 6300 50 
F14 "Ofs_-1" I L 1300 6200 50 
F15 "Ofs_1" I L 1300 6100 50 
F16 "Sync_Adr" I L 1300 5900 50 
F17 "Ptr_Latch" I L 1300 6000 50 
$EndSheet
$EndSCHEMATC
