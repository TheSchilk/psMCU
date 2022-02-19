EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 56 105
Title "psMCU"
Date "2022-02-13"
Rev "v1.1"
Comp "Philipp Schilk"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 "Variable frequency clock generation."
$EndDescr
Text HLabel 6000 3200 2    50   Output ~ 0
CLK_F[0..2]
Wire Bus Line
	5850 2800 5850 3200
Wire Bus Line
	5850 2700 5850 2350
Wire Wire Line
	4450 2700 4450 2150
Wire Wire Line
	6950 2150 7850 2150
$Sheet
S 5950 2050 1000 400 
U 5FFB4D29
F0 "Clock_Div" 50
F1 "Clock_Div.sch" 50
F2 "OSC_IN" I L 5950 2150 50 
F3 "CONT_CLK" O R 6950 2150 50 
F4 "F_SET[0..7]" I L 5950 2350 50 
$EndSheet
Wire Wire Line
	4450 2700 4700 2700
$Sheet
S 4700 2600 1050 800 
U 60010AFF
F0 "Clock_Div_Ctrl.sch" 50
F1 "Clock_Div_Ctrl.sch" 50
F2 "INC_CLK_F" I L 4700 2900 50 
F3 "DEC_CLK_F" I L 4700 2800 50 
F4 "OSC_IN" I L 4700 2700 50 
F5 "F_SET[0..7]" O R 5750 2700 50 
F6 "CLK_F[0..2]" O R 5750 2800 50 
F7 "DBGW_SER" I L 4700 3100 50 
F8 "DBGW_SCLK" I L 4700 3200 50 
F9 "DBGW_CLKF" I L 4700 3300 50 
$EndSheet
Wire Wire Line
	4700 2900 4600 2900
Wire Wire Line
	4600 2800 4700 2800
Wire Wire Line
	7750 2350 7850 2350
Wire Wire Line
	7750 2250 7850 2250
Wire Wire Line
	9050 2150 8800 2150
$Sheet
S 3400 2050 750  350 
U 5FFC76CA
F0 "Clock_Osc" 50
F1 "Clock_Osc.sch" 50
F2 "OSC_OUT" O R 4150 2150 50 
$EndSheet
$Sheet
S 7850 2050 950  550 
U 5FFAAF6D
F0 "Clock_Step" 50
F1 "Clock_Step.sch" 50
F2 "CLK" O R 8800 2150 50 
F3 "CONT_CLK" I L 7850 2150 50 
F4 "Clk_Step_EN" I L 7850 2250 50 
F5 "Clk_Step" I L 7850 2350 50 
F6 "DBG_CLK" I L 7850 2450 50 
$EndSheet
Text HLabel 4600 2800 0    50   Input ~ 0
Dec_Clk_F
Text HLabel 4600 2900 0    50   Input ~ 0
Inc_Clk_F
Text HLabel 7750 2350 0    50   Input ~ 0
Clk_Step
Text HLabel 7750 2250 0    50   Input ~ 0
Clk_Step_EN
Text HLabel 9050 2150 2    50   Output ~ 0
CLK
Wire Wire Line
	4450 2150 5950 2150
Wire Bus Line
	5950 2350 5850 2350
Wire Bus Line
	5850 2700 5750 2700
Wire Bus Line
	5750 2800 5850 2800
Wire Bus Line
	5850 3200 6000 3200
Wire Wire Line
	4150 2150 4450 2150
Connection ~ 4450 2150
Text HLabel 7750 2450 0    50   Input ~ 0
DBG_CLK
Wire Wire Line
	7850 2450 7750 2450
Wire Wire Line
	4700 3100 4600 3100
Wire Wire Line
	4700 3200 4600 3200
Wire Wire Line
	4700 3300 4600 3300
Text HLabel 4600 3100 0    50   Input ~ 0
DBGW_SER
Text HLabel 4600 3200 0    50   Input ~ 0
DBGW_SCLK
Text HLabel 4600 3300 0    50   Input ~ 0
DBGW_CLKF
$EndSCHEMATC
