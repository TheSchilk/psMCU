EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 74 98
Title "psMCU"
Date "2021-03-30"
Rev "v1.0"
Comp "Philipp Schilk"
Comment1 ""
Comment2 ""
Comment3 "4 M4 mounting holes."
Comment4 "Power input connectors, reverse polarity protection, voltage regulation. Also includes the"
$EndDescr
$Comp
L Device:CP C?
U 1 1 62072216
P 7950 3250
AR Path="/62072216" Ref="C?"  Part="1" 
AR Path="/62043340/62072216" Ref="C279"  Part="1" 
F 0 "C279" H 8068 3296 50  0000 L CNN
F 1 "10u" H 8068 3205 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_6.3x7.7" H 7988 3100 50  0001 C CNN
F 3 "~" H 7950 3250 50  0001 C CNN
	1    7950 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	7950 3100 7950 3050
$Comp
L power:GND #PWR?
U 1 1 62072220
P 7950 3700
AR Path="/62072220" Ref="#PWR?"  Part="1" 
AR Path="/62043340/62072220" Ref="#PWR01208"  Part="1" 
F 0 "#PWR01208" H 7950 3450 50  0001 C CNN
F 1 "GND" H 7955 3527 50  0000 C CNN
F 2 "" H 7950 3700 50  0001 C CNN
F 3 "" H 7950 3700 50  0001 C CNN
	1    7950 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	7950 3700 7950 3650
$Comp
L power:+5V #PWR?
U 1 1 62072227
P 7950 2900
AR Path="/62072227" Ref="#PWR?"  Part="1" 
AR Path="/62043340/62072227" Ref="#PWR01207"  Part="1" 
F 0 "#PWR01207" H 7950 2750 50  0001 C CNN
F 1 "+5V" H 7965 3073 50  0000 C CNN
F 2 "" H 7950 2900 50  0001 C CNN
F 3 "" H 7950 2900 50  0001 C CNN
	1    7950 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	7950 2900 7950 2950
$Comp
L power:PWR_FLAG #FLG?
U 1 1 6207222E
P 5950 3700
AR Path="/6207222E" Ref="#FLG?"  Part="1" 
AR Path="/62043340/6207222E" Ref="#FLG02"  Part="1" 
F 0 "#FLG02" H 5950 3775 50  0001 C CNN
F 1 "PWR_FLAG" H 5950 3873 50  0000 C CNN
F 2 "" H 5950 3700 50  0001 C CNN
F 3 "~" H 5950 3700 50  0001 C CNN
	1    5950 3700
	-1   0    0    1   
$EndComp
Wire Wire Line
	5950 3700 5950 3650
Connection ~ 5950 3650
Wire Wire Line
	5950 3650 6350 3650
$Comp
L Connector:Barrel_Jack J?
U 1 1 6207223D
P 2500 3150
AR Path="/6207223D" Ref="J?"  Part="1" 
AR Path="/62043340/6207223D" Ref="J2"  Part="1" 
F 0 "J2" H 2250 3450 50  0000 C CNN
F 1 "PWR_IN" H 2350 3350 50  0000 C CNN
F 2 "Connector_BarrelJack:BarrelJack_Horizontal" H 2550 3110 50  0001 C CNN
F 3 "~" H 2550 3110 50  0001 C CNN
	1    2500 3150
	1    0    0    -1  
$EndComp
$Comp
L Device:Polyfuse_Small F?
U 1 1 62072243
P 4850 2950
AR Path="/62072243" Ref="F?"  Part="1" 
AR Path="/62043340/62072243" Ref="F1"  Part="1" 
F 0 "F1" V 4645 2950 50  0000 C CNN
F 1 "0.5A" V 4736 2950 50  0000 C CNN
F 2 "Fuse:Fuse_0805_2012Metric" H 4900 2750 50  0001 L CNN
F 3 "~" H 4850 2950 50  0001 C CNN
	1    4850 2950
	0    1    1    0   
$EndComp
Wire Wire Line
	4750 2950 4600 2950
Wire Wire Line
	6350 3250 6350 3650
Wire Wire Line
	7950 3400 7950 3500
