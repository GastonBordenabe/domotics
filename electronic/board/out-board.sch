EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:out-board-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "4 FET Output Board"
Date "2015-08-12"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L PC817 IC1
U 1 1 55A81D51
P 4600 2200
F 0 "IC1" H 4390 2390 40  0000 C CNN
F 1 "PC817" H 4780 2010 40  0000 C CNN
F 2 "Housings_DIP:DIP-4_W7.62mm_LongPads" H 4390 2020 30  0000 C CIN
F 3 "~" H 4600 2200 60  0000 C CNN
	1    4600 2200
	1    0    0    1   
$EndComp
$Comp
L PC817 IC3
U 1 1 55BF39C5
P 4600 3800
F 0 "IC3" H 4390 3990 40  0000 C CNN
F 1 "PC817" H 4780 3610 40  0000 C CNN
F 2 "Housings_DIP:DIP-4_W7.62mm_LongPads" H 4390 3620 30  0000 C CIN
F 3 "~" H 4600 3800 60  0000 C CNN
	1    4600 3800
	1    0    0    1   
$EndComp
Text Label 4900 3900 0    60   ~ 0
+12V
Text Label 4300 2100 2    60   ~ 0
GND
Text Label 4300 3700 2    60   ~ 0
GND
$Comp
L IRF540N Q3
U 1 1 55A938E8
P 5800 3900
F 0 "Q3" H 6050 3975 50  0000 L CNN
F 1 "IRF540N" H 6050 3900 50  0000 L CNN
F 2 "Transistors_TO-220:TO-220_Neutral123_Horizontal_LargePads" H 6050 3825 50  0000 L CIN
F 3 "" H 5800 3900 50  0000 L CNN
	1    5800 3900
	1    0    0    1   
$EndComp
$Comp
L R R21
U 1 1 55BF39C7
P 5650 2600
F 0 "R21" V 5730 2600 50  0000 C CNN
F 1 "100k" V 5650 2600 50  0000 C CNN
F 2 "custom:Resistor_H_RM10mm" V 5580 2600 30  0000 C CNN
F 3 "" H 5650 2600 30  0000 C CNN
	1    5650 2600
	0    -1   -1   0   
$EndComp
$Comp
L R R23
U 1 1 55B150FC
P 5650 4200
F 0 "R23" V 5730 4200 50  0000 C CNN
F 1 "100k" V 5650 4200 50  0000 C CNN
F 2 "custom:Resistor_H_RM10mm" V 5580 4200 30  0000 C CNN
F 3 "" H 5650 4200 30  0000 C CNN
	1    5650 4200
	0    -1   -1   0   
$EndComp
$Comp
L PC817 IC2
U 1 1 55BF39C8
P 4600 2950
F 0 "IC2" H 4390 3140 40  0000 C CNN
F 1 "PC817" H 4780 2760 40  0000 C CNN
F 2 "Housings_DIP:DIP-4_W7.62mm_LongPads" H 4390 2770 30  0000 C CIN
F 3 "~" H 4600 2950 60  0000 C CNN
	1    4600 2950
	1    0    0    1   
$EndComp
$Comp
L PC817 IC4
U 1 1 55B15546
P 4600 4550
F 0 "IC4" H 4390 4740 40  0000 C CNN
F 1 "PC817" H 4780 4360 40  0000 C CNN
F 2 "Housings_DIP:DIP-4_W7.62mm_LongPads" H 4390 4370 30  0000 C CIN
F 3 "~" H 4600 4550 60  0000 C CNN
	1    4600 4550
	1    0    0    1   
$EndComp
Text Label 4900 3050 0    60   ~ 0
+12V
Text Label 4900 4650 0    60   ~ 0
+12V
Text Label 4300 2850 2    60   ~ 0
GND
Text Label 4300 4450 2    60   ~ 0
GND
$Comp
L IRF540N Q2
U 1 1 55BF39C9
P 5800 3050
F 0 "Q2" H 6050 3125 50  0000 L CNN
F 1 "IRF540N" H 6050 3050 50  0000 L CNN
F 2 "Transistors_TO-220:TO-220_Neutral123_Horizontal_LargePads" H 6050 2975 50  0000 L CIN
F 3 "" H 5800 3050 50  0000 L CNN
	1    5800 3050
	1    0    0    1   
$EndComp
$Comp
L R R22
U 1 1 55BF39CA
P 5650 3350
F 0 "R22" V 5730 3350 50  0000 C CNN
F 1 "100k" V 5650 3350 50  0000 C CNN
F 2 "custom:Resistor_H_RM10mm" V 5580 3350 30  0000 C CNN
F 3 "" H 5650 3350 30  0000 C CNN
	1    5650 3350
	0    -1   -1   0   
