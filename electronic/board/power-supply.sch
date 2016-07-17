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
LIBS:power-supply-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Power Supply Board"
Date "2015-08-09"
Rev ""
Comp "Damian Machtey"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L CONN_01X02 P3
U 1 1 55C5DF76
P 1900 1150
F 0 "P3" H 1900 1300 50  0000 C CNN
F 1 "12v_Batt" V 2000 1150 50  0000 C CNN
F 2 "w_conn_screw:mstba_2,5%2f2-g-5,08" H 1900 1150 60  0000 C CNN
F 3 "" H 1900 1150 60  0000 C CNN
	1    1900 1150
	1    0    0    -1  
$EndComp
$Comp
L D D1
U 1 1 55C5E8FE
P 1550 1100
F 0 "D1" H 1550 1200 50  0000 C CNN
F 1 "1N5400" H 1550 1000 50  0000 C CNN
F 2 "w_pth_diodes:diode_do201" H 1550 1100 60  0000 C CNN
F 3 "" H 1550 1100 60  0000 C CNN
	1    1550 1100
	1    0    0    -1  
$EndComp
$Comp
L D D2
U 1 1 55C5EAF7
P 1300 1800
F 0 "D2" H 1300 1900 50  0000 C CNN
F 1 "1N4001" H 1300 1700 50  0000 C CNN
F 2 "w_pth_diodes:diode_do41" H 1300 1800 60  0000 C CNN
F 3 "" H 1300 1800 60  0000 C CNN
	1    1300 1800
	1    0    0    -1  
$EndComp
$Comp
L FUSE F1
U 1 1 55C60E62
P 1150 1125
F 0 "F1" H 1250 1175 50  0000 C CNN
F 1 "2Amps" H 1050 1075 50  0000 C CNN
F 2 "w_conn_screw:mors_2p" H 1150 1125 60  0000 C CNN
F 3 "" H 1150 1125 60  0000 C CNN
	1    1150 1125
	-1   0    0    -1  
$EndComp
Text Label 975  1375 2    60   ~ 0
GND12V
Text Label 900  1125 2    60   ~ 0
12V+
Text Label 1150 1800 2    60   ~ 0
12V+Mains
$Comp
L PC817 U1
U 1 1 55C64E8C
P 4050 3950
F 0 "U1" H 3850 4150 50  0000 L CNN
F 1 "PC817" H 4050 4150 50  0000 L CNN
F 2 "Housings_DIP:DIP-4_W7.62mm_LongPads" H 3850 3750 50  0000 L CIN
F 3 "" H 4050 3950 50  0000 L CNN
	1    4050 3950
	1    0    0    -1  
$EndComp
Text Label 3750 4050 2    60   ~ 0
GND
$Comp
L R R1
U 1 1 55C65217
P 3600 3850
F 0 "R1" V 3680 3850 50  0000 C CNN
F 1 "1K" V 3600 3850 50  0000 C CNN
F 2 "w_pth_resistors:RC03" V 3530 3850 30  0000 C CNN
F 3 "" H 3600 3850 30  0000 C CNN
	1    3600 3850
	0    1    1    0   
$EndComp
Text Label 3450 3850 2    60   ~ 0
DC_3.3V
Text Label 5250 3300 2    60   ~ 0
12V+
$Comp
L BC547 Q1
U 1 1 55C67042
P 5450 4050
F 0 "Q1" H 5200 3950 50  0000 L CNN
F 1 "BC547" H 5200 4150 50  0000 L CNN
F 2 "Housings_TO-92:TO-92_Molded_Wide_Oval" H 5650 3975 50  0000 L CIN
F 3 "" H 5450 4050 50  0000 L CNN
	1    5450 4050
	1    0    0    -1  
$EndComp
$Comp
L RELAY_HJR-3FF_Z K1
U 1 1 55C69326
P 6000 3650
F 0 "K1" H 5950 4050 50  0000 C CNN
F 1 "5v Supply" H 6050 3350 50  0000 C CNN
F 2 "Relays_ThroughHole:Relay_SANYOU_SRD_Series_Form_C" H 6000 3650 60  0000 C CNN
F 3 "" H 6000 3650 60  0000 C CNN
	1    6000 3650
	0    -1   -1   0   
$EndComp
$Comp
L D D3
U 1 1 55C69F02
P 5550 3700
F 0 "D3" H 5550 3800 50  0000 C CNN
F 1 "1N4001" H 5550 3600 50  0000 C CNN
F 2 "w_pth_diodes:diode_do41" H 5425 3375 60  0000 C CNN
F 3 "" H 5550 3700 60  0000 C CNN
	1    5550 3700
	0    1    1    0   
$EndComp
Text Label 5500 4750 2    60   ~ 0
GND12V
Text Label 7300 4050 0    60   ~ 0
12V+Mains
$Comp
L R R6
U 1 1 55C6C12F
P 6900 4050
F 0 "R6" V 6980 4050 50  0000 C CNN
F 1 "1K2" V 6900 4050 50  0000 C CNN
F 2 "w_pth_resistors:RC03" V 6830 4050 30  0000 C CNN
F 3 "" H 6900 4050 30  0000 C CNN
	1    6900 4050
	0    -1   1    0   
