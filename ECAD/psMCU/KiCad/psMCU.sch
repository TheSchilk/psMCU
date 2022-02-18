EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 1 102
Title "psMCU"
Date "2022-02-13"
Rev "v1.1"
Comp "Philipp Schilk"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 "A fairly full-featured, 8-bit processor built entirely from 74-Series logic."
$EndDescr
Wire Wire Line
	10700 1500 10100 1500
Text Label 10700 1500 2    50   ~ 0
Prog_Do_Reset
Text Notes 10550 1000 0    315  Italic 0
Control:
Text Label 13200 1400 2    50   ~ 0
Inst[0..15]
Wire Bus Line
	7450 1400 6800 1400
Wire Bus Line
	10800 5350 10000 5350
Text Label 15750 3300 2    50   ~ 0
BarrelS_OE
Wire Wire Line
	14900 3300 15750 3300
Text Label 15750 3000 2    50   ~ 0
Logic_Comp_OE
Text Label 15750 2900 2    50   ~ 0
ALU_OE
Text Label 15750 2800 2    50   ~ 0
ALU_DoBComp
Wire Wire Line
	14900 3000 15750 3000
Wire Wire Line
	14900 2900 15750 2900
Wire Wire Line
	14900 2800 15750 2800
Text Label 15450 6200 2    50   ~ 0
Int_Active
Wire Wire Line
	14900 6200 15450 6200
Wire Wire Line
	15750 4500 14900 4500
Wire Wire Line
	15750 4400 14900 4400
Text Label 15750 4500 2    50   ~ 0
RAM_Sync_D_A
Text Label 15750 4400 2    50   ~ 0
RAM_R_Sync_A
Text Label 15750 4200 2    50   ~ 0
RAM_W
Wire Wire Line
	14900 4200 15750 4200
Wire Wire Line
	14900 2700 15750 2700
Wire Wire Line
	14900 2600 15750 2600
Wire Wire Line
	14900 2400 15750 2400
Wire Wire Line
	14900 2300 15750 2300
Wire Wire Line
	14900 2200 15750 2200
Wire Wire Line
	14900 2100 15750 2100
Wire Wire Line
	14900 2000 15750 2000
Wire Wire Line
	14900 1900 15750 1900
Wire Wire Line
	14900 1700 15750 1700
Wire Wire Line
	14900 1600 15750 1600
Wire Wire Line
	14900 1500 15750 1500
Wire Wire Line
	14900 1400 15750 1400
Wire Wire Line
	12650 4950 12000 4950
Wire Wire Line
	12650 5050 12000 5050
Wire Wire Line
	12650 5250 12000 5250
Wire Wire Line
	12650 5150 12000 5150
Text Label 12650 5150 2    50   ~ 0
RegT_LatchH
Text Label 12650 5250 2    50   ~ 0
RegT_LatchL
Text Label 12650 4950 2    50   ~ 0
RegT_OE_DataL
Text Label 12650 5050 2    50   ~ 0
RegT_OE_Adr
Text Label 15750 2700 2    50   ~ 0
RegT_OE_DataL
Text Label 15750 2600 2    50   ~ 0
RegT_OE_Adr
Text Label 15750 2400 2    50   ~ 0
RegT_LatchH
Text Label 15750 2300 2    50   ~ 0
RegT_LatchL
$Sheet
S 10800 4850 1200 600 
U 612C5E2A
F0 "RegT" 50
F1 "RegT.sch" 50
F2 "DB_OUT" T L 10800 4950 50 
F3 "DB[0..7]" T L 10800 5050 50 
F4 "ROMA[0..13]" B L 10800 5350 50 
F5 "ROMA_OUT" B L 10800 5250 50 
F6 "LatchL" I R 12000 5250 50 
F7 "LatchH" I R 12000 5150 50 
F8 "OE_Adr" I R 12000 5050 50 
F9 "OE_DataL" I R 12000 4950 50 
$EndSheet
Text Label 15750 2200 2    50   ~ 0
RegB_OE
Text Label 15750 2100 2    50   ~ 0
RegB_Latch
Text Label 15750 2000 2    50   ~ 0
RegA_OE
Text Label 15750 1900 2    50   ~ 0
RegA_Latch
Text Label 15750 4100 2    50   ~ 0
IntAdr->ROMA
Wire Wire Line
	14900 4100 15750 4100
Text Label 15750 3500 2    50   ~ 0
In[0..13]->ROMA
Wire Wire Line
	14900 3500 15750 3500
Text Label 12650 3850 2    50   ~ 0
In[0..7]->DBus
Wire Wire Line
	12000 3850 12650 3850
Text Label 15750 4000 2    50   ~ 0
In[0..7]->DBus
Wire Wire Line
	14900 4000 15750 4000
Text Label 6900 2000 0    50   ~ 0
Cond
Wire Wire Line
	7450 2000 6900 2000
Wire Wire Line
	6900 1800 7450 1800
Wire Wire Line
	6900 1700 7450 1700
Wire Wire Line
	6900 1600 7450 1600
Text Label 6900 1800 0    50   ~ 0
PC_Latch
Text Label 6900 1700 0    50   ~ 0
PC_Cond_Inc
Text Label 6900 1600 0    50   ~ 0
PC_Inc
Text Label 15750 1700 2    50   ~ 0
PC_Latch
Text Label 15750 1600 2    50   ~ 0
PC_Cond_Inc
Text Label 15750 1500 2    50   ~ 0
PC_Inc
Wire Wire Line
	10350 1600 10800 1600
Text Label 10350 1600 0    50   ~ 0
RegI_Latch
Text Label 15750 1400 2    50   ~ 0
RegI_Latch
Wire Wire Line
	12800 2100 13300 2100
Text Label 12800 2100 0    50   ~ 0
Int_EN
Wire Wire Line
	12800 2000 13300 2000
Text Label 12800 2000 0    50   ~ 0
Int_Assert
Text Notes 13900 5350 0    59   ~ 12
5
Text Notes 13900 4450 0    59   ~ 12
4
Text Notes 13900 3550 0    59   ~ 12
3
Text Notes 13900 2650 0    59   ~ 12
2
Text Notes 13900 1950 0    59   ~ 12
1
Text Notes 13900 1450 0    59   ~ 12
0
Wire Notes Line
	14000 5650 14100 5650
Wire Notes Line
	14000 5250 14000 5650
Wire Notes Line
	14100 5250 14000 5250
Wire Notes Line
	14000 5150 14100 5150
Wire Notes Line
	14000 4350 14000 5150
Wire Notes Line
	14100 4350 14000 4350
Wire Notes Line
	14000 4250 14100 4250
Wire Notes Line
	14000 3450 14000 4250
Wire Notes Line
	14100 3450 14000 3450
Wire Notes Line
	14000 3350 14100 3350