$EndComp
$Comp
L R R24
U 1 1 55B1556F
P 5650 4950
F 0 "R24" V 5730 4950 50  0000 C CNN
F 1 "100k" V 5650 4950 50  0000 C CNN
F 2 "custom:Resistor_H_RM10mm" V 5580 4950 30  0000 C CNN
F 3 "" H 5650 4950 30  0000 C CNN
	1    5650 4950
	0    -1   -1   0   
$EndComp
Text Label 6700 2500 0    60   ~ 0
OUT_1
Text Label 6700 4100 0    60   ~ 0
OUT_3
Text Label 6700 3250 0    60   ~ 0
OUT_2
Text Label 6700 4850 0    60   ~ 0
OUT_4
Text Label 4250 2300 2    60   ~ 0
in_1
Text Label 4250 3050 2    60   ~ 0
in_2
Text Label 4250 3900 2    60   ~ 0
in_3
Text Label 4250 4650 2    60   ~ 0
in_4
$Comp
L R R1
U 1 1 55BF62EA
P 5750 2000
F 0 "R1" V 5830 2000 50  0000 C CNN
F 1 "4K7" V 5750 2000 50  0000 C CNN
F 2 "w_pth_resistors:RC03" V 5680 2000 30  0000 C CNN
F 3 "" H 5750 2000 30  0000 C CNN
	1    5750 2000
	0    -1   1    0   
$EndComp
$Comp
L R R2
U 1 1 55BF2365
P 5750 2750
F 0 "R2" V 5830 2750 50  0000 C CNN
F 1 "4k7" V 5750 2750 50  0000 C CNN
F 2 "w_pth_resistors:RC03" V 5680 2750 30  0000 C CNN
F 3 "" H 5750 2750 30  0000 C CNN
	1    5750 2750
	0    -1   1    0   
$EndComp
$Comp
L R R3
U 1 1 55BF2481
P 5750 3600
F 0 "R3" V 5830 3600 50  0000 C CNN
F 1 "4k7" V 5750 3600 50  0000 C CNN
F 2 "w_pth_resistors:RC03" V 5680 3600 30  0000 C CNN
F 3 "" H 5750 3600 30  0000 C CNN
	1    5750 3600
	0    -1   1    0   
$EndComp
$Comp
L R R4
U 1 1 55BF2523
P 5750 4350
F 0 "R4" V 5830 4350 50  0000 C CNN
F 1 "4k7" V 5750 4350 50  0000 C CNN
F 2 "w_pth_resistors:RC03" V 5680 4350 30  0000 C CNN
F 3 "" H 5750 4350 30  0000 C CNN
	1    5750 4350
	0    -1   1    0   
$EndComp
$Comp
L CONN_01X09 P2
U 1 1 55BF2D0C
P 8425 3500
F 0 "P2" H 8425 4000 50  0000 C CNN
F 1 "CONN_01X09" V 8525 3500 50  0000 C CNN
F 2 "w_conn_screw:mstba_2,5%2f9-g-5,08" H 8425 3500 60  0000 C CNN
F 3 "" H 8425 3500 60  0000 C CNN
	1    8425 3500
	1    0    0    -1  
$EndComp
Text Label 6700 2100 0    60   ~ 0
-12V_1
Text Label 6700 2850 0    60   ~ 0
-12V_2
Text Label 6700 3700 0    60   ~ 0
-12V_3
Text Label 6700 4450 0    60   ~ 0
-12V_4
Text Label 8225 3100 2    60   ~ 0
+12V
$Comp
L CONN_02X10 P1
U 1 1 55BF4604
P 2525 3525
F 0 "P1" H 2525 4075 50  0000 C CNN
F 1 "CONN_02X10" V 2525 3525 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Angled_2x10" H 2525 2325 60  0000 C CNN
F 3 "" H 2525 2325 60  0000 C CNN
	1    2525 3525
	1    0    0    -1  
$EndComp
$Comp
L IRF540N Q4
U 1 1 55B15568
P 5800 4650
F 0 "Q4" H 6050 4725 50  0000 L CNN
F 1 "IRF540N" H 6050 4650 50  0000 L CNN
F 2 "Transistors_TO-220:TO-220_Neutral123_Horizontal_LargePads" H 6050 4575 50  0000 L CIN
F 3 "" H 5800 4650 50  0000 L CNN
	1    5800 4650
	1    0    0    1   
$EndComp
Connection ~ 6700 2500
Connection ~ 6700 4100
Wire Wire Line
	6700 2500 5900 2500