$EndComp
$Comp
L R R2
U 1 1 55C6C692
P 4750 4050
F 0 "R2" V 4830 4050 50  0000 C CNN
F 1 "1K2" V 4750 4050 50  0000 C CNN
F 2 "w_pth_resistors:RC03" H 4680 4050 30  0000 C CNN
F 3 "" H 4750 4050 30  0000 C CNN
	1    4750 4050
	0    -1   -1   0   
$EndComp
$Comp
L BC547 Q2
U 1 1 55C6858A
P 5950 4050
F 0 "Q2" H 5750 3950 50  0000 L CNN
F 1 "BC547" H 5700 4150 50  0000 L CNN
F 2 "Housings_TO-92:TO-92_Molded_Wide_Oval" H 6150 3975 50  0000 L CIN
F 3 "" H 5950 4050 50  0000 L CNN
	1    5950 4050
	-1   0    0    -1  
$EndComp
$Comp
L LED LED1
U 1 1 55C6AFAF
P 6600 4500
F 0 "LED1" H 6600 4600 50  0000 C CNN
F 1 "Mains" H 6600 4400 50  0000 C CNN
F 2 "LEDs:LED-3MM" H 6600 4500 60  0000 C CNN
F 3 "" H 6600 4500 60  0000 C CNN
	1    6600 4500
	1    0    0    -1  
$EndComp
$Comp
L R R8
U 1 1 55C6B17E
P 6950 4500
F 0 "R8" V 7030 4500 50  0000 C CNN
F 1 "560" V 6950 4500 50  0000 C CNN
F 2 "w_pth_resistors:RC03" V 6880 4500 30  0000 C CNN
F 3 "" H 6950 4500 30  0000 C CNN
	1    6950 4500
	0    -1   1    0   
$EndComp
$Comp
L LED LED2
U 1 1 55C6D935
P 4900 4500
F 0 "LED2" H 4900 4600 50  0000 C CNN
F 1 "BBB" H 4900 4400 50  0000 C CNN
F 2 "LEDs:LED-3MM" H 4900 4500 60  0000 C CNN
F 3 "" H 4900 4500 60  0000 C CNN
	1    4900 4500
	-1   0    0    -1  
$EndComp
$Comp
L R R4
U 1 1 55C6E776
P 4550 4500
F 0 "R4" V 4630 4500 50  0000 C CNN
F 1 "560" V 4550 4500 50  0000 C CNN
F 2 "w_pth_resistors:RC03" V 4480 4500 30  0000 C CNN
F 3 "" H 4550 4500 30  0000 C CNN
	1    4550 4500
	0    -1   1    0   
$EndComp
$Comp
L CONN_02X10 P5
U 1 1 55C75852
P 3175 1525
F 0 "P5" H 3175 2075 50  0000 C CNN
F 1 "CONN_02X10" V 3175 1525 50  0000 C CNN
F 2 "lib:Socket_Strip_Straight_2x10" H 3175 325 60  0000 C CNN
F 3 "" H 3175 325 60  0000 C CNN
	1    3175 1525
	1    0    0    -1  
$EndComp
$Comp
L CONN_02X10 P6
U 1 1 55C75859
P 4725 1525
F 0 "P6" H 4725 2075 50  0000 C CNN
F 1 "CONN_02X10" V 4725 1525 50  0000 C CNN
F 2 "lib:Socket_Strip_Straight_2x10" H 4725 325 60  0000 C CNN
F 3 "" H 4725 325 60  0000 C CNN
	1    4725 1525
	1    0    0    -1  
$EndComp
Text Label 2925 1275 2    60   ~ 0
GND12V
Text Label 2925 1375 2    60   ~ 0
12V+B
Text Label 2925 1075 2    60   ~ 0
GND
Text Label 4475 1075 2    60   ~ 0
GND
Text Label 2925 1175 2    60   ~ 0
DC_3.3V
Text Label 2925 1475 2    60   ~ 0
VDD_5V
Text Label 4475 1475 2    60   ~ 0
VDD_5V
Text Label 4500 1975 2    60   ~ 0
GPIO0_7
$Comp
L dc_jack J1
U 1 1 55C8BC11
P 1600 1850
F 0 "J1" H 1600 2000 60  0000 C CNN
F 1 "dc_jack" H 1600 1700 60  0000 C CNN
F 2 "w_conn_misc:dc_socket_rh" H 1600 1850 60  0000 C CNN
F 3 "" H 1600 1850 60  0000 C CNN
	1    1600 1850
	1    0    0    1   
$EndComp
Text Label 1000 2050 2    60   ~ 0
GND12V
$Comp
L Step-Down-board SD1
U 1 1 55C8D783
P 1600 2800
F 0 "SD1" H 1700 2650 60  0000 C CNN
F 1 "Step-Down-board" H 1750 2550 60  0000 C CNN
F 2 "lib:step-down" H 1600 2800 60  0000 C CNN
F 3 "" H 1600 2800 60  0000 C CNN
	1    1600 2800
	1    0    0    -1  
