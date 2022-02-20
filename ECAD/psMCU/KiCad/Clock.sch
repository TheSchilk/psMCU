EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 97 109
Title "psMCU"
Date "2022-02-20"
Rev "v1.1"
Comp "Philipp Schilk"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 "Variable frequency clock generation."
$EndDescr
Text HLabel 5750 3800 2    50   Output ~ 0
CLK_F[0..2]
Wire Bus Line
	5550 3700 5550 3350
Wire Wire Line
	4200 3700 4200 3150
$Sheet
S 5750 3050 1000 400 
U 5FFB4D29
F0 "Clock_Div" 50
F1 "Clock_Div.sch" 50
F2 "OSC_IN" I L 5750 3150 50 
F3 "CONT_CLK" O R 6750 3150 50 
F4 "F_SET[0..7]" I L 5750 3350 50 
$EndSheet
Wire Wire Line
	4200 3700 4350 3700
$Sheet
S 4350 3600 1050 800 
U 60010AFF
F0 "Clock_Div_Ctrl.sch" 50
F1 "Clock_Div_Ctrl.sch" 50
F2 "INC_CLK_F" I L 4350 3900 50 
F3 "DEC_CLK_F" I L 4350 3800 50 
F4 "OSC_IN" I L 4350 3700 50 
F5 "F_SET[0..7]" O R 5400 3700 50 
F6 "CLK_F[0..2]" O R 5400 3800 50 
F7 "DBGW_SER" I L 4350 4100 50 
F8 "DBGW_SCLK" I L 4350 4200 50 
F9 "DBGW_CLKF" I L 4350 4300 50 
$EndSheet
Wire Wire Line
	4350 3900 4250 3900
Wire Wire Line
	4250 3800 4350 3800
Wire Wire Line
	8100 3350 8200 3350
Wire Wire Line
	8100 3250 8200 3250
Wire Wire Line
	9400 3150 9150 3150
$Sheet
S 2250 3050 750  200 
U 5FFC76CA
F0 "Clock_Osc" 50
F1 "Clock_Osc.sch" 50
F2 "OSC_OUT" O R 3000 3150 50 
$EndSheet
$Sheet
S 8200 3050 950  500 
U 5FFAAF6D
F0 "Clock_Step" 50
F1 "Clock_Step.sch" 50
F2 "CLK" O R 9150 3150 50 
F3 "CONT_CLK" I L 8200 3150 50 
F4 "Clk_Step_EN" I L 8200 3250 50 
F5 "Clk_Step" I L 8200 3350 50 
F6 "DBG_CLK" I L 8200 3450 50 
$EndSheet
Text HLabel 4250 3800 0    50   Input ~ 0
Dec_Clk_F
Text HLabel 4250 3900 0    50   Input ~ 0
Inc_Clk_F
Text HLabel 8100 3350 0    50   Input ~ 0
Clk_Step
Text HLabel 8100 3250 0    50   Input ~ 0
Clk_Step_EN
Text HLabel 9400 3150 2    50   Output ~ 0
CLK
Text HLabel 8100 3450 0    50   Input ~ 0
DBG_CLK
Wire Wire Line
	8200 3450 8100 3450
Wire Wire Line
	4350 4100 4250 4100
Wire Wire Line
	4350 4200 4250 4200
Wire Wire Line
	4350 4300 4250 4300
Text HLabel 4250 4100 0    50   Input ~ 0
DBGW_SER
Text HLabel 4250 4200 0    50   Input ~ 0
DBGW_SCLK
Text HLabel 4250 4300 0    50   Input ~ 0
DBGW_CLKF
Wire Bus Line
	5400 3700 5550 3700
Wire Bus Line
	5550 3350 5750 3350
Wire Wire Line
	4200 3150 5750 3150
Wire Bus Line
	5400 3800 5750 3800
Wire Wire Line
	3000 3150 4200 3150
Connection ~ 4200 3150
Wire Wire Line
	6750 3150 8200 3150
Text Notes 2300 2650 0    100  ~ 0
Oscillator
Text Notes 4800 2650 0    100  ~ 0
Adjustable Divider
Text Notes 7900 2650 0    100  ~ 0
Manual Clock Control
$EndSCHEMATC