Wire Notes Line
	14000 2550 14000 3350
Wire Notes Line
	14100 2550 14000 2550
Wire Notes Line
	14000 2450 14100 2450
Wire Notes Line
	14000 1850 14000 2450
Wire Notes Line
	14100 1850 14000 1850
Wire Notes Line
	14000 1750 14100 1750
Wire Notes Line
	14000 1350 14000 1750
$Sheet
S 13300 1300 1600 5000
U 60E33DBC
F0 "Control" 50
F1 "Control.sch" 50
F2 "Inst[0..15]" I L 13300 1400 50 
F3 "Bkpt_Trig" I L 13300 1500 50 
F4 "PC_Inc" O R 14900 1500 50 
F5 "PC_Cond_Inc" O R 14900 1600 50 
F6 "PC_Latch" O R 14900 1700 50 
F7 "RegA_Latch" O R 14900 1900 50 
F8 "RegA_OE" O R 14900 2000 50 
F9 "In[0..7]->DBus" O R 14900 4000 50 
F10 "RAM_W" O R 14900 4200 50 
F11 "RAM_R_Sync_A" O R 14900 4400 50 
F12 "RAM_Sync_D_A" O R 14900 4500 50 
F13 "RegI_Latch" O R 14900 1400 50 
F14 "RegB_Latch" O R 14900 2100 50 
F15 "RegB_OE" O R 14900 2200 50 
F16 "RegT_LatchL" O R 14900 2300 50 
F17 "RegT_LatchH" O R 14900 2400 50 
F18 "ALU_DoBComp" O R 14900 2800 50 
F19 "ALU_OE" O R 14900 2900 50 
F20 "Logic_Comp_OE" O R 14900 3000 50 
F21 "Logic_Not_OE" O R 14900 3100 50 
F22 "Logic_Dual_OE" O R 14900 3200 50 
F23 "BarrelS_OE" O R 14900 3300 50 
F24 "Stack_W" O R 14900 4600 50 
F25 "Stack_R" O R 14900 4700 50 
F26 "Stack_Present_Data" O R 14900 4800 50 
F27 "Stack_Sync_Data" O R 14900 4900 50 
F28 "Stack_Sync_Adr" O R 14900 5000 50 
F29 "In[0..13]->ROMA" O R 14900 3500 50 
F32 "Inst_Step" I L 13300 1700 50 
F33 "Inst_Step_EN" I L 13300 1800 50 
F34 "Int_Assert" I L 13300 2000 50 
F35 "Int_EN" I L 13300 2100 50 
F36 "UI_Halted" O R 14900 5800 50 
F37 "UI_Halt_Inst" O R 14900 5900 50 
F38 "UI_Halt_Step" O R 14900 6000 50 
F39 "UI_Halt_Bkpt" O R 14900 6100 50 
F40 "Stack_Ptr_Latch" O R 14900 5100 50 
F41 "Stack_Ofs_1" O R 14900 5300 50 
F42 "Stack_Ofs_-1" O R 14900 5400 50 
F43 "Stack_Ofs_0" O R 14900 5500 50 
F44 "RegT_OE_Adr" O R 14900 2600 50 
F45 "RegT_OE_DataL" O R 14900 2700 50 
F46 "Int_Active" O R 14900 6200 50 
F47 "IntAdr->ROMA" O R 14900 4100 50 
F48 "Stack_Ofs_Sgn" O R 14900 5600 50 
F49 "In[0..8]->RAMA" O R 14900 3800 50 
F50 "In[0..8]+B->RAMA" O R 14900 3900 50 
F51 "IAdr[8..13]->DBus" O R 14900 3700 50 
F52 "IAdr[0..7]->DBus" O R 14900 3600 50 
$EndSheet
Wire Notes Line
	14000 1350 14100 1350
Wire Wire Line
	10100 1900 10200 1900
Wire Wire Line
	10300 1800 10100 1800
Wire Wire Line
	10100 1700 10400 1700
Text Label 10350 5250 0    50   ~ 0
ROMA_OUT
Wire Wire Line
	10800 5250 10350 5250
Text Label 10450 3650 0    50   ~ 0
DB[0..7]
Wire Bus Line
	10800 3650 10450 3650
Text Label 10350 5050 0    50   ~ 0
DB[0..7]
Wire Bus Line
	10800 5050 10350 5050
Text Label 10350 4950 0    50   ~ 0
DB_OUT
Wire Wire Line
	10800 4950 10350 4950
Text Label 10350 5900 0    50   ~ 0
ROMA_OUT
Wire Wire Line
	10800 5900 10350 5900
Text Label 10450 3750 0    50   ~ 0
DB_OUT
Wire Wire Line
	10800 3750 10450 3750
$Sheet
S 7450 1300 1050 800 
U 5F607AA2
F0 "PC" 50
F1 "PC.sch" 50
F2 "PC[0..13]" O R 8500 1400 50 
F3 "ROMA[0..13]" B L 7450 1400 50 
F4 "Inc" I L 7450 1600 50 
F5 "Latch" I L 7450 1800 50 
F6 "Cond_Inc" I L 7450 1700 50 
F7 "Cond" I L 7450 2000 50 
$EndSheet
$Sheet
S 8800 1300 1300 700 
U 5F28170E
F0 "ROM" 50
F1 "ROM.sch" 50
F2 "PC[0..13]" I L 8800 1400 50 
F3 "NextInst[0..15]" O R 10100 1400 50 
F4 "BKPT_RCLK" O R 10100 1700 50 
F5 "BKPT_SER" O R 10100 1800 50 
F6 "BKPT_SCLK" O R 10100 1900 50 
F7 "Prog_Do_Reset" O R 10100 1500 50 
$EndSheet
$Sheet
S 10800 5700 1200 300 
U 6041A022
F0 "ROMA Bus Display" 50
F1 "ROMA_DISPLAY.sch" 50
F2 "ROMA_OUT" T L 10800 5900 50 
F3 "ROMA[0..13]" B L 10800 5800 50 
$EndSheet
Wire Bus Line
	3700 5650 3150 5650