$EndComp
Text Label 1200 2650 0    60   ~ 0
12V+
Text Label 1200 2900 0    60   ~ 0
GND12V
Text Label 2050 2900 2    60   ~ 0
GND
Text Label 6100 3850 0    60   ~ 0
VDD_5V
NoConn ~ 6050 3450
Text Label 6150 3450 0    60   ~ 0
VDD_5V-SD
Text Label 2050 2650 2    60   ~ 0
VDD_5V-SD
Text Label 875  800  2    60   ~ 0
12V+B
$Comp
L FUSE F2
U 1 1 55CB466C
P 1125 800
F 0 "F2" H 1225 850 50  0000 C CNN
F 1 "500mA" H 1025 750 50  0000 C CNN
F 2 "w_conn_screw:mors_2p" H 1125 800 60  0000 C CNN
F 3 "" H 1125 800 60  0000 C CNN
	1    1125 800 
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5550 3300 5550 3550
Connection ~ 5550 3850
Wire Wire Line
	5550 4250 5550 4500
Wire Wire Line
	5250 3300 5850 3300
Wire Wire Line
	6750 4050 6150 4050
Connection ~ 5550 4500
Wire Wire Line
	7100 4050 7100 5575
Wire Wire Line
	7050 4050 7300 4050
Connection ~ 7100 4050
Wire Wire Line
	4350 3850 5350 3850
Wire Wire Line
	5350 3850 5350 3300
Connection ~ 5350 3300
Wire Wire Line
	5100 4500 6400 4500
Wire Wire Line
	4900 4050 5250 4050
Wire Wire Line
	4350 4050 4600 4050
Wire Wire Line
	4400 4500 4400 4050
Connection ~ 4400 4050
Wire Wire Line
	5550 3850 5850 3850
Wire Wire Line
	5850 3300 5850 3450
Connection ~ 5550 3300
Wire Wire Line
	4475 1075 4975 1075
Wire Wire Line
	2925 1175 3425 1175
Wire Wire Line
	4475 1175 4975 1175
Wire Wire Line
	2925 1275 3425 1275
Wire Wire Line
	4475 1275 4975 1275
Wire Wire Line
	2925 1375 3425 1375
Wire Wire Line
	4475 1375 4975 1375
Wire Wire Line
	2925 1475 3425 1475
Wire Wire Line
	4475 1475 4975 1475
Wire Wire Line
	2925 1575 3425 1575
Wire Wire Line
	4475 1575 4975 1575
Wire Wire Line
	2925 1675 3425 1675
Wire Wire Line
	4475 1675 4975 1675
Wire Wire Line
	2925 1775 3425 1775
Wire Wire Line
	4475 1775 4975 1775
Wire Wire Line
	2925 1975 3425 1975
Wire Wire Line
	4475 1975 4975 1975
Wire Wire Line
	2925 1875 3425 1875
Wire Wire Line
	4475 1875 4975 1875
Wire Wire Line
	1450 2050 1450 1850
Wire Wire Line
	1000 2050 1450 2050
Connection ~ 1450 1900
Wire Wire Line
	975  1375 1700 1375
Wire Wire Line
	1700 1375 1700 1200
Wire Wire Line
	2925 1075 3425 1075
Wire Wire Line
	1400 800  1400 1125
Wire Wire Line
	1400 800  1375 800 
Connection ~ 1400 1100
$Comp
L PC817 U2
U 1 1 55CB6E0F
P 5500 5475
F 0 "U2" H 5300 5675 50  0000 L CNN
F 1 "PC817" H 5500 5675 50  0000 L CNN
F 2 "Housings_DIP:DIP-4_W7.62mm_LongPads" H 5300 5275 50  0000 L CIN
F 3 "" H 5500 5475 50  0000 L CNN
	1    5500 5475
	-1   0    0    1   
$EndComp
$Comp
L R R9
U 1 1 55CB7445
P 6000 5575
F 0 "R9" V 6080 5575 50  0000 C CNN
F 1 "3k3" V 6000 5575 50  0000 C CNN
F 2 "w_pth_resistors:RC03" V 5930 5575 30  0000 C CNN
F 3 "" H 6000 5575 30  0000 C CNN
	1    6000 5575
	0    1    1    0   
$EndComp
Connection ~ 7100 4500
Wire Wire Line
	5850 5575 5800 5575
Text Label 5200 5375 2    60   ~ 0
GPIO0_7
Wire Wire Line
	3450 3850 3450 5575
Wire Wire Line
	7100 5575 6150 5575
Wire Wire Line
	5800 4500 5800 5375
Wire Wire Line
	5800 4500 5850 4500
Wire Wire Line
	5500 4750 5800 4750
Connection ~ 5800 4750
Wire Wire Line
	5850 4500 5850 4250
Connection ~ 5800 4500
Wire Wire Line
	3450 5575 5200 5575
$EndSCHEMATC