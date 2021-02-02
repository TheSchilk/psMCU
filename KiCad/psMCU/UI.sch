EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 10 30
Title "psMCU"
Date ""
Rev ""
Comp "Philipp Schilk"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 6800 2900 2    50   Output ~ 0
CLK_STEP
Text HLabel 6800 3600 2    50   Output ~ 0
CLK_STEP_EN
Text HLabel 6750 4350 2    50   Output ~ 0
UI_DO_RESET
$Sheet
S 5750 3400 850  200 
U 5FF2C575
F0 "BTN: Clk Step EN" 50
F1 "BTN_TOGGLE.sch" 50
F2 "OUT" O R 6600 3500 50 
$EndSheet
$Sheet
S 5750 2700 850  200 
U 5FF2C579
F0 "BTN: Clk Step" 50
F1 "BTN_TRIG.sch" 50
F2 "OUT" O R 6600 2800 50 
$EndSheet
$Sheet
S 6800 2450 700  200 
U 5FF2C57C
F0 "LED: Clock Step" 50
F1 "1BitLED.sch" 50
F2 "VAL" I L 6800 2550 50 
$EndSheet
$Sheet
S 6800 3150 700  200 
U 5FF2C57F
F0 "LED: Clock Step EN" 50
F1 "1BitLED.sch" 50
F2 "VAL" I L 6800 3250 50 
$EndSheet
Wire Wire Line
	6600 2800 6700 2800
Wire Wire Line
	6700 2800 6700 2550
Wire Wire Line
	6700 2550 6800 2550
Wire Wire Line
	6700 2800 6700 2900
Wire Wire Line
	6700 2900 6800 2900
Connection ~ 6700 2800
Wire Wire Line
	6800 3250 6700 3250
Wire Wire Line
	6700 3250 6700 3500
Wire Wire Line
	6700 3500 6600 3500
Wire Wire Line
	6700 3500 6700 3600
Wire Wire Line
	6700 3600 6800 3600
Connection ~ 6700 3500
$Sheet
S 5700 4150 850  200 
U 5FF5E0CD
F0 "BTN: Reset" 50
F1 "BTN_TRIG.sch" 50
F2 "OUT" O R 6550 4250 50 
$EndSheet
$Sheet
S 6750 3900 700  200 
U 5FF5E0D0
F0 "LED: Reset" 50
F1 "1BitLED.sch" 50
F2 "VAL" I L 6750 4000 50 
$EndSheet
Wire Wire Line
	6550 4250 6650 4250
Wire Wire Line
	6650 4250 6650 4000
Wire Wire Line
	6650 4000 6750 4000
Wire Wire Line
	6650 4250 6650 4350
Wire Wire Line
	6650 4350 6750 4350
Connection ~ 6650 4250
$Sheet
S 5650 4800 850  200 
U 5FF9246F
F0 "BTN: Inc Clk f" 50
F1 "BTN_TRIG.sch" 50
F2 "OUT" O R 6500 4900 50 
$EndSheet
$Sheet
S 6700 4550 700  200 
U 5FF92472
F0 "LED: INC_CLK_F" 50
F1 "1BitLED.sch" 50
F2 "VAL" I L 6700 4650 50 
$EndSheet
Wire Wire Line
	6500 4900 6600 4900
Wire Wire Line
	6600 4900 6600 4650
Wire Wire Line
	6600 4650 6700 4650
Wire Wire Line
	6600 4900 6600 5000
Wire Wire Line
	6600 5000 6700 5000
Connection ~ 6600 4900
$Sheet
S 5650 5450 850  200 
U 5FF933B5
F0 "BTN: Dec Clk f" 50
F1 "BTN_TRIG.sch" 50
F2 "OUT" O R 6500 5550 50 
$EndSheet
$Sheet
S 6700 5200 700  200 
U 5FF933B8
F0 "LED: DEC_CLK_F" 50
F1 "1BitLED.sch" 50
F2 "VAL" I L 6700 5300 50 
$EndSheet
Wire Wire Line
	6500 5550 6600 5550
Wire Wire Line
	6600 5550 6600 5300
Wire Wire Line
	6600 5300 6700 5300
Wire Wire Line
	6600 5550 6600 5650
Wire Wire Line
	6600 5650 6700 5650
Connection ~ 6600 5550
Text HLabel 6700 5650 2    50   Output ~ 0
DEC_CLK_F
Text HLabel 6700 5000 2    50   Output ~ 0
INC_CLK_F
Text Label 7400 3750 2    50   ~ 0
LED_INST_STEP_EN
Wire Wire Line
	7400 3750 6700 3750
Wire Wire Line
	6700 3750 6700 3600
Connection ~ 6700 3600
$EndSCHEMATC