Text Label 3700 5650 2    50   ~ 0
RegB[0..7]
Text Notes 850  1100 0    315  Italic 0
Memory & Peripherals:
Text Notes 3150 2450 0    50   ~ 0
\n
$Sheet
S 1650 3300 1500 700 
U 5ED3C49A
F0 "RAM" 50
F1 "RAM.sch" 50
F2 "DB[0..7]" T R 3150 3400 50 
F3 "RAMA[0..8]" B L 1650 3400 50 
F4 "DB_OUT" T R 3150 3500 50 
F5 "PAGE[0..6]" I L 1650 3500 50 
F6 "Sync_D_A" I L 1650 3700 50 
F7 "W" I L 1650 3800 50 
F8 "R_Sync_A" I L 1650 3900 50 
$EndSheet
$Sheet
S 1650 5450 1500 600 
U 5F6FD493
F0 "In[0..7]/RegB->RAMA[0..7]" 50
F1 "In0..7_RegB_to_RAMA.sch" 50
F2 "Inst[0..15]" I R 3150 5550 50 
F3 "RegB[0..7]" I R 3150 5650 50 
F4 "RAMA[0..8]" B L 1650 5850 50 
F5 "RAMA_OUT" T L 1650 5950 50 
F6 "In[0..8]+B->RAMA" I R 3150 5850 50 
F7 "In[0..8]->RAMA" I R 3150 5950 50 
$EndSheet
Wire Bus Line
	1650 3500 1200 3500
Text Label 1200 3500 0    50   ~ 0
PAGE[0..6]
Wire Wire Line
	3150 1500 3500 1500
Text Label 3500 1500 2    50   ~ 0
DB_OUT
Wire Bus Line
	3150 1400 3500 1400
Text Label 3500 1400 2    50   ~ 0
DB[0..7]
Wire Wire Line
	3150 3500 3500 3500
Text Label 3500 3500 2    50   ~ 0
DB_OUT
Wire Bus Line
	3150 3400 3500 3400
Text Label 3500 3400 2    50   ~ 0
DB[0..7]
$Sheet
S 1650 2800 1500 300 
U 604F08FB
F0 "RAMA Bus Display" 50
F1 "RAMA_DISPLAY.sch" 50
F2 "RAMA[0..8]" T L 1650 2900 50 
F3 "RAMA_OUT" T L 1650 3000 50 
$EndSheet
Text Label 1250 3000 0    50   ~ 0
RAMA_OUT
Wire Wire Line
	1250 3000 1650 3000
Text Label 3650 4500 2    50   ~ 0
DB[0..7]
Wire Bus Line
	3150 4500 3650 4500
Text Label 3650 4600 2    50   ~ 0
DB_OUT
Wire Wire Line
	3150 4600 3650 4600
Wire Wire Line
	1650 5000 1200 5000
Text Label 6150 3100 2    50   ~ 0
DB[0..7]
Wire Bus Line
	5700 3100 6150 3100
Text Label 6100 1400 2    50   ~ 0
DB[0..7]
Wire Bus Line
	5750 1400 6100 1400
Wire Bus Line
	4400 3100 3700 3100
Wire Bus Line
	4400 1400 3700 1400
Text Label 6150 3300 2    50   ~ 0
PAGE[0..6]
Wire Bus Line
	5700 3300 6150 3300
Text Label 6150 3200 2    50   ~ 0
DB_OUT
Wire Wire Line
	5700 3200 6150 3200
Text Label 6100 1500 2    50   ~ 0
DB_OUT
Wire Wire Line
	5750 1500 6100 1500
$Sheet
S 4400 3000 1300 500 
U 5FD65291
F0 "SysReg_2" 50
F1 "SysReg_2.sch" 50
F2 "DB_OUT" T R 5700 3200 50 
F3 "DB[0..7]" T R 5700 3100 50 
F4 "Periph_W" I L 4400 3300 50 
F5 "Periph_R" I L 4400 3400 50 
F6 "PeriphA[0..7]" I L 4400 3100 50 
F7 "PAGE[0..6]" O R 5700 3300 50 
$EndSheet
Text Notes 3550 1300 0    50   ~ 0
\n\n
Text Label 1250 5950 0    50   ~ 0
RAMA_OUT
Wire Wire Line
	1250 5950 1650 5950
Wire Wire Line
	5750 1700 6250 1700
Text Label 6250 1700 2    50   ~ 0
ShiftIn
Text Label 1200 5000 0    50   ~ 0
Int_Assert
$Sheet
S 1650 4200 1500 1000
U 5FD1E173
F0 "PeriphealInterface" 50
F1 "PeripheralInterface.sch" 50
F2 "DB[0..7]" T R 3150 4500 50 
F3 "DB_OUT" T R 3150 4600 50 
F4 "RAMA[0..8]" B L 1650 4300 50 
F5 "RAM_Sync_D_A" I L 1650 4700 50 
F6 "RAM_W" I L 1650 4500 50 
F7 "RAM_R_Sync_A" I L 1650 4600 50 
F8 "Periph_W" O R 3150 4900 50 
F9 "PeriphA[0..7]" O R 3150 4300 50 
F10 "Int_Active" I L 1650 5100 50 
F11 "Int_Assert" B L 1650 5000 50 
F12 "Int_EN" I L 1650 4900 50 
F13 "Periph_R_Sync_A" O R 3150 5000 50 
F14 "DB_OUT_EXT" T R 3150 4700 50 
$EndSheet
Wire Wire Line
	1650 5100 1200 5100
Text Label 1200 5100 0    50   ~ 0
Int_Active
Text Label 1200 4900 0    50   ~ 0
Int_EN
Wire Wire Line
	1200 4900 1650 4900
Text Label 3650 4900 2    50   ~ 0
Periph_W
Text Label 3650 5000 2    50   ~ 0
Periph_R
Wire Wire Line
	3650 4900 3150 4900
Wire Wire Line
	3150 5000 3650 5000
Text Label 3900 1600 0    50   ~ 0
Periph_W
Text Label 3900 1700 0    50   ~ 0
Periph_R
Wire Wire Line
	3900 1600 4400 1600
Wire Wire Line
	4400 1700 3900 1700
Wire Wire Line
	4400 1900 3750 1900
Wire Wire Line
	4400 2000 3750 2000
Wire Wire Line
	4400 2100 3750 2100
Text Label 3750 1900 0    50   ~ 0
ALU_DoBComp
Text Label 3750 2000 0    50   ~ 0
ALU_OE
Text Label 3750 2100 0    50   ~ 0
Logic_Comp_OE
Wire Wire Line
	4400 2300 4100 2300
Wire Wire Line
	4400 2400 4100 2400
Wire Wire Line
	4400 2500 4100 2500
Text Label 6250 1800 2    50   ~ 0
C_Flag
Wire Wire Line
	5750 1800 6250 1800
Wire Wire Line
	5750 1900 6250 1900
Text Label 4100 2400 0    50   ~ 0
HC
Text Label 4100 2500 0    50   ~ 0
OVF
Text Label 4100 2300 0    50   ~ 0
C
Wire Wire Line
	1650 4500 1050 4500
Text Label 1050 4500 0    50   ~ 0
RAM_W
Text Label 1050 4600 0    50   ~ 0
RAM_R_Sync_A
Text Label 1050 4700 0    50   ~ 0
RAM_Sync_D_A
Wire Wire Line
	1050 4600 1650 4600
Wire Wire Line
	1050 4700 1650 4700