Wire Wire Line
	5950 2950 5950 3000
Wire Wire Line
	5950 2950 6050 2950
$Comp
L Regulator_Linear:L7805 U?
U 1 1 62072254
P 6350 2950
AR Path="/62072254" Ref="U?"  Part="1" 
AR Path="/62043340/62072254" Ref="U274"  Part="1" 
F 0 "U274" H 6350 3192 50  0000 C CNN
F 1 "L7805" H 6350 3101 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:TO-252-2" H 6375 2800 50  0001 L CIN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/41/4f/b3/b0/12/d4/47/88/CD00000444.pdf/files/CD00000444.pdf/jcr:content/translations/en.CD00000444.pdf" H 6350 2900 50  0001 C CNN
	1    6350 2950
	1    0    0    -1  
$EndComp
$Comp
L Device:D_Small D?
U 1 1 6207225A
P 4500 2950
AR Path="/6207225A" Ref="D?"  Part="1" 
AR Path="/62043340/6207225A" Ref="D360"  Part="1" 
F 0 "D360" H 4500 2743 50  0000 C CNN
F 1 "1N4001" H 4500 2834 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123F" V 4500 2950 50  0001 C CNN
F 3 "~" V 4500 2950 50  0001 C CNN
	1    4500 2950
	-1   0    0    1   
$EndComp
Connection ~ 7950 3650
Connection ~ 7950 2950
$Comp
L Device:CP C?
U 1 1 62072267
P 5400 3250
AR Path="/62072267" Ref="C?"  Part="1" 
AR Path="/62043340/62072267" Ref="C278"  Part="1" 
F 0 "C278" H 5518 3296 50  0000 L CNN
F 1 "10u" H 5518 3205 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_6.3x7.7" H 5438 3100 50  0001 C CNN
F 3 "~" H 5400 3250 50  0001 C CNN
	1    5400 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 3100 5400 2950
Wire Wire Line
	5400 3400 5400 3650
Connection ~ 5950 2950
$Comp
L Mechanical:MountingHole H1
U 1 1 6045A890
P 8700 2850
F 0 "H1" H 8800 2896 50  0000 L CNN
F 1 "MountingHole" H 8800 2805 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad_Via" H 8700 2850 50  0001 C CNN
F 3 "~" H 8700 2850 50  0001 C CNN
	1    8700 2850
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 6045B459
P 8700 3100
F 0 "H2" H 8800 3146 50  0000 L CNN
F 1 "MountingHole" H 8800 3055 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad_Via" H 8700 3100 50  0001 C CNN
F 3 "~" H 8700 3100 50  0001 C CNN
	1    8700 3100
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 6045BB3F
P 8700 3350
F 0 "H3" H 8800 3396 50  0000 L CNN
F 1 "MountingHole" H 8800 3305 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad_Via" H 8700 3350 50  0001 C CNN
F 3 "~" H 8700 3350 50  0001 C CNN
	1    8700 3350
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H4
U 1 1 6045C0AB
P 8700 3600
F 0 "H4" H 8800 3646 50  0000 L CNN
F 1 "MountingHole" H 8800 3555 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad_Via" H 8700 3600 50  0001 C CNN
F 3 "~" H 8700 3600 50  0001 C CNN
	1    8700 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 3650 7950 3650
Connection ~ 6350 3650
$Comp
L Connector_Generic:Conn_01x02 J?
U 1 1 60CE5970
P 7100 3300
AR Path="/60CE5970" Ref="J?"  Part="1" 
AR Path="/62043340/60CE5970" Ref="J3"  Part="1" 
F 0 "J3" H 7400 3300 50  0000 C CNN
F 1 "PWR_IN" H 7300 3200 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 7100 3300 50  0001 C CNN
F 3 "~" H 7100 3300 50  0001 C CNN
	1    7100 3300
	-1   0    0    1   
$EndComp
Wire Wire Line
	7500 3200 7300 3200
Wire Wire Line
	7500 3200 7500 3050
Wire Wire Line
	7500 3050 7950 3050
Connection ~ 7950 3050
Wire Wire Line
	7950 3050 7950 2950
Wire Wire Line
	7300 3300 7500 3300