Wire Wire Line
	6700 4100 5900 4100
Wire Wire Line
	4250 2300 4300 2300
Wire Wire Line
	4250 3900 4300 3900
Connection ~ 6700 3250
Connection ~ 6700 4850
Wire Wire Line
	6700 3250 5900 3250
Wire Wire Line
	6700 4850 5900 4850
Wire Wire Line
	4250 3050 4300 3050
Wire Wire Line
	4250 4650 4300 4650
Wire Wire Line
	6700 4450 5900 4450
Wire Wire Line
	6700 3700 5900 3700
Wire Wire Line
	6700 2850 5900 2850
Wire Wire Line
	6700 2100 5900 2100
Text Label 4900 2300 0    60   ~ 0
+12V
Wire Wire Line
	4900 2600 4900 2300
Wire Wire Line
	4900 3350 4900 3050
Wire Wire Line
	4900 4200 4900 3900
Wire Wire Line
	4900 4950 4900 4650
Wire Wire Line
	4900 4450 5600 4450
Wire Wire Line
	5600 4350 5600 4600
Connection ~ 5600 4450
Wire Wire Line
	4900 3700 5600 3700
Wire Wire Line
	5600 3600 5600 3850
Connection ~ 5600 3700
Wire Wire Line
	5600 2750 5600 3000
Wire Wire Line
	5600 2850 4900 2850
Connection ~ 5600 2850
Wire Wire Line
	5600 2000 5600 2250
$Comp
L IRF540N Q1
U 1 1 55BF81D0
P 5800 2300
F 0 "Q1" H 6050 2375 50  0000 L CNN
F 1 "IRF540N" H 6050 2300 50  0000 L CNN
F 2 "Transistors_TO-220:TO-220_Neutral123_Horizontal_LargePads" H 6050 2225 50  0000 L CIN
F 3 "" H 5800 2300 50  0000 L CNN
	1    5800 2300
	1    0    0    1   
$EndComp
Wire Wire Line
	4900 2100 5600 2100
Connection ~ 5600 2100
Wire Wire Line
	2275 3075 2775 3075
Wire Wire Line
	2275 3175 2775 3175
Wire Wire Line
	2275 3275 2775 3275
Wire Wire Line
	2275 3375 2775 3375
Wire Wire Line
	2275 3475 2775 3475
Wire Wire Line
	2275 3575 2775 3575
Wire Wire Line
	2275 3675 2775 3675
Wire Wire Line
	2275 3775 2775 3775
Wire Wire Line
	2275 3875 2775 3875
Wire Wire Line
	2275 3975 2775 3975
Text Label 2775 3975 0    60   ~ 0
in_1
Text Label 2775 3875 0    60   ~ 0
in_2
Text Label 2775 3775 0    60   ~ 0
in_3
Text Label 2775 3675 0    60   ~ 0
in_4
Text Label 2775 3075 0    60   ~ 0
GND
Text Label 2775 3175 0    60   ~ 0
3.3V
Text Label 2775 3275 0    60   ~ 0
GND12V
Text Label 2775 3375 0    60   ~ 0
+12VDC
Text Label 8225 3300 2    60   ~ 0
OUT_1
Text Label 8225 3500 2    60   ~ 0
OUT_2
Text Label 8225 3700 2    60   ~ 0
OUT_3
Text Label 8225 3900 2    60   ~ 0
OUT_4
Text Label 8225 3400 2    60   ~ 0
-12V_2
Text Label 8225 3600 2    60   ~ 0
-12V_3
Text Label 8225 3800 2    60   ~ 0
-12V_4
Text Label 8225 3200 2    60   ~ 0
-12V_1
Wire Wire Line
	5500 2600 4900 2600
Wire Wire Line
	5800 2600 5900 2600
Wire Wire Line
	5900 2600 5900 2500
Wire Wire Line
	5900 3250 5900 3350
Wire Wire Line
	5900 3350 5800 3350
Wire Wire Line
	5500 3350 4900 3350
Wire Wire Line
	5900 4100 5900 4200
Wire Wire Line
	5900 4200 5800 4200
Wire Wire Line
	5500 4200 4900 4200
Wire Wire Line
	5900 4850 5900 4950
Wire Wire Line
	5900 4950 5800 4950
Wire Wire Line
	5500 4950 4900 4950
Wire Wire Line
	5900 4450 5900 4350
Wire Wire Line
	5900 3700 5900 3600
Wire Wire Line
	5900 2850 5900 2750
Wire Wire Line
	5900 2100 5900 2000
Connection ~ 5900 2100
$EndSCHEMATC