Text Label 3900 2700 0    50   ~ 0
CLK_F[0..2]
Wire Bus Line
	3900 2700 4400 2700
Text Label 3900 3300 0    50   ~ 0
Periph_W
Text Label 3900 3400 0    50   ~ 0
Periph_R
Wire Wire Line
	3900 3300 4400 3300
Wire Wire Line
	4400 3400 3900 3400
Wire Wire Line
	4400 4100 3900 4100
Wire Wire Line
	3900 4000 4400 4000
Text Label 3900 4100 0    50   ~ 0
Periph_R
Text Label 3900 4000 0    50   ~ 0
Periph_W
Wire Wire Line
	4400 4700 4150 4700
Wire Wire Line
	4400 4600 4150 4600
Wire Wire Line
	4400 4500 4150 4500
Wire Wire Line
	4400 4400 4150 4400
Text Label 4150 4700 0    50   ~ 0
B=0
Text Label 4150 4600 0    50   ~ 0
A=0
Text Label 4150 4500 0    50   ~ 0
A=B
Text Label 4150 4400 0    50   ~ 0
A<B
Text Label 4150 4300 0    50   ~ 0
A>B
Wire Wire Line
	4400 4300 4150 4300
$Sheet
S 4400 3700 1350 1300
U 5FD65308
F0 "SysReg_3" 50
F1 "SysReg_3.sch" 50
F2 "A>B" I L 4400 4300 50 
F3 "A<B" I L 4400 4400 50 
F4 "A=B" I L 4400 4500 50 
F5 "A=0" I L 4400 4600 50 
F6 "B=0" I L 4400 4700 50 
F7 "DB[0..7]" T R 5750 3800 50 
F8 "DB_OUT" T R 5750 3900 50 
F9 "PeriphA[0..7]" I L 4400 3800 50 
F10 "Periph_W" I L 4400 4000 50 
F11 "Periph_R" I L 4400 4100 50 
F12 "Int_EN" O R 5750 4000 50 
F13 "Set_Btn_Int_Flag" I L 4400 4900 50 
$EndSheet
Wire Wire Line
	5750 4000 6100 4000
Text Label 6100 4000 2    50   ~ 0
Int_EN
Wire Wire Line
	5750 3900 6100 3900
Text Label 6100 3900 2    50   ~ 0
DB_OUT
Wire Bus Line
	3700 3800 4400 3800
Wire Bus Line
	5750 3800 6100 3800
Text Label 6100 3800 2    50   ~ 0
DB[0..7]
Text Label 3750 4900 0    50   ~ 0
Set_Btn_Int_Flag
Wire Wire Line
	3750 4900 4400 4900
Wire Bus Line
	3150 5550 3700 5550
Text Label 3700 5550 2    50   ~ 0
Inst[0..15]
Wire Bus Line
	950  2900 1650 2900
Text Notes 6450 5050 0    79   ~ 0
 - 8bit Processor\n - 1MHz Clock\n - 32kB Heap RAM, \n - 32kB Stack RAM\n - 16kB Program ROM\n
Text Notes 7950 4400 0    118  ~ 0
Features:\n
Text Notes 7900 5700 0    79   ~ 0
 - 300+ LEDs\n - Interrupts\n - Instruction Stepping\n - Clock Stepping\n - 1Hz-1MHz Clock\n - External remote control\n - External USB programmer\n - Hardware Call/Return\n - Peripheral Ports\n - Hardware breakpoint
Text Notes 6450 4400 0    118  ~ 0
Specs:
Text Notes 8150 3700 0    118  Italic 0
'Why not?'
Text Notes 8200 4100 0    118  ~ 0
Philipp Schilk\n2020-2022
Text Notes 6450 4000 0    315  Italic 63
psMCU
Wire Bus Line
	2500 7850 2950 7850
Wire Bus Line
	2950 7150 2500 7150
Text Notes 900  6850 0    315  Italic 0
Data Manipulation:
Wire Bus Line
	3550 7450 2950 7450
$Sheet
S 5700 7050 1500 900 
U 5F43204F
F0 "BarrelShifter" 50
F1 "BarrelShifter.sch" 50
F2 "Shift_In" I L 5700 7650 50 
F3 "DB[0..7]" T R 7200 7150 50 
F4 "DB_OUT" T R 7200 7250 50 
F5 "OE" I L 5700 7850 50 
F6 "RegA[0..7]" I L 5700 7150 50 
F7 "OpB[0..7]" I L 5700 7250 50 
F8 "Inst[0..15]" I L 5700 7450 50 
$EndSheet
$Sheet
S 3550 9400 1000 400 
U 5F394B96
F0 "Data Bus Display" 50
F1 "DBUS_DISPLAY.sch" 50
F2 "DB_OUT" T L 3550 9600 50 
F3 "DB[0..7]" T L 3550 9500 50 
F4 "DB_OUT_EXT" T L 3550 9700 50 
$EndSheet
$Sheet
S 3550 8900 1000 300 
U 5F629530
F0 "Operand B Select" 50
F1 "OperandB_select.sch" 50
F2 "Inst[0..15]" I L 3550 9100 50 
F3 "RegB[0..7]" I L 3550 9000 50 
F4 "OpB[0..7]" O R 4550 9000 50 
$EndSheet
$Sheet
S 3550 8150 1000 550 
U 5FD6B1FB
F0 "BitTest" 50
F1 "BitTest.sch" 50
F2 "DB[0..7]" T L 3550 8350 50 
F3 "Inst[0..15]" I L 3550 8250 50 
F4 "Cond" O R 4550 8250 50 
F5 "Cond_Inc" I L 3550 8550 50 
$EndSheet
$Sheet
S 5700 9550 1500 1000
U 5FD6F26B
F0 "ALU" 50
F1 "ALU.sch" 50
F2 "OpB[0..7]" I L 5700 9850 50 
F3 "DB_OUT" T R 7200 9750 50 
F4 "DB[0..7]" T R 7200 9650 50 
F5 "OE" I L 5700 10150 50 
F6 "OP_B_Comp[0..7]" I L 5700 9650 50 
F7 "RegA[0..7]" I L 5700 9750 50 
F8 "HC" O R 7200 10050 50 
F9 "C" O R 7200 9950 50 
F10 "Inst[0..15]" I L 5700 9950 50 
F11 "C_Flag" I L 5700 10450 50 
F12 "OVF" O R 7200 10150 50 
F13 "DoBComp" I L 5700 10250 50 
$EndSheet
$Sheet
S 3550 7350 1000 600 
U 5FD6B215
F0 "Comparator.sch" 50
F1 "Comparator.sch" 50
F2 "A>B" O R 4550 7450 50 
F3 "A<B" O R 4550 7550 50 
F4 "A=B" O R 4550 7650 50 
F5 "A=0" O R 4550 7750 50 
F6 "B=0" O R 4550 7850 50 
F7 "REG_A[0..7]" I L 3550 7450 50 
F8 "REG_B[0..7]" I L 3550 7550 50 
$EndSheet
Wire Wire Line
	4550 7450 4800 7450