Wire Wire Line
	7500 3300 7500 3500
Wire Wire Line
	7500 3500 7950 3500
Connection ~ 7950 3500
Wire Wire Line
	7950 3500 7950 3650
Wire Wire Line
	6650 2950 7950 2950
$Comp
L Jumper:Jumper_3_Bridged12 JP16
U 1 1 60CEC624
P 3300 3050
F 0 "JP16" V 3254 3116 50  0000 L CNN
F 1 "JMP" V 3345 3116 50  0000 L CNN
F 2 "Jumper:SolderJumper-3_P1.3mm_Bridged12_Pad1.0x1.5mm" H 3300 3050 50  0001 C CNN
F 3 "~" H 3300 3050 50  0001 C CNN
	1    3300 3050
	0    1    1    0   
$EndComp
Wire Wire Line
	2800 3050 3150 3050
$Comp
L Jumper:Jumper_3_Bridged12 JP17
U 1 1 60CF11C2
P 3950 3350
F 0 "JP17" V 3996 3416 50  0000 L CNN
F 1 "JMP" V 3905 3416 50  0000 L CNN
F 2 "Jumper:SolderJumper-3_P1.3mm_Bridged12_Pad1.0x1.5mm" H 3950 3350 50  0001 C CNN
F 3 "~" H 3950 3350 50  0001 C CNN
	1    3950 3350
	0    1    -1   0   
$EndComp
Wire Wire Line
	3950 2750 3300 2750
Wire Wire Line
	3300 2750 3300 2800
Wire Wire Line
	3800 3350 3150 3350
Wire Wire Line
	3150 3350 3150 3250
Wire Wire Line
	2800 3250 3150 3250
Wire Wire Line
	3300 3300 3300 3650
Wire Wire Line
	3300 3650 3950 3650
Wire Wire Line
	3950 3650 3950 3600
Wire Wire Line
	3950 3650 5400 3650
Connection ~ 3950 3650
$Comp
L BarrelPolarity:BarrelPolarity_CenterNeg G2
U 1 1 60D1CAE3
P 4300 4550
F 0 "G2" H 4581 4596 50  0000 L CNN
F 1 "BarrelPolarity_CenterNeg" H 4581 4505 50  0000 L CNN
F 2 "BarrelPolarity:BarrelPolarity_1mm_CenterNeg" H 4300 4550 50  0001 C CNN
F 3 "" H 4300 4550 50  0001 C CNN
	1    4300 4550
	1    0    0    -1  
$EndComp
$Comp
L BarrelPolarity:BarrelPolarity_CenterPos G1
U 1 1 60D1DB0E
P 4300 4300
F 0 "G1" H 4581 4346 50  0000 L CNN
F 1 "BarrelPolarity_CenterPos" H 4581 4255 50  0000 L CNN
F 2 "BarrelPolarity:BarrelPolarity_1mm_CenterPos" H 4300 4300 50  0001 C CNN
F 3 "" H 4300 4300 50  0001 C CNN
	1    4300 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 2750 3950 2950
Wire Wire Line
	4950 2950 5400 2950
Connection ~ 3950 2950
Wire Wire Line
	3950 2950 3950 3100
Wire Wire Line
	4400 2950 3950 2950
Connection ~ 5400 2950
Connection ~ 5400 3650
Wire Wire Line
	5400 3650 5950 3650
Wire Wire Line
	5400 2950 5950 2950
$Comp
L power:PWR_FLAG #FLG?
U 1 1 6207224C
P 5950 3000
AR Path="/6207224C" Ref="#FLG?"  Part="1" 
AR Path="/62043340/6207224C" Ref="#FLG01"  Part="1" 
F 0 "#FLG01" H 5950 3075 50  0001 C CNN
F 1 "PWR_FLAG" V 5950 3300 50  0000 C CNN
F 2 "" H 5950 3000 50  0001 C CNN
F 3 "~" H 5950 3000 50  0001 C CNN
	1    5950 3000
	-1   0    0    1   
$EndComp
Text Notes 3250 2550 0    50   ~ 0
Barrel Jack \nPolarity Select
$EndSCHEMATC
