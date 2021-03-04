EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 91 92
Title "psMCU"
Date ""
Rev ""
Comp "Philipp Schilk"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 "Variable frequency clock generation."
$EndDescr
Text HLabel 8450 2250 0    50   Input ~ 0
CLK_STEP_EN
Text HLabel 8450 2350 0    50   Input ~ 0
CLK_STEP
Text HLabel 3950 2900 0    50   Input ~ 0
INC_CLK_F
Text HLabel 3950 2800 0    50   Input ~ 0
DEC_CLK_F
$Sheet
S 8550 2050 950  600 
U 5FFAAF6D
F0 "Clock_Step" 50
F1 "Clock_Step.sch" 50
F2 "CLK" O R 9500 2150 50 
F3 "CLK_STEP_EN" I L 8550 2250 50 
F4 "CLK_STEP" I L 8550 2350 50 
F5 "CONT_CLK" I L 8550 2150 50 
F6 "~RESET" I L 8550 2550 50 
$EndSheet
$Sheet
S 1900 2050 1700 500 
U 5FFC76CA
F0 "Clock_Osc" 50
F1 "Clock_Osc.sch" 50
F2 "OSC_OUT" O R 3600 2150 50 
$EndSheet
Text HLabel 9750 2150 2    50   Output ~ 0
CLK
Wire Wire Line
	9750 2150 9500 2150
Wire Wire Line
	8450 2250 8550 2250
Wire Wire Line
	8450 2350 8550 2350
Wire Wire Line
	3950 2800 4050 2800
Wire Wire Line
	4050 2900 3950 2900
Text HLabel 3950 3000 0    50   Input ~ 0
POWER_ON_RESET
$Sheet
S 4050 2600 1350 500 
U 60010AFF
F0 "Clock_Div_Ctrl.sch" 50
F1 "Clock_Div_Ctrl.sch" 50
F2 "INC_CLK_F" I L 4050 2900 50 
F3 "DEC_CLK_F" I L 4050 2800 50 
F4 "OSC_IN" I L 4050 2700 50 
F5 "POWER_ON_RESET" I L 4050 3000 50 
F6 "F_SET[0..7]" O R 5400 2700 50 
F7 "F_SET_NUM[0..2]" O R 5400 2800 50 
$EndSheet
Wire Wire Line
	3950 3000 4050 3000
Wire Wire Line
	3800 2700 4050 2700
$Sheet
S 5950 2050 1700 500 
U 5FFB4D29
F0 "Clock_Div" 50
F1 "Clock_Div.sch" 50
F2 "OSC_IN" I L 5950 2150 50 
F3 "CONT_CLK" O R 7650 2150 50 
F4 "F_SET[0..7]" I L 5950 2350 50 
$EndSheet
Wire Wire Line
	7650 2150 8550 2150
Wire Wire Line
	3600 2150 3800 2150
Wire Wire Line
	3800 2700 3800 2150
Connection ~ 3800 2150
Wire Wire Line
	3800 2150 5950 2150
Wire Bus Line
	5400 2700 5650 2700
Wire Bus Line
	5650 2700 5650 2350
Wire Bus Line
	5650 2350 5950 2350
Text HLabel 8450 2550 0    50   Input ~ 0
~RESET
Wire Wire Line
	8450 2550 8550 2550
Wire Bus Line
	5400 2800 5650 2800
Wire Bus Line
	5650 2800 5650 3200
Wire Bus Line
	5650 3200 6000 3200
Text HLabel 6000 3200 2    50   Output ~ 0
F_SET_NUM[0..2]
$EndSCHEMATC