Text Label 4800 7450 2    50   ~ 0
A>B
Text Label 4800 7550 2    50   ~ 0
A<B
Text Label 4800 7650 2    50   ~ 0
A=B
Text Label 4800 7750 2    50   ~ 0
A=0
Text Label 4800 7850 2    50   ~ 0
B=0
Wire Wire Line
	4550 7550 4800 7550
Wire Wire Line
	4550 7650 4800 7650
Wire Wire Line
	4550 7750 4800 7750
Wire Wire Line
	4550 7850 4800 7850
Wire Wire Line
	7200 9750 7600 9750
Text Label 7600 9750 2    50   ~ 0
DB_OUT
Wire Wire Line
	7200 7250 7600 7250
Text Label 7600 7250 2    50   ~ 0
DB_OUT
Wire Wire Line
	7200 8350 7600 8350
Text Label 7600 8350 2    50   ~ 0
DB_OUT
$Sheet
S 1450 7050 1050 500 
U 61C3CF7F
F0 "RegA" 50
F1 "Reg.sch" 50
F2 "DB[0..7]" T R 2500 7350 50 
F3 "VAL[0..7]" O R 2500 7150 50 
F4 "DB_OUT" T R 2500 7450 50 
F5 "OE" I L 1450 7150 50 
F6 "Latch" I L 1450 7250 50 
$EndSheet
$Sheet
S 1450 7750 1050 500 
U 61C3CF88
F0 "RegB" 50
F1 "Reg.sch" 50
F2 "OE" I L 1450 7850 50 
F3 "DB[0..7]" T R 2500 8050 50 
F4 "VAL[0..7]" O R 2500 7850 50 
F5 "DB_OUT" T R 2500 8150 50 
F6 "Latch" I L 1450 7950 50 
$EndSheet
Wire Wire Line
	2500 7450 2850 7450
Text Label 2850 7450 2    50   ~ 0
DB_OUT
Wire Bus Line
	5700 9650 5600 9650
Wire Bus Line
	5600 9650 5600 9400
Wire Bus Line
	5600 9400 7300 9400
Wire Bus Line
	7200 8550 7300 8550
Wire Wire Line
	3550 9600 3050 9600
Text Label 3050 9600 0    50   ~ 0
DB_OUT
Text Label 3500 7450 2    50   ~ 0
RegA[0..7]
Wire Bus Line
	3550 9500 3050 9500
Text Label 3050 9500 0    50   ~ 0
DB[0..7]
Wire Bus Line
	2500 7350 2850 7350
Text Label 2850 7350 2    50   ~ 0
DB[0..7]
Wire Bus Line
	7200 7150 7600 7150
Text Label 7600 7150 2    50   ~ 0
DB[0..7]
Wire Bus Line
	7200 8250 7600 8250
Text Label 7600 8250 2    50   ~ 0
DB[0..7]
Wire Bus Line
	7200 9650 7600 9650
Text Label 7600 9650 2    50   ~ 0
DB[0..7]
Wire Bus Line
	3550 8350 3050 8350
Text Label 3050 8350 0    50   ~ 0
DB[0..7]
Wire Bus Line
	3550 9100 3050 9100
Wire Wire Line
	5700 7650 5100 7650
Text Label 5100 7650 0    50   ~ 0
ShiftIn
Wire Wire Line
	4750 8250 4550 8250
Text Label 3050 8550 0    50   ~ 0
PC_Cond_Inc
Wire Wire Line
	3050 8550 3550 8550
Text Label 1000 7250 0    50   ~ 0
RegA_Latch
Text Label 1000 7150 0    50   ~ 0
RegA_OE
Text Label 1000 7950 0    50   ~ 0
RegB_Latch
Text Label 1000 7850 0    50   ~ 0
RegB_OE
Wire Wire Line
	1450 7150 1000 7150
Wire Wire Line
	1450 7250 1000 7250
Wire Wire Line
	1450 7850 1000 7850
Wire Wire Line
	1450 7950 1000 7950
Wire Wire Line
	5700 7850 5100 7850
Text Label 5100 7850 0    50   ~ 0
BarrelS_OE
Text Label 3050 8250 0    50   ~ 0
Inst[0..15]
Wire Bus Line
	3550 8250 3050 8250
Text Label 5100 8550 0    50   ~ 0
Inst[0..15]
Wire Bus Line
	5700 8550 5100 8550
Text Label 5100 7450 0    50   ~ 0
Inst[0..15]
Wire Bus Line
	5700 7450 5100 7450
Text Label 3050 9100 0    50   ~ 0
Inst[0..15]
Wire Wire Line
	2500 8150 2850 8150
Text Label 2850 8150 2    50   ~ 0
DB_OUT
Wire Bus Line
	2500 8050 2850 8050
Text Label 2850 8050 2    50   ~ 0
DB[0..7]
Wire Bus Line
	3550 7550 2950 7550
Text Label 3500 7550 2    50   ~ 0
RegB[0..7]
$Sheet
S 9650 8750 1250 150 
U 62043340
F0 "PowerInput" 50
F1 "PowerInput.sch" 50
$EndSheet
Text Label 9150 7450 0    50   ~ 0
Int_Assert
Text Label 13150 8250 2    50   ~ 0
CLK_F[0..2]
Text Label 11550 7550 2    50   ~ 0
Set_Btn_Int_Flag
Wire Wire Line
	11550 7550 10900 7550
Wire Wire Line
	9650 7450 9150 7450
$Sheet
S 11600 7950 1050 600 
U 608BF85D
F0 "Clock" 50
F1 "Clock.sch" 50
F2 "CLK" O R 12650 8050 50 
F3 "CLK_F[0..2]" O R 12650 8250 50 
F4 "Inc_Clk_F" I L 11600 8450 50 
F5 "Dec_Clk_F" I L 11600 8350 50 
F6 "Clk_Step_EN" I L 11600 8150 50 
F7 "Clk_Step" I L 11600 8050 50 
$EndSheet
$Sheet
S 11600 7250 1100 400 
U 5FD3CD07
F0 "ResetCtrl" 50
F1 "ResetCtrl.sch" 50
F2 "~RESET" O R 12700 7450 50 
F3 "RESET" O R 12700 7350 50 
F4 "UI_Do_Reset" I L 11600 7350 50 
F5 "Prog_Do_Reset" I L 11600 7450 50 
F6 "PWR_RESET" O R 12700 7550 50 
$EndSheet
Wire Bus Line
	13150 8250 12650 8250
Text Label 11000 7450 0    50   ~ 0
Prog_Do_Reset
Wire Wire Line
	11000 7450 11600 7450
Text Notes 9150 6950 0    315  Italic 0
System Support:
$Sheet
S 9650 7250 1250 1300
U 5FD4EE20
F0 "UI" 50
F1 "UI.sch" 50
F2 "Int_Assert" T L 9650 7450 50 
F3 "Int_Active" I L 9650 7350 50 
F4 "UI_Halted" I L 9650 7650 50 
F5 "UI_Halt_Inst" I L 9650 7750 50 
F6 "UI_Halt_Step" I L 9650 7850 50 
F7 "UI_Halt_Bkpt" I L 9650 7950 50 
F8 "Set_Btn_Int_Flag" O R 10900 7550 50 
F9 "Clk_Step" O R 10900 8050 50 
F10 "Clk_Step_EN" O R 10900 8150 50 
F11 "Inst_Step_EN" O R 10900 7950 50 
F12 "Inst_Step" O R 10900 7850 50 
F13 "Dec_Clk_F" O R 10900 8350 50 
F14 "Inc_Clk_F" O R 10900 8450 50 
F15 "UI_Do_Reset" O R 10900 7350 50 
$EndSheet
Wire Wire Line
	9650 7750 9150 7750
Wire Wire Line
	9650 7650 9150 7650
Wire Wire Line
	9650 7850 9150 7850
Wire Wire Line
	9650 7950 9150 7950
Text Label 9150 7750 0    50   ~ 0
UI_Halt_Inst
Text Label 9150 7650 0    50   ~ 0
UI_Halted
Text Label 9150 7850 0    50   ~ 0
UI_Halt_Step
Text Label 9150 7950 0    50   ~ 0
UI_Halt_Bkpt
Text Label 15450 5900 2    50   ~ 0
UI_Halt_Inst
Text Label 15450 5800 2    50   ~ 0
UI_Halted
Text Label 15450 6000 2    50   ~ 0
UI_Halt_Step
Text Label 15450 6100 2    50   ~ 0
UI_Halt_Bkpt
Wire Wire Line
	14900 5800 15450 5800
Wire Wire Line
	14900 5900 15450 5900
Wire Wire Line
	14900 6000 15450 6000
Wire Wire Line
	14900 6100 15450 6100
Text Label 9150 7350 0    50   ~ 0
Int_Active
Wire Wire Line
	9650 7350 9150 7350
$Sheet
S 5700 8150 1500 1100
U 5FF66C9F
F0 "LogicOps.sch" 50
F1 "LogicOps.sch" 50
F2 "DB_OUT" T R 7200 8350 50 
F3 "DB[0..7]" T R 7200 8250 50 
F4 "Inst[0..15]" I L 5700 8550 50 
F5 "OP_B_Comp[0..7]" O R 7200 8550 50 
F6 "RegA[0..7]" I L 5700 8250 50 
F7 "OpB[0..7]" I L 5700 8350 50 
F8 "Dual_OE" I L 5700 8750 50 
F9 "Comp_OE" I L 5700 8850 50 
F10 "Not_OE" I L 5700 8950 50 
F11 "CompC" O R 7200 8750 50 
F12 "CompC_Flag" I L 5700 9150 50 
$EndSheet
Text Label 5150 9950 0    50   ~ 0
Inst[0..15]
Text Label 7600 10050 2    50   ~ 0
HC
Text Label 7600 10150 2    50   ~ 0
OVF
Text Label 7600 9950 2    50   ~ 0
C
Wire Wire Line
	7200 9950 7600 9950
Wire Wire Line
	7200 10050 7600 10050
Wire Wire Line
	7600 10150 7200 10150
Text Label 5150 10150 0    50   ~ 0
ALU_OE
Wire Wire Line
	5150 10150 5700 10150
Text Label 5150 10250 0    50   ~ 0
ALU_DoBComp
Wire Wire Line
	5150 10250 5700 10250
Text Label 5150 10450 0    50   ~ 0
C_Flag
Wire Wire Line
	5700 10450 5150 10450
Wire Wire Line
	14900 3100 15750 3100
Wire Wire Line
	14900 3200 15750 3200
Text Label 15750 3100 2    50   ~ 0
Logic_Not_OE
Text Label 15750 3200 2    50   ~ 0
Logic_Dual_OE
Text Label 5100 8950 0    50   ~ 0
Logic_Not_OE
Text Label 5100 8750 0    50   ~ 0
Logic_Dual_OE
Wire Bus Line
	2950 7150 4900 7150
Connection ~ 2950 7150
Wire Bus Line
	3550 9000 2950 9000
Wire Bus Line
	4550 9000 5000 9000
Text Label 5100 8850 0    50   ~ 0
Logic_Comp_OE
Wire Bus Line
	5000 7250 5000 8350
Wire Bus Line
	4900 7150 4900 8250
Wire Bus Line
	5000 9850 5700 9850
Wire Bus Line
	4900 9750 5700 9750
Wire Bus Line
	5000 8350 5700 8350
Connection ~ 5000 8350
Wire Bus Line
	4900 8250 5700 8250
Connection ~ 4900 8250
Wire Bus Line
	5000 7250 5700 7250
Wire Bus Line
	4900 7150 5700 7150
Connection ~ 4900 7150
Wire Wire Line
	5100 8750 5700 8750
Wire Wire Line
	5100 8850 5700 8850
Wire Wire Line
	5100 8950 5700 8950
Wire Bus Line
	7300 8550 7300 9400
Wire Bus Line
	4900 8250 4900 9750
Wire Bus Line
	5700 9950 5150 9950
Wire Wire Line
	7200 8750 7600 8750
Text Label 7600 8750 2    50   ~ 0
CompC
Wire Wire Line
	4400 2600 4100 2600
Text Label 4100 2600 0    50   ~ 0
CompC
Text Label 6250 1900 2    50   ~ 0
CompC_Flag
Text Label 5100 9150 0    50   ~ 0
CompC_Flag
Wire Wire Line
	5100 9150 5700 9150
Wire Wire Line
	10900 7850 11450 7850
Text Label 11450 7850 2    50   ~ 0
Inst_Step
Text Label 11450 7950 2    50   ~ 0
Inst_Step_EN
Wire Wire Line
	10900 7950 11450 7950
Wire Wire Line
	13300 1700 12800 1700
Text Label 12800 1700 0    50   ~ 0
Inst_Step
Text Label 12800 1800 0    50   ~ 0
Inst_Step_EN
Wire Wire Line
	13300 1800 12800 1800
Text Label 4750 8250 2    50   ~ 0
Cond
Wire Wire Line
	1050 3700 1650 3700
Wire Wire Line
	1050 3900 1650 3900
Text Label 1050 3700 0    50   ~ 0
RAM_Sync_D_A
Text Label 1050 3900 0    50   ~ 0
RAM_R_Sync_A
Text Label 1050 3800 0    50   ~ 0
RAM_W
Wire Wire Line
	1650 3800 1050 3800
Wire Bus Line
	1650 4300 950  4300
Wire Bus Line
	1650 3400 950  3400
Text Label 1200 1400 0    50   ~ 0
Inst[0..15]
Wire Bus Line
	1650 1400 1200 1400
Wire Wire Line
	14900 4600 15750 4600
Wire Wire Line
	14900 4700 15750 4700
Wire Wire Line
	14900 4800 15750 4800
Wire Wire Line
	14900 4900 15750 4900
Wire Wire Line
	14900 5000 15750 5000
Wire Wire Line
	14900 5100 15750 5100
Wire Wire Line
	14900 5300 15750 5300
Wire Wire Line
	14900 5400 15750 5400
Wire Wire Line
	14900 5500 15750 5500
Wire Wire Line
	14900 5600 15750 5600
Text Label 15750 4600 2    50   ~ 0
Stack_W
Text Label 15750 4700 2    50   ~ 0
Stack_R
Text Label 15750 4800 2    50   ~ 0
Stack_Present_Data
Text Label 15750 4900 2    50   ~ 0
Stack_Sync_Data
Text Label 15750 5000 2    50   ~ 0
Stack_Sync_Adr
Text Label 15750 5100 2    50   ~ 0
Stack_Ptr_Latch
Text Label 15750 5300 2    50   ~ 0
Stack_Ofs_1
Text Label 15750 5400 2    50   ~ 0
Stack_Ofs_-1
Text Label 15750 5500 2    50   ~ 0
Stack_Ofs_0
Text Label 15750 5600 2    50   ~ 0
Stack_Ofs_Sgn
Wire Wire Line
	1650 1600 900  1600
Wire Wire Line
	1650 1700 900  1700
Wire Wire Line
	1650 1800 900  1800
Wire Wire Line
	1650 1900 900  1900
Wire Wire Line
	1650 2000 900  2000
Wire Wire Line
	1650 2100 900  2100
Wire Wire Line
	1650 2200 900  2200
Wire Wire Line
	1650 2300 900  2300
Wire Wire Line
	1650 2400 900  2400
Wire Wire Line
	1650 2500 900  2500
Text Label 900  1600 0    50   ~ 0
Stack_W
Text Label 900  1700 0    50   ~ 0
Stack_R
Text Label 900  1800 0    50   ~ 0
Stack_Present_Data
Text Label 900  1900 0    50   ~ 0
Stack_Sync_Data
Text Label 900  2000 0    50   ~ 0
Stack_Sync_Adr
Text Label 900  2100 0    50   ~ 0
Stack_Ptr_Latch
Text Label 900  2200 0    50   ~ 0
Stack_Ofs_1
Text Label 900  2300 0    50   ~ 0
Stack_Ofs_-1
Text Label 900  2400 0    50   ~ 0
Stack_Ofs_0
Text Label 900  2500 0    50   ~ 0
Stack_Ofs_Sgn
Connection ~ 950  3400
Wire Bus Line
	950  3400 950  4300
Wire Bus Line
	950  2900 950  3400
$Sheet
S 1650 1300 1500 1300
U 5FD6EE9C
F0 "Stack" 50
F1 "Stack.sch" 50
F2 "DB[0..7]" T R 3150 1400 50 
F3 "W" I L 1650 1600 50 
F4 "R" I L 1650 1700 50 
F5 "DB_OUT" T R 3150 1500 50 
F6 "Present_Data" I L 1650 1800 50 
F7 "Sync_Data" I L 1650 1900 50 
F8 "Ofs_Sgn" I L 1650 2500 50 
F9 "Inst[0..15]" I L 1650 1400 50 
F10 "Ofs_0" I L 1650 2400 50 
F11 "Ofs_-1" I L 1650 2300 50 
F12 "Ofs_1" I L 1650 2200 50 
F13 "Sync_Adr" I L 1650 2000 50 
F14 "Ptr_Latch" I L 1650 2100 50 
$EndSheet
Wire Wire Line
	12000 3000 12350 3000
Text Label 12350 3000 2    50   ~ 0
DB_OUT
Text Label 12350 2900 2    50   ~ 0
DB[0..7]
Wire Bus Line
	10650 2900 10800 2900
Wire Bus Line
	3150 4300 3700 4300
Wire Bus Line
	2950 7550 2950 7850
Connection ~ 5000 9000
Wire Bus Line
	5000 9000 5000 9850
Wire Bus Line
	5000 8350 5000 9000
Wire Bus Line
	2950 7150 2950 7450
Text Label 3900 5850 2    50   ~ 0
In[0..8]+B->RAMA
Text Label 3900 5950 2    50   ~ 0
In[0..8]->RAMA
Wire Wire Line
	3150 5850 3900 5850
Wire Wire Line
	3150 5950 3900 5950
Wire Bus Line
	12000 2900 12350 2900
Wire Bus Line
	12000 4250 12750 4250
Wire Wire Line
	10800 4350 10400 4350
Text Label 10400 4350 0    50   ~ 0
ROMA_OUT
Wire Wire Line
	12000 4450 12700 4450
Text Label 12700 4450 2    50   ~ 0
In[0..13]->ROMA
Wire Wire Line
	12000 4550 12700 4550
Text Label 12700 4550 2    50   ~ 0
IntAdr->ROMA
$Sheet
S 4400 1300 1350 1500
U 5FD65262
F0 "SysReg_1" 50
F1 "SysReg_1.sch" 50
F2 "PeriphA[0..7]" I L 4400 1400 50 
F3 "Periph_W" I L 4400 1600 50 
F4 "Periph_R" I L 4400 1700 50 
F5 "DB_OUT" T R 5750 1500 50 
F6 "DB[0..7]" T R 5750 1400 50 
F7 "ShiftIn" O R 5750 1700 50 
F8 "C_Out" O R 5750 1800 50 
F9 "CompC_Out" O R 5750 1900 50 
F10 "C" I L 4400 2300 50 
F11 "HC" I L 4400 2400 50 
F12 "CompC" I L 4400 2600 50 
F13 "OVF" I L 4400 2500 50 
F14 "ALU_DoBComp" I L 4400 1900 50 
F15 "ALU_OE" I L 4400 2000 50 
F16 "Logic_Comp_OE" I L 4400 2100 50 
F17 "CLK_F[0..2]" I L 4400 2700 50 
$EndSheet
Text Label 15750 3900 2    50   ~ 0
In[0..8]+B->RAMA
Text Label 15750 3800 2    50   ~ 0
In[0..8]->RAMA
Wire Wire Line
	14900 3800 15750 3800
Wire Wire Line
	14900 3900 15750 3900
Wire Wire Line
	3650 4700 3150 4700
Text Label 3650 4700 2    50   ~ 0
DB_OUT_EXT
Text Label 3050 9700 0    50   ~ 0
DB_OUT_EXT
Wire Wire Line
	3050 9700 3550 9700
Wire Bus Line
	3700 1400 3700 3100
Wire Wire Line
	10900 7350 11600 7350
Wire Wire Line
	10900 8050 11600 8050
Wire Wire Line
	10900 8150 11600 8150
Wire Wire Line
	10900 8350 11600 8350
Wire Wire Line
	10900 8450 11600 8450
$Sheet
S 13250 7250 800  1300
U 62B3D95F
F0 "ResetClkDistr" 50
F1 "ResetClkDistr.sch" 50
F2 "RESET" I L 13250 7350 50 
F3 "~RESET" I L 13250 7450 50 
F4 "PWR_RESET" I L 13250 7550 50 
F5 "CLK" I L 13250 8050 50 
$EndSheet
Wire Wire Line
	12650 8050 13250 8050
Wire Wire Line
	12700 7550 13250 7550
Wire Wire Line
	12700 7350 13250 7350
Wire Wire Line
	13250 7450 12700 7450
Connection ~ 950  4300
Wire Bus Line
	950  4300 950  5850
Connection ~ 3700 3100
Wire Bus Line
	3700 3100 3700 3800
Connection ~ 3700 3800
Wire Bus Line
	3700 3800 3700 4300
Wire Bus Line
	950  5850 1650 5850
Connection ~ 2950 7850
Wire Bus Line
	2950 7850 2950 9000
$Sheet
S 8800 2200 1300 400 
U 62AC890F
F0 "IAdr Reg" 50
F1 "IAdr_Reg.sch" 50
F2 "PC[0..13]" I L 8800 2300 50 
F3 "IAdr[0..13]" O R 10100 2400 50 
F4 "Latch" I L 8800 2500 50 
$EndSheet
Wire Bus Line
	8500 1400 8650 1400
Wire Bus Line
	10650 2900 10650 2400
Wire Bus Line
	10650 2400 10800 2400
Wire Wire Line
	10400 2000 10400 1700
Wire Wire Line
	10300 1800 10300 2100
Wire Wire Line
	10200 1900 10200 2200
Wire Wire Line
	12100 1500 12100 2000
Wire Wire Line
	12100 2000 12000 2000
Wire Bus Line
	10100 1400 10800 1400
Wire Bus Line
	10100 2400 10650 2400
Connection ~ 10650 2400
Wire Wire Line
	10800 2000 10400 2000
Wire Wire Line
	10300 2100 10800 2100
Wire Wire Line
	10800 2200 10200 2200
Wire Bus Line
	12750 1400 12750 3650
Wire Bus Line
	12000 3650 12750 3650
$Sheet
S 10800 1300 1200 400 
U 5F18F3CA
F0 "RegI" 50
F1 "RegI.sch" 50
F2 "NextInst[0..15]" I L 10800 1400 50 
F3 "Inst[0..15]" O R 12000 1400 50 
F4 "Latch" I L 10800 1600 50 
$EndSheet
$Sheet
S 10800 1900 1200 700 
U 5FD6F3D6
F0 "Breakpoint" 50
F1 "Breakpoint.sch" 50
F3 "BKPT_RCLK" I L 10800 2000 50 
F4 "BKPT_SER" I L 10800 2100 50 
F5 "BKPT_SCLK" I L 10800 2200 50 
F6 "Bkpt_Trig" O R 12000 2000 50 
F7 "IAdr[0..13]" I L 10800 2400 50 
$EndSheet
$Sheet
S 10800 4150 1200 500 
U 5F5CACFC
F0 "In[0..13]->ROMA" 50
F1 "In0..13_to_ROMA.sch" 50
F2 "ROMA[0..13]" B L 10800 4250 50 
F3 "In[0..13]->ROMA" I R 12000 4450 50 
F4 "ROMA_OUT" T L 10800 4350 50 
F5 "Inst[0..15]" I R 12000 4250 50 
F6 "IntAdr->ROMA" I R 12000 4550 50 
$EndSheet
$Sheet
S 10800 3550 1200 400 
U 609EB802
F0 "Inst[0..7]->DBus" 50
F1 "Inst0..7_to_DBus.sch" 50
F2 "Inst[0..15]" I R 12000 3650 50 
F3 "DB[0..7]" T L 10800 3650 50 
F4 "DB_OUT" T L 10800 3750 50 
F5 "In[0..7]->DBus" I R 12000 3850 50 
$EndSheet
$Sheet
S 10800 2800 1200 550 
U 5F3A2F3D
F0 "IAdr[0..7]/[8..13] ->DBus" 50
F1 "IAdr_to_DBus.sch" 50
F2 "DB_OUT" T R 12000 3000 50 
F3 "DB[0..7]" T R 12000 2900 50 
F4 "IAdr[0..7]->DBus" I L 10800 3150 50 
F5 "IAdr[0..13]" I L 10800 2900 50 
F6 "IAdr[8..13]->DBus" I L 10800 3250 50 
$EndSheet
Wire Bus Line
	8650 1400 8650 2300
Wire Bus Line
	8650 2300 8800 2300
Connection ~ 8650 1400
Wire Bus Line
	8650 1400 8800 1400
Wire Wire Line
	8350 2500 8800 2500
Text Label 8350 2500 0    50   ~ 0
RegI_Latch
Wire Bus Line
	12000 1400 12750 1400
Wire Wire Line
	12100 1500 13300 1500
Wire Bus Line
	12750 1400 13300 1400
Connection ~ 12750 1400
Wire Bus Line
	12750 3650 12750 4250
Connection ~ 12750 3650
Wire Bus Line
	6800 1400 6800 2750
Wire Bus Line
	10000 5800 10800 5800
Wire Bus Line
	10000 4250 10000 5350
Wire Bus Line
	10000 4250 10800 4250
Wire Bus Line
	10000 5800 10000 5350
Connection ~ 10000 5350
Wire Bus Line
	10000 2750 10000 4250
Wire Bus Line
	6800 2750 10000 2750
Connection ~ 10000 4250
Wire Wire Line
	14900 3600 15750 3600
Wire Wire Line
	14900 3700 15750 3700
Text Label 15750 3600 2    50   ~ 0
IAdr[0..7]->DBus
Text Label 15750 3700 2    50   ~ 0
IAdr[8..13]->DBus
Wire Wire Line
	10800 3150 10100 3150
Wire Wire Line
	10800 3250 10050 3250
Text Label 10100 3150 0    50   ~ 0
IAdr[0..7]->DBus
Text Label 10050 3250 0    50   ~ 0
IAdr[8..13]->DBus
$EndSCHEMATC
