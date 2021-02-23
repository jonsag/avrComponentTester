EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L My_Misc:ATmega328P-PU U2
U 1 1 6027C604
P 5750 3200
F 0 "U2" H 5106 3246 50  0000 R CNN
F 1 "ATmega328P-PU" H 5106 3155 50  0000 R CNN
F 2 "Package_DIP:DIP-28_W7.62mm" H 5750 3200 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/ATmega328_P%20AVR%20MCU%20with%20picoPower%20Technology%20Data%20Sheet%2040001984A.pdf" H 5750 3200 50  0001 C CNN
	1    5750 3200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 6027E054
P 10550 2650
F 0 "R6" H 10620 2696 50  0000 L CNN
F 1 "470k" H 10620 2605 50  0000 L CNN
F 2 "My_Misc:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal_larger_pads" V 10480 2650 50  0001 C CNN
F 3 "~" H 10550 2650 50  0001 C CNN
	1    10550 2650
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 6027EBE9
P 10200 2650
F 0 "R5" H 10270 2696 50  0000 L CNN
F 1 "680R" H 10270 2605 50  0000 L CNN
F 2 "My_Misc:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal_larger_pads" V 10130 2650 50  0001 C CNN
F 3 "~" H 10200 2650 50  0001 C CNN
	1    10200 2650
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 602808CF
P 9850 2650
F 0 "R4" H 9920 2696 50  0000 L CNN
F 1 "470k" H 9920 2605 50  0000 L CNN
F 2 "My_Misc:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal_larger_pads" V 9780 2650 50  0001 C CNN
F 3 "~" H 9850 2650 50  0001 C CNN
	1    9850 2650
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 602808D5
P 9500 2650
F 0 "R3" H 9570 2696 50  0000 L CNN
F 1 "680R" H 9570 2605 50  0000 L CNN
F 2 "My_Misc:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal_larger_pads" V 9430 2650 50  0001 C CNN
F 3 "~" H 9500 2650 50  0001 C CNN
	1    9500 2650
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 602812CB
P 9150 2650
F 0 "R2" H 9220 2696 50  0000 L CNN
F 1 "470k" H 9220 2605 50  0000 L CNN
F 2 "My_Misc:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal_larger_pads" V 9080 2650 50  0001 C CNN
F 3 "~" H 9150 2650 50  0001 C CNN
	1    9150 2650
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 602812D1
P 8800 2650
F 0 "R1" H 8870 2696 50  0000 L CNN
F 1 "680R" H 8870 2605 50  0000 L CNN
F 2 "My_Misc:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal_larger_pads" V 8730 2650 50  0001 C CNN
F 3 "~" H 8800 2650 50  0001 C CNN
	1    8800 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 2900 8800 2900
Wire Wire Line
	8800 2900 8800 2800
Wire Wire Line
	8800 2900 9150 2900
Wire Wire Line
	9150 2900 9150 2800
Connection ~ 8800 2900
Wire Wire Line
	6350 3000 9500 3000
Wire Wire Line
	9500 3000 9500 2800
Wire Wire Line
	9500 3000 9850 3000
Wire Wire Line
	9850 3000 9850 2800
Connection ~ 9500 3000
Wire Wire Line
	10200 3100 10200 2800
Wire Wire Line
	10200 3100 10550 3100
Wire Wire Line
	10550 3100 10550 2800
Connection ~ 10200 3100
$Comp
L My_Headers:3-pin_test_header J3
U 1 1 60289CD6
P 10450 3600
F 0 "J3" V 10412 3442 50  0000 R CNN
F 1 "3-pin_test_header" H 10450 3400 50  0001 C CNN
F 2 "My_Headers:3-pin_test_header_large" H 10500 3300 50  0001 C CNN
F 3 "~" H 10450 3600 50  0001 C CNN
	1    10450 3600
	0    -1   1    0   
$EndComp
Wire Wire Line
	10550 3400 10550 3100
Connection ~ 10550 3100
Wire Wire Line
	10450 3400 10450 3200
Wire Wire Line
	10450 3200 9850 3200
Wire Wire Line
	9850 3200 9850 3000
Connection ~ 9850 3000
Wire Wire Line
	10350 3400 10350 3300
Wire Wire Line
	6350 2500 8700 2500
Wire Wire Line
	8700 2500 8700 2400
Wire Wire Line
	8700 2400 10550 2400
Wire Wire Line
	10550 2400 10550 2500
Wire Wire Line
	6350 2400 8600 2400
Wire Wire Line
	8600 2300 10200 2300
Wire Wire Line
	10200 2300 10200 2500
Wire Wire Line
	6350 2300 8500 2300
Wire Wire Line
	8500 2300 8500 2200
Wire Wire Line
	8500 2200 9850 2200
Wire Wire Line
	9850 2200 9850 2500
Wire Wire Line
	6350 2200 8400 2200
Wire Wire Line
	8400 2200 8400 2100
Wire Wire Line
	8400 2100 9500 2100
Wire Wire Line
	9500 2100 9500 2500
Wire Wire Line
	6350 2100 8300 2100
Wire Wire Line
	8300 2100 8300 2000
Wire Wire Line
	8300 2000 9150 2000
Wire Wire Line
	9150 2000 9150 2500
Wire Wire Line
	6350 2000 8200 2000
Wire Wire Line
	8200 2000 8200 1900
Wire Wire Line
	8200 1900 8800 1900
Wire Wire Line
	8800 1900 8800 2500
Text GLabel 6450 3200 2    50   Input ~ 0
ZenerMeas
Wire Wire Line
	6450 3200 6350 3200
Wire Wire Line
	6350 3300 7600 3300
Wire Wire Line
	7800 3300 7800 3400
Wire Wire Line
	8600 2400 8600 2300
$Comp
L power:+5V #PWR0101
U 1 1 602AB9A7
P 7600 1050
F 0 "#PWR0101" H 7600 900 50  0001 C CNN
F 1 "+5V" H 7615 1223 50  0000 C CNN
F 2 "" H 7600 1050 50  0001 C CNN
F 3 "" H 7600 1050 50  0001 C CNN
	1    7600 1050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R12
U 1 1 602B3882
P 7300 3650
F 0 "R12" H 7230 3604 50  0000 R CNN
F 1 "3k3" H 7230 3695 50  0000 R CNN
F 2 "My_Misc:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal_larger_pads" V 7230 3650 50  0001 C CNN
F 3 "~" H 7300 3650 50  0001 C CNN
	1    7300 3650
	-1   0    0    1   
$EndComp
Wire Wire Line
	7300 3400 6350 3400
$Comp
L power:GND #PWR0102
U 1 1 602B7091
P 7300 3900
F 0 "#PWR0102" H 7300 3650 50  0001 C CNN
F 1 "GND" H 7305 3727 50  0000 C CNN
F 2 "" H 7300 3900 50  0001 C CNN
F 3 "" H 7300 3900 50  0001 C CNN
	1    7300 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	7300 1450 7300 3400
$Comp
L Device:R R11
U 1 1 602B8C07
P 7300 1300
F 0 "R11" H 7370 1346 50  0000 L CNN
F 1 "10k" H 7370 1255 50  0000 L CNN
F 2 "My_Misc:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal_larger_pads" V 7230 1300 50  0001 C CNN
F 3 "~" H 7300 1300 50  0001 C CNN
	1    7300 1300
	1    0    0    -1  
$EndComp
Text GLabel 7300 1050 1    50   Input ~ 0
VREF
Wire Wire Line
	7300 1150 7300 1050
$Comp
L Device:R R13
U 1 1 602C14BE
P 7000 1300
F 0 "R13" H 7070 1346 50  0000 L CNN
F 1 "10k" H 7070 1255 50  0000 L CNN
F 2 "My_Misc:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal_larger_pads" V 6930 1300 50  0001 C CNN
F 3 "~" H 7000 1300 50  0001 C CNN
	1    7000 1300
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0103
U 1 1 602C1C68
P 7000 1050
F 0 "#PWR0103" H 7000 900 50  0001 C CNN
F 1 "+5V" H 7015 1223 50  0000 C CNN
F 2 "" H 7000 1050 50  0001 C CNN
F 3 "" H 7000 1050 50  0001 C CNN
	1    7000 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	7000 3500 7000 1450
Wire Wire Line
	7000 1150 7000 1050
Wire Wire Line
	6350 3500 7000 3500
Text GLabel 6450 2600 2    50   Input ~ 0
XTAL1
Text GLabel 6450 2700 2    50   Input ~ 0
XTAL2
Wire Wire Line
	6450 2600 6350 2600
Wire Wire Line
	6450 2700 6350 2700
Text GLabel 6450 4100 2    50   Input ~ 0
FreqMeas
Wire Wire Line
	6450 4100 6350 4100
Text GLabel 6450 3700 2    50   Input ~ 0
RST
Text GLabel 6450 3800 2    50   Input ~ 0
A0
Text GLabel 6450 3900 2    50   Input ~ 0
SCK
Text GLabel 6450 4000 2    50   Input ~ 0
SDA
Wire Wire Line
	6450 3700 6350 3700
Wire Wire Line
	6450 3800 6350 3800
Wire Wire Line
	6450 3900 6350 3900
Wire Wire Line
	6450 4000 6350 4000
Text GLabel 10900 3100 2    50   Input ~ 0
TP3
Text GLabel 10900 3200 2    50   Input ~ 0
TP2
Text GLabel 10900 3300 2    50   Input ~ 0
TP1
Wire Wire Line
	10900 3200 10450 3200
Connection ~ 10450 3200
Wire Wire Line
	10900 3300 10350 3300
Wire Wire Line
	10550 3100 10900 3100
$Comp
L Device:R R30
U 1 1 602E75B1
P 1350 6650
F 0 "R30" V 1143 6650 50  0000 C CNN
F 1 "10k" V 1234 6650 50  0000 C CNN
F 2 "My_Misc:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal_larger_pads" V 1280 6650 50  0001 C CNN
F 3 "~" H 1350 6650 50  0001 C CNN
	1    1350 6650
	0    1    1    0   
$EndComp
$Comp
L Device:R R31
U 1 1 602E79CE
P 1850 6650
F 0 "R31" V 1643 6650 50  0000 C CNN
F 1 "10k" V 1734 6650 50  0000 C CNN
F 2 "My_Misc:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal_larger_pads" V 1780 6650 50  0001 C CNN
F 3 "~" H 1850 6650 50  0001 C CNN
	1    1850 6650
	0    1    1    0   
$EndComp
$Comp
L Device:C C11
U 1 1 602E8981
P 1600 6900
F 0 "C11" H 1715 6946 50  0000 L CNN
F 1 "100n" H 1715 6855 50  0000 L CNN
F 2 "My_Misc:C_Disc_D3.8mm_W2.6mm_P2.50mm_large" H 1638 6750 50  0001 C CNN
F 3 "~" H 1600 6900 50  0001 C CNN
	1    1600 6900
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0104
U 1 1 602E8F5C
P 1100 6300
F 0 "#PWR0104" H 1100 6150 50  0001 C CNN
F 1 "+5V" H 1115 6473 50  0000 C CNN
F 2 "" H 1100 6300 50  0001 C CNN
F 3 "" H 1100 6300 50  0001 C CNN
	1    1100 6300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 602E92D9
P 2100 6850
F 0 "#PWR0105" H 2100 6600 50  0001 C CNN
F 1 "GND" H 2105 6677 50  0000 C CNN
F 2 "" H 2100 6850 50  0001 C CNN
F 3 "" H 2100 6850 50  0001 C CNN
	1    2100 6850
	1    0    0    -1  
$EndComp
Wire Wire Line
	1100 6650 1200 6650
Wire Wire Line
	1100 6300 1100 6650
Wire Wire Line
	2000 6650 2100 6650
Wire Wire Line
	2100 6650 2100 6850
Wire Wire Line
	1700 6650 1600 6650
Wire Wire Line
	1600 6750 1600 6650
Connection ~ 1600 6650
Wire Wire Line
	1600 6650 1500 6650
Wire Wire Line
	1600 7050 1600 7250
Text GLabel 1600 7250 3    50   Input ~ 0
TP4
Text GLabel 1600 6300 1    50   Input ~ 0
FreqMeas
Wire Wire Line
	1600 6650 1600 6300
Text Notes 1150 7600 0    50   ~ 0
Frequency measurements
$Comp
L Jumper:Jumper_3_Bridged12 JP1
U 1 1 602F9E92
P 2900 6650
F 0 "JP1" H 2900 6761 50  0000 C CNN
F 1 "Vext <50V, Zener < VCC" H 2900 6852 50  0000 C CNN
F 2 "My_Parts:Jumper_1x03_P2.54mm_large" H 2900 6650 50  0001 C CNN
F 3 "~" H 2900 6650 50  0001 C CNN
	1    2900 6650
	-1   0    0    1   
$EndComp
$Comp
L power:VCC #PWR0106
U 1 1 602FCA47
P 2900 6300
F 0 "#PWR0106" H 2900 6150 50  0001 C CNN
F 1 "VCC" H 2915 6473 50  0000 C CNN
F 2 "" H 2900 6300 50  0001 C CNN
F 3 "" H 2900 6300 50  0001 C CNN
	1    2900 6300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R25
U 1 1 602FD0A3
P 3500 6650
F 0 "R25" V 3293 6650 50  0000 C CNN
F 1 "2k2" V 3384 6650 50  0000 C CNN
F 2 "My_Misc:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal_larger_pads" V 3430 6650 50  0001 C CNN
F 3 "~" H 3500 6650 50  0001 C CNN
	1    3500 6650
	0    1    1    0   
$EndComp
$Comp
L Device:R R26
U 1 1 602FDD89
P 4000 6650
F 0 "R26" V 3793 6650 50  0000 C CNN
F 1 "179k45" V 3884 6650 50  0000 C CNN
F 2 "My_Misc:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal_larger_pads" V 3930 6650 50  0001 C CNN
F 3 "~" H 4000 6650 50  0001 C CNN
	1    4000 6650
	0    1    1    0   
$EndComp
$Comp
L Device:R R27
U 1 1 602FE951
P 4500 6650
F 0 "R27" V 4293 6650 50  0000 C CNN
F 1 "20k" V 4384 6650 50  0000 C CNN
F 2 "My_Misc:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal_larger_pads" V 4430 6650 50  0001 C CNN
F 3 "~" H 4500 6650 50  0001 C CNN
	1    4500 6650
	0    1    1    0   
$EndComp
$Comp
L Device:C C7
U 1 1 602FF440
P 4500 6250
F 0 "C7" V 4248 6250 50  0000 C CNN
F 1 "10n 100V" V 4339 6250 50  0000 C CNN
F 2 "My_Misc:C_Disc_D7.5mm_W2.5mm_P5.00mm_larger" H 4538 6100 50  0001 C CNN
F 3 "~" H 4500 6250 50  0001 C CNN
	1    4500 6250
	0    1    1    0   
$EndComp
Wire Wire Line
	3350 6650 3150 6650
Wire Wire Line
	4150 6650 4250 6650
Wire Wire Line
	4250 6650 4250 6250
Wire Wire Line
	4250 6250 4350 6250
Connection ~ 4250 6650
Wire Wire Line
	4250 6650 4350 6650
Wire Wire Line
	4650 6650 4750 6650
Wire Wire Line
	4750 6650 4750 6250
Wire Wire Line
	4750 6250 4650 6250
Wire Wire Line
	4250 6250 4250 5850
Connection ~ 4250 6250
Text GLabel 4250 5850 1    50   Input ~ 0
ZenerMeas
Wire Wire Line
	4750 6650 4950 6650
Wire Wire Line
	4950 6650 4950 6850
Connection ~ 4750 6650
$Comp
L power:GND #PWR0107
U 1 1 603162AA
P 4950 6850
F 0 "#PWR0107" H 4950 6600 50  0001 C CNN
F 1 "GND" H 4955 6677 50  0000 C CNN
F 2 "" H 4950 6850 50  0001 C CNN
F 3 "" H 4950 6850 50  0001 C CNN
	1    4950 6850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 6650 3750 6650
Text GLabel 3750 7250 3    50   Input ~ 0
TP5
Text GLabel 4750 7250 3    50   Input ~ 0
TPGND
Wire Wire Line
	3750 6650 3750 7250
Connection ~ 3750 6650
Wire Wire Line
	3750 6650 3850 6650
Wire Wire Line
	4750 6650 4750 7250
Text Notes 3150 7650 0    50   ~ 0
Measure Vext up to 50V\nVoltage Zener measurement up to VCC
Wire Wire Line
	2900 6500 2900 6300
$Comp
L Connector:Barrel_Jack_Switch J2
U 1 1 6033B3A6
P 850 2750
F 0 "J2" H 907 3067 50  0000 C CNN
F 1 "8-15VDC In" H 907 2976 50  0000 C CNN
F 2 "Connector_BarrelJack:BarrelJack_Horizontal" H 900 2710 50  0001 C CNN
F 3 "~" H 900 2710 50  0001 C CNN
	1    850  2750
	1    0    0    -1  
$EndComp
$Comp
L Device:D_Schottky D1
U 1 1 6033BFBE
P 1600 2650
F 0 "D1" H 1600 2433 50  0000 C CNN
F 1 "D_Schottky" H 1600 2524 50  0000 C CNN
F 2 "My_Misc:D_DO-35_SOD27_P7.62mm_Horizontal_large" H 1600 2650 50  0001 C CNN
F 3 "~" H 1600 2650 50  0001 C CNN
	1    1600 2650
	-1   0    0    1   
$EndComp
$Comp
L Device:R R10
U 1 1 6033C8BC
P 2100 2650
F 0 "R10" V 1893 2650 50  0000 C CNN
F 1 "33k" V 1984 2650 50  0000 C CNN
F 2 "My_Misc:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal_larger_pads" V 2030 2650 50  0001 C CNN
F 3 "~" H 2100 2650 50  0001 C CNN
	1    2100 2650
	0    1    1    0   
$EndComp
$Comp
L Transistor_BJT:2N3906 Q3
U 1 1 6033D386
P 1950 3050
F 0 "Q3" H 2141 3004 50  0000 L CNN
F 1 "2N3906" H 2141 3095 50  0000 L CNN
F 2 "My_Misc:TO-92_Inline_Wide_large" H 2150 2975 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/2N3906-D.PDF" H 1950 3050 50  0001 L CNN
	1    1950 3050
	-1   0    0    1   
$EndComp
$Comp
L Device:R R7
U 1 1 6034506D
P 2600 3050
F 0 "R7" V 2393 3050 50  0000 C CNN
F 1 "3k3" V 2484 3050 50  0000 C CNN
F 2 "My_Misc:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal_larger_pads" V 2530 3050 50  0001 C CNN
F 3 "~" H 2600 3050 50  0001 C CNN
	1    2600 3050
	0    1    1    0   
$EndComp
Wire Wire Line
	1150 2650 1350 2650
Wire Wire Line
	1750 2650 1850 2650
Wire Wire Line
	1850 2850 1850 2650
Connection ~ 1850 2650
Wire Wire Line
	1850 2650 1950 2650
Wire Wire Line
	2150 3050 2350 3050
$Comp
L power:VCC #PWR0108
U 1 1 603585DA
P 1350 2300
F 0 "#PWR0108" H 1350 2150 50  0001 C CNN
F 1 "VCC" H 1365 2473 50  0000 C CNN
F 2 "" H 1350 2300 50  0001 C CNN
F 3 "" H 1350 2300 50  0001 C CNN
	1    1350 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 2650 1350 2300
Connection ~ 1350 2650
Wire Wire Line
	1350 2650 1450 2650
$Comp
L power:GND #PWR0109
U 1 1 6035C710
P 1250 3050
F 0 "#PWR0109" H 1250 2800 50  0001 C CNN
F 1 "GND" H 1255 2877 50  0000 C CNN
F 2 "" H 1250 3050 50  0001 C CNN
F 3 "" H 1250 3050 50  0001 C CNN
	1    1250 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1150 2850 1250 2850
Wire Wire Line
	1250 2850 1250 3050
Wire Wire Line
	2250 2650 2350 2650
Wire Wire Line
	2350 2650 2350 3050
Connection ~ 2350 3050
Wire Wire Line
	2350 3050 2450 3050
Wire Wire Line
	1950 3800 1850 3800
Wire Wire Line
	1850 3800 1850 3250
$Comp
L Device:CP C9
U 1 1 603728EF
P 1850 4250
F 0 "C9" H 1968 4296 50  0000 L CNN
F 1 "10u" H 1968 4205 50  0000 L CNN
F 2 "My_Misc:CP_Radial_D5.0mm_P2.00mm_larger" H 1888 4100 50  0001 C CNN
F 3 "~" H 1850 4250 50  0001 C CNN
	1    1850 4250
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C10
U 1 1 60373401
P 2650 4250
F 0 "C10" H 2768 4296 50  0000 L CNN
F 1 "10u" H 2768 4205 50  0000 L CNN
F 2 "My_Misc:CP_Radial_D5.0mm_P2.00mm_larger" H 2688 4100 50  0001 C CNN
F 3 "~" H 2650 4250 50  0001 C CNN
	1    2650 4250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C13
U 1 1 603742A8
P 1400 4250
F 0 "C13" H 1515 4296 50  0000 L CNN
F 1 "100n" H 1515 4205 50  0000 L CNN
F 2 "My_Misc:C_Disc_D3.8mm_W2.6mm_P2.50mm_large" H 1438 4100 50  0001 C CNN
F 3 "~" H 1400 4250 50  0001 C CNN
	1    1400 4250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C14
U 1 1 60374B14
P 3100 4250
F 0 "C14" H 3215 4296 50  0000 L CNN
F 1 "100n" H 3215 4205 50  0000 L CNN
F 2 "My_Misc:C_Disc_D3.8mm_W2.6mm_P2.50mm_large" H 3138 4100 50  0001 C CNN
F 3 "~" H 3100 4250 50  0001 C CNN
	1    3100 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 3800 1850 4100
Connection ~ 1850 3800
Wire Wire Line
	2550 3800 2650 3800
Wire Wire Line
	2650 3800 2650 4100
Wire Wire Line
	1400 4400 1400 4500
Wire Wire Line
	1400 4500 1850 4500
Wire Wire Line
	3100 4500 3100 4400
Wire Wire Line
	2650 4400 2650 4500
Connection ~ 2650 4500
Wire Wire Line
	2650 4500 3100 4500
Wire Wire Line
	1850 4400 1850 4500
Connection ~ 1850 4500
Wire Wire Line
	1850 4500 2250 4500
Wire Wire Line
	2250 4100 2250 4500
Connection ~ 2250 4500
Wire Wire Line
	2250 4500 2650 4500
Wire Wire Line
	1850 3800 1400 3800
Wire Wire Line
	1400 3800 1400 4100
Text GLabel 1400 3700 1    50   Input ~ 0
VREF
Wire Wire Line
	3100 3800 3100 4100
Wire Wire Line
	2650 3800 3100 3800
Connection ~ 2650 3800
Wire Wire Line
	1400 3800 1400 3700
Connection ~ 1400 3800
Wire Wire Line
	3100 3800 3100 3700
Connection ~ 3100 3800
$Comp
L power:+5V #PWR0110
U 1 1 603AF759
P 3100 3700
F 0 "#PWR0110" H 3100 3550 50  0001 C CNN
F 1 "+5V" H 3115 3873 50  0000 C CNN
F 2 "" H 3100 3700 50  0001 C CNN
F 3 "" H 3100 3700 50  0001 C CNN
	1    3100 3700
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D2
U 1 1 603BBC80
P 3600 3300
F 0 "D2" V 3639 3182 50  0000 R CNN
F 1 "LED" V 3548 3182 50  0000 R CNN
F 2 "My_Misc:LED_D5.0mm_larger_pads" H 3600 3300 50  0001 C CNN
F 3 "~" H 3600 3300 50  0001 C CNN
	1    3600 3300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2750 3050 3050 3050
Wire Wire Line
	3600 3050 3600 3150
Connection ~ 3100 4500
Wire Wire Line
	3600 4500 3100 4500
Wire Wire Line
	3600 3450 3600 3750
Wire Wire Line
	3600 4150 3600 4500
$Comp
L Device:R R9
U 1 1 603EF3A8
P 4350 4250
F 0 "R9" H 4420 4296 50  0000 L CNN
F 1 "100k" H 4420 4205 50  0000 L CNN
F 2 "My_Misc:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal_larger_pads" V 4280 4250 50  0001 C CNN
F 3 "~" H 4350 4250 50  0001 C CNN
	1    4350 4250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 603EE6B9
P 4000 4250
F 0 "C2" H 4115 4296 50  0000 L CNN
F 1 "10n" H 4115 4205 50  0000 L CNN
F 2 "My_Misc:C_Disc_D3.8mm_W2.6mm_P2.50mm_large" H 4038 4100 50  0001 C CNN
F 3 "~" H 4000 4250 50  0001 C CNN
	1    4000 4250
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:2N3904 Q1
U 1 1 603BACF4
P 3700 3950
F 0 "Q1" H 3891 3996 50  0000 L CNN
F 1 "2N3904" H 3891 3905 50  0000 L CNN
F 2 "My_Misc:TO-92_Inline_Wide_large" H 3900 3875 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/2N3903-D.PDF" H 3700 3950 50  0001 L CNN
	1    3700 3950
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3600 4500 4000 4500
Wire Wire Line
	4350 4500 4350 4400
Connection ~ 3600 4500
Wire Wire Line
	4000 4400 4000 4500
Connection ~ 4000 4500
Wire Wire Line
	4000 4500 4350 4500
Wire Wire Line
	3900 3950 4000 3950
Wire Wire Line
	4000 3950 4000 4100
Wire Wire Line
	4000 3950 4350 3950
Wire Wire Line
	4350 3950 4350 4100
Connection ~ 4000 3950
$Comp
L Device:R R8
U 1 1 60441B7D
P 4700 4250
F 0 "R8" H 4770 4296 50  0000 L CNN
F 1 "27k" H 4770 4205 50  0000 L CNN
F 2 "My_Misc:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal_larger_pads" V 4630 4250 50  0001 C CNN
F 3 "~" H 4700 4250 50  0001 C CNN
	1    4700 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 3950 4700 3950
Wire Wire Line
	4700 3950 4700 4100
Connection ~ 4350 3950
Wire Wire Line
	4700 4400 4700 5250
Wire Wire Line
	4700 5250 6550 5250
Wire Wire Line
	6550 5250 6550 4300
Wire Wire Line
	6550 4300 6350 4300
$Comp
L Device:Rotary_Encoder_Switch SW1
U 1 1 604E701E
P 3150 2200
F 0 "SW1" V 3104 1970 50  0000 R CNN
F 1 "EC11" V 3195 1970 50  0000 R CNN
F 2 "My_Misc:RotaryEncoder_Alps_EC11E-Switch_Vertical_H20mm_CircularMountingHoles_large" H 3000 2360 50  0001 C CNN
F 3 "~" H 3150 2460 50  0001 C CNN
	1    3150 2200
	0    -1   1    0   
$EndComp
$Comp
L Transistor_BJT:2N3904 Q2
U 1 1 604E88A2
P 4000 2700
F 0 "Q2" H 4190 2746 50  0000 L CNN
F 1 "2N3904" H 4190 2655 50  0000 L CNN
F 2 "My_Misc:TO-92_Inline_Wide_large" H 4200 2625 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/2N3903-D.PDF" H 4000 2700 50  0001 L CNN
	1    4000 2700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0111
U 1 1 604F9F0A
P 4100 3350
F 0 "#PWR0111" H 4100 3100 50  0001 C CNN
F 1 "GND" H 4105 3177 50  0000 C CNN
F 2 "" H 4100 3350 50  0001 C CNN
F 3 "" H 4100 3350 50  0001 C CNN
	1    4100 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 2500 3050 3050
Connection ~ 3050 3050
Wire Wire Line
	3050 3050 3600 3050
Wire Wire Line
	3250 2700 3250 2500
Wire Wire Line
	3250 2700 3800 2700
Wire Wire Line
	4100 2900 4100 3350
$Comp
L Device:R R15
U 1 1 6051AEA7
P 4100 2150
F 0 "R15" H 4170 2196 50  0000 L CNN
F 1 "27k" H 4170 2105 50  0000 L CNN
F 2 "My_Misc:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal_larger_pads" V 4030 2150 50  0001 C CNN
F 3 "~" H 4100 2150 50  0001 C CNN
	1    4100 2150
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0112
U 1 1 6051C798
P 4100 1800
F 0 "#PWR0112" H 4100 1650 50  0001 C CNN
F 1 "+5V" H 4115 1973 50  0000 C CNN
F 2 "" H 4100 1800 50  0001 C CNN
F 3 "" H 4100 1800 50  0001 C CNN
	1    4100 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 2500 4100 2400
Wire Wire Line
	4100 2000 4100 1800
Wire Wire Line
	4100 2400 5000 2400
Wire Wire Line
	5000 2400 5000 5150
Wire Wire Line
	5000 5150 6450 5150
Wire Wire Line
	6450 5150 6450 4400
Wire Wire Line
	6450 4400 6350 4400
Connection ~ 4100 2400
Wire Wire Line
	4100 2400 4100 2300
$Comp
L Device:R R18
U 1 1 6053BCF9
P 3000 1400
F 0 "R18" H 3070 1446 50  0000 L CNN
F 1 "10k" H 3070 1355 50  0000 L CNN
F 2 "My_Misc:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal_larger_pads" V 2930 1400 50  0001 C CNN
F 3 "~" H 3000 1400 50  0001 C CNN
	1    3000 1400
	1    0    0    -1  
$EndComp
$Comp
L Device:R R17
U 1 1 6053D171
P 3300 1400
F 0 "R17" H 3370 1446 50  0000 L CNN
F 1 "10k" H 3370 1355 50  0000 L CNN
F 2 "My_Misc:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal_larger_pads" V 3230 1400 50  0001 C CNN
F 3 "~" H 3300 1400 50  0001 C CNN
	1    3300 1400
	1    0    0    -1  
$EndComp
$Comp
L Device:R R16
U 1 1 6054A69F
P 3600 1400
F 0 "R16" H 3670 1446 50  0000 L CNN
F 1 "1k" H 3670 1355 50  0000 L CNN
F 2 "My_Misc:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal_larger_pads" V 3530 1400 50  0001 C CNN
F 3 "~" H 3600 1400 50  0001 C CNN
	1    3600 1400
	1    0    0    -1  
$EndComp
$Comp
L Device:R R19
U 1 1 6054C626
P 2700 1400
F 0 "R19" H 2770 1446 50  0000 L CNN
F 1 "1k" H 2770 1355 50  0000 L CNN
F 2 "My_Misc:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal_larger_pads" V 2630 1400 50  0001 C CNN
F 3 "~" H 2700 1400 50  0001 C CNN
	1    2700 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 1650 2700 1550
Wire Wire Line
	3600 1650 3600 1550
Wire Wire Line
	3000 1250 3000 1150
Wire Wire Line
	3000 1150 3150 1150
Wire Wire Line
	3300 1150 3300 1250
$Comp
L power:+5V #PWR0113
U 1 1 605C1725
P 3150 950
F 0 "#PWR0113" H 3150 800 50  0001 C CNN
F 1 "+5V" H 3165 1123 50  0000 C CNN
F 2 "" H 3150 950 50  0001 C CNN
F 3 "" H 3150 950 50  0001 C CNN
	1    3150 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 950  3150 1150
Connection ~ 3150 1150
Wire Wire Line
	3150 1150 3300 1150
Text GLabel 3600 1050 1    50   Input ~ 0
SDA
Text GLabel 2700 1050 1    50   Input ~ 0
A0
Wire Wire Line
	3600 1250 3600 1050
Wire Wire Line
	2700 1250 2700 1050
$Comp
L Device:C C1
U 1 1 606104A1
P 4900 2000
F 0 "C1" V 4648 2000 50  0000 C CNN
F 1 "1n" V 4739 2000 50  0000 C CNN
F 2 "My_Misc:C_Disc_D3.0mm_W1.6mm_P2.50mm_larg" H 4938 1850 50  0001 C CNN
F 3 "~" H 4900 2000 50  0001 C CNN
	1    4900 2000
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0114
U 1 1 606114A3
P 4650 2100
F 0 "#PWR0114" H 4650 1850 50  0001 C CNN
F 1 "GND" H 4655 1927 50  0000 C CNN
F 2 "" H 4650 2100 50  0001 C CNN
F 3 "" H 4650 2100 50  0001 C CNN
	1    4650 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 2000 5050 2000
Wire Wire Line
	4750 2000 4650 2000
Wire Wire Line
	4650 2000 4650 2100
Wire Wire Line
	5750 4700 5750 4800
Wire Wire Line
	5850 4700 5850 4800
Wire Wire Line
	5750 1700 5750 900 
Wire Wire Line
	5850 900  5850 1700
$Comp
L Device:C C4
U 1 1 60681110
P 5450 1150
F 0 "C4" H 5565 1196 50  0000 L CNN
F 1 "100n" H 5565 1105 50  0000 L CNN
F 2 "My_Misc:C_Disc_D3.0mm_W1.6mm_P2.50mm_larg" H 5488 1000 50  0001 C CNN
F 3 "~" H 5450 1150 50  0001 C CNN
	1    5450 1150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 60682CC5
P 6150 1150
F 0 "C3" H 6265 1196 50  0000 L CNN
F 1 "100n" H 6265 1105 50  0000 L CNN
F 2 "My_Misc:C_Disc_D3.0mm_W1.6mm_P2.50mm_larg" H 6188 1000 50  0001 C CNN
F 3 "~" H 6150 1150 50  0001 C CNN
	1    6150 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 900  5450 1000
Wire Wire Line
	5450 900  5750 900 
Connection ~ 5750 900 
Wire Wire Line
	5850 900  6150 900 
Wire Wire Line
	6150 900  6150 1000
Connection ~ 5850 900 
$Comp
L power:GND #PWR0115
U 1 1 606CC2FE
P 5450 1400
F 0 "#PWR0115" H 5450 1150 50  0001 C CNN
F 1 "GND" H 5455 1227 50  0000 C CNN
F 2 "" H 5450 1400 50  0001 C CNN
F 3 "" H 5450 1400 50  0001 C CNN
	1    5450 1400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0116
U 1 1 606CCAB0
P 6150 1400
F 0 "#PWR0116" H 6150 1150 50  0001 C CNN
F 1 "GND" H 6155 1227 50  0000 C CNN
F 2 "" H 6150 1400 50  0001 C CNN
F 3 "" H 6150 1400 50  0001 C CNN
	1    6150 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 1300 5450 1400
Wire Wire Line
	6150 1400 6150 1300
Wire Wire Line
	5750 4800 5850 4800
$Comp
L power:GND #PWR0117
U 1 1 6070676F
P 5750 4900
F 0 "#PWR0117" H 5750 4650 50  0001 C CNN
F 1 "GND" H 5755 4727 50  0000 C CNN
F 2 "" H 5750 4900 50  0001 C CNN
F 3 "" H 5750 4900 50  0001 C CNN
	1    5750 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 4900 5750 4800
Connection ~ 5750 4800
Wire Wire Line
	5750 900  5850 900 
$Comp
L power:+5V #PWR0118
U 1 1 60724B03
P 5450 800
F 0 "#PWR0118" H 5450 650 50  0001 C CNN
F 1 "+5V" H 5465 973 50  0000 C CNN
F 2 "" H 5450 800 50  0001 C CNN
F 3 "" H 5450 800 50  0001 C CNN
	1    5450 800 
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 800  5450 900 
Connection ~ 5450 900 
$Comp
L Device:C C5
U 1 1 6074086B
P 2050 5750
F 0 "C5" H 2165 5796 50  0000 L CNN
F 1 "22p" H 2165 5705 50  0000 L CNN
F 2 "My_Misc:C_Disc_D3.0mm_W1.6mm_P2.50mm_larg" H 2088 5600 50  0001 C CNN
F 3 "~" H 2050 5750 50  0001 C CNN
	1    2050 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 5900 2050 6000
Text GLabel 1950 5150 0    50   Input ~ 0
XTAL1
Text GLabel 1950 4950 0    50   Input ~ 0
XTAL2
Wire Wire Line
	2050 5150 1950 5150
$Comp
L My_Parts:ST7735_1.8"_TFT_128x160 U1
U 1 1 607D3C3B
P 9150 4750
F 0 "U1" H 10075 4975 50  0000 C CNN
F 1 "ST7735_1.8\"_TFT_128x160" H 10075 4884 50  0000 C CNN
F 2 "My_Parts:ST7735_1.8_TFT_display_128x160_no-SD_large" H 9400 4875 50  0001 C CNN
F 3 "" H 9400 4875 50  0001 C CNN
	1    9150 4750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R24
U 1 1 607D5A2C
P 7300 4900
F 0 "R24" H 7370 4946 50  0000 L CNN
F 1 "220R" H 7370 4855 50  0000 L CNN
F 2 "My_Misc:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal_larger_pads" V 7230 4900 50  0001 C CNN
F 3 "~" H 7300 4900 50  0001 C CNN
	1    7300 4900
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0119
U 1 1 607D72A2
P 7300 4550
F 0 "#PWR0119" H 7300 4400 50  0001 C CNN
F 1 "+5V" H 7315 4723 50  0000 C CNN
F 2 "" H 7300 4550 50  0001 C CNN
F 3 "" H 7300 4550 50  0001 C CNN
	1    7300 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	9150 5450 7300 5450
Wire Wire Line
	7300 5450 7300 5050
Wire Wire Line
	7300 4750 7300 4650
Wire Wire Line
	7300 4650 8050 4650
Wire Wire Line
	8050 4650 8050 4750
Wire Wire Line
	8050 4750 9150 4750
Connection ~ 7300 4650
Wire Wire Line
	7300 4650 7300 4550
$Comp
L power:GND #PWR0120
U 1 1 608340DE
P 8050 6100
F 0 "#PWR0120" H 8050 5850 50  0001 C CNN
F 1 "GND" H 8055 5927 50  0000 C CNN
F 2 "" H 8050 6100 50  0001 C CNN
F 3 "" H 8050 6100 50  0001 C CNN
	1    8050 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	9150 4850 8050 4850
Wire Wire Line
	8050 4850 8050 4950
Wire Wire Line
	9150 4950 8050 4950
Connection ~ 8050 4950
Wire Wire Line
	8050 4950 8050 6000
$Comp
L Device:C C12
U 1 1 60853749
P 7700 5700
F 0 "C12" H 7815 5746 50  0000 L CNN
F 1 "100n" H 7815 5655 50  0000 L CNN
F 2 "My_Misc:C_Disc_D3.8mm_W2.6mm_P2.50mm_large" H 7738 5550 50  0001 C CNN
F 3 "~" H 7700 5700 50  0001 C CNN
	1    7700 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	8050 4750 7700 4750
Wire Wire Line
	7700 4750 7700 5550
Connection ~ 8050 4750
Wire Wire Line
	7700 5850 7700 6000
Wire Wire Line
	7700 6000 8050 6000
Connection ~ 8050 6000
Wire Wire Line
	8050 6000 8050 6100
Connection ~ 2050 5450
Wire Wire Line
	2050 5150 2050 5450
Wire Wire Line
	2050 5600 2050 5450
Wire Wire Line
	2300 6000 2550 6000
Connection ~ 2300 6000
Wire Wire Line
	2300 6100 2300 6000
$Comp
L power:GND #PWR0121
U 1 1 6079383C
P 2300 6100
F 0 "#PWR0121" H 2300 5850 50  0001 C CNN
F 1 "GND" H 2305 5927 50  0000 C CNN
F 2 "" H 2300 6100 50  0001 C CNN
F 3 "" H 2300 6100 50  0001 C CNN
	1    2300 6100
	1    0    0    -1  
$EndComp
Connection ~ 2550 5450
Wire Wire Line
	2550 4950 2550 5450
Wire Wire Line
	1950 4950 2550 4950
Wire Wire Line
	2550 5450 2550 5600
Wire Wire Line
	2450 5450 2550 5450
Wire Wire Line
	2050 5450 2150 5450
Wire Wire Line
	2550 6000 2550 5900
Wire Wire Line
	2050 6000 2300 6000
$Comp
L Device:C C6
U 1 1 607411F8
P 2550 5750
F 0 "C6" H 2665 5796 50  0000 L CNN
F 1 "22p" H 2665 5705 50  0000 L CNN
F 2 "My_Misc:C_Disc_D3.0mm_W1.6mm_P2.50mm_larg" H 2588 5600 50  0001 C CNN
F 3 "~" H 2550 5750 50  0001 C CNN
	1    2550 5750
	1    0    0    -1  
$EndComp
$Comp
L Device:Crystal Y1
U 1 1 6073F865
P 2300 5450
F 0 "Y1" H 2300 5718 50  0000 C CNN
F 1 "8MHz" H 2300 5627 50  0000 C CNN
F 2 "My_Misc:Crystal_HC49-4H_Vertical_large" H 2300 5450 50  0001 C CNN
F 3 "~" H 2300 5450 50  0001 C CNN
	1    2300 5450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R14
U 1 1 609E2B8D
P 9050 4400
F 0 "R14" H 9120 4446 50  0000 L CNN
F 1 "10k" H 9120 4355 50  0000 L CNN
F 2 "My_Misc:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal_larger_pads" V 8980 4400 50  0001 C CNN
F 3 "~" H 9050 4400 50  0001 C CNN
	1    9050 4400
	1    0    0    -1  
$EndComp
$Comp
L Device:R R21
U 1 1 609E62F4
P 8750 4400
F 0 "R21" H 8820 4446 50  0000 L CNN
F 1 "10k" H 8820 4355 50  0000 L CNN
F 2 "My_Misc:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal_larger_pads" V 8680 4400 50  0001 C CNN
F 3 "~" H 8750 4400 50  0001 C CNN
	1    8750 4400
	1    0    0    -1  
$EndComp
$Comp
L Device:R R22
U 1 1 609F6165
P 8450 4400
F 0 "R22" H 8520 4446 50  0000 L CNN
F 1 "10k" H 8520 4355 50  0000 L CNN
F 2 "My_Misc:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal_larger_pads" V 8380 4400 50  0001 C CNN
F 3 "~" H 8450 4400 50  0001 C CNN
	1    8450 4400
	1    0    0    -1  
$EndComp
$Comp
L Device:R R23
U 1 1 60A05DC3
P 8150 4400
F 0 "R23" H 8220 4446 50  0000 L CNN
F 1 "10k" H 8220 4355 50  0000 L CNN
F 2 "My_Misc:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal_larger_pads" V 8080 4400 50  0001 C CNN
F 3 "~" H 8150 4400 50  0001 C CNN
	1    8150 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	9050 5050 9150 5050
Wire Wire Line
	9150 5150 8750 5150
Wire Wire Line
	8750 5150 8750 4550
Wire Wire Line
	9150 5250 8450 5250
Wire Wire Line
	8450 5250 8450 4550
Wire Wire Line
	9150 5350 8150 5350
Wire Wire Line
	8150 5350 8150 4550
Wire Wire Line
	9050 4550 9050 5050
Text GLabel 9050 4150 1    50   Input ~ 0
RST
Text GLabel 8750 4150 1    50   Input ~ 0
A0
Text GLabel 8450 4150 1    50   Input ~ 0
SDA
Text GLabel 8150 4150 1    50   Input ~ 0
SCK
Wire Wire Line
	9050 4150 9050 4250
Wire Wire Line
	8750 4250 8750 4150
Wire Wire Line
	8450 4150 8450 4250
Wire Wire Line
	8150 4250 8150 4150
$Comp
L Connector:TestPoint TP1
U 1 1 60AE6C3E
P 6000 5650
F 0 "TP1" H 5942 5676 50  0000 R CNN
F 1 "TestPoint" H 5942 5767 50  0000 R CNN
F 2 "My_Parts:TestPoint_THTPad_4.0x4.0mm_Drill3.0mm" H 6200 5650 50  0001 C CNN
F 3 "~" H 6200 5650 50  0001 C CNN
	1    6000 5650
	-1   0    0    1   
$EndComp
$Comp
L Connector:TestPoint TP2
U 1 1 60B061B1
P 6000 6000
F 0 "TP2" H 5942 6026 50  0000 R CNN
F 1 "TestPoint" H 5942 6117 50  0000 R CNN
F 2 "My_Parts:TestPoint_THTPad_4.0x4.0mm_Drill3.0mm" H 6200 6000 50  0001 C CNN
F 3 "~" H 6200 6000 50  0001 C CNN
	1    6000 6000
	-1   0    0    1   
$EndComp
$Comp
L Connector:TestPoint TP3
U 1 1 60B26A22
P 6000 6350
F 0 "TP3" H 5942 6376 50  0000 R CNN
F 1 "TestPoint" H 5942 6467 50  0000 R CNN
F 2 "My_Parts:TestPoint_THTPad_4.0x4.0mm_Drill3.0mm" H 6200 6350 50  0001 C CNN
F 3 "~" H 6200 6350 50  0001 C CNN
	1    6000 6350
	-1   0    0    1   
$EndComp
$Comp
L Connector:TestPoint TP4
U 1 1 60B26A28
P 6000 6700
F 0 "TP4" H 5942 6726 50  0000 R CNN
F 1 "TestPoint" H 5942 6817 50  0000 R CNN
F 2 "My_Parts:TestPoint_THTPad_4.0x4.0mm_Drill3.0mm" H 6200 6700 50  0001 C CNN
F 3 "~" H 6200 6700 50  0001 C CNN
	1    6000 6700
	-1   0    0    1   
$EndComp
$Comp
L Connector:TestPoint TP5
U 1 1 60B3EF4C
P 6000 7050
F 0 "TP5" H 5942 7076 50  0000 R CNN
F 1 "TestPoint" H 5942 7167 50  0000 R CNN
F 2 "My_Parts:TestPoint_THTPad_4.0x4.0mm_Drill3.0mm" H 6200 7050 50  0001 C CNN
F 3 "~" H 6200 7050 50  0001 C CNN
	1    6000 7050
	-1   0    0    1   
$EndComp
$Comp
L Connector:TestPoint TP6
U 1 1 60B3EF52
P 6000 7400
F 0 "TP6" H 5942 7426 50  0000 R CNN
F 1 "TestPoint" H 5942 7517 50  0000 R CNN
F 2 "My_Parts:TestPoint_THTPad_4.0x4.0mm_Drill3.0mm" H 6200 7400 50  0001 C CNN
F 3 "~" H 6200 7400 50  0001 C CNN
	1    6000 7400
	-1   0    0    1   
$EndComp
Text GLabel 5800 5550 0    50   Input ~ 0
TP1
Text GLabel 5800 5900 0    50   Input ~ 0
TP2
Text GLabel 5800 6250 0    50   Input ~ 0
TP3
Text GLabel 5800 6600 0    50   Input ~ 0
TP4
Text GLabel 5800 6950 0    50   Input ~ 0
TP5
Text GLabel 5800 7300 0    50   Input ~ 0
TPGND
Wire Wire Line
	5800 5550 6000 5550
Wire Wire Line
	6000 5550 6000 5650
Wire Wire Line
	5800 5900 6000 5900
Wire Wire Line
	6000 5900 6000 6000
Wire Wire Line
	5800 6250 6000 6250
Wire Wire Line
	6000 6250 6000 6350
Wire Wire Line
	5800 6600 6000 6600
Wire Wire Line
	6000 6600 6000 6700
Wire Wire Line
	5800 6950 6000 6950
Wire Wire Line
	6000 6950 6000 7050
Wire Wire Line
	5800 7300 6000 7300
Wire Wire Line
	6000 7300 6000 7400
Wire Wire Line
	7300 3500 7300 3400
Connection ~ 7300 3400
Wire Wire Line
	7300 3800 7300 3900
Connection ~ 10350 3300
Connection ~ 9150 2900
Wire Wire Line
	6350 3100 10200 3100
$Comp
L power:GND #PWR0122
U 1 1 602ABD86
P 7800 3700
F 0 "#PWR0122" H 7800 3450 50  0001 C CNN
F 1 "GND" H 7805 3527 50  0000 C CNN
F 2 "" H 7800 3700 50  0001 C CNN
F 3 "" H 7800 3700 50  0001 C CNN
	1    7800 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	9150 3300 9150 2900
Wire Wire Line
	10350 3300 9150 3300
Wire Wire Line
	7600 3500 7600 3300
Connection ~ 7600 3300
Wire Wire Line
	7600 3300 7800 3300
Wire Wire Line
	7800 3600 7800 3700
$Comp
L Device:R R20
U 1 1 60E24FEA
P 7600 1300
F 0 "R20" H 7670 1346 50  0000 L CNN
F 1 "2k2" H 7670 1255 50  0000 L CNN
F 2 "My_Misc:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal_larger_pads" V 7530 1300 50  0001 C CNN
F 3 "~" H 7600 1300 50  0001 C CNN
	1    7600 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 1150 7600 1050
Wire Wire Line
	7600 1450 7600 3300
$Comp
L Regulator_Linear:L78L05_TO92 UC1
U 1 1 60F0F960
P 2250 3800
F 0 "UC1" H 2250 4042 50  0000 C CNN
F 1 "L78L05_TO92" H 2250 3951 50  0000 C CNN
F 2 "My_Misc:TO-92_Inline_Wide_large" H 2250 4025 50  0001 C CIN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/15/55/e5/aa/23/5b/43/fd/CD00000446.pdf/files/CD00000446.pdf/jcr:content/translations/en.CD00000446.pdf" H 2250 3750 50  0001 C CNN
	1    2250 3800
	1    0    0    -1  
$EndComp
$Comp
L Reference_Voltage:TL431LP UR1
U 1 1 60F5A224
P 7800 3500
F 0 "UR1" V 7846 3430 50  0000 R CNN
F 1 "TL431LP" V 7755 3430 50  0000 R CNN
F 2 "My_Misc:TO-92_Inline_Wide_large" H 7800 3350 50  0001 C CIN
F 3 "http://www.ti.com/lit/ds/symlink/tl431.pdf" H 7800 3500 50  0001 C CIN
	1    7800 3500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7700 3500 7600 3500
$Comp
L power:GND #PWR0123
U 1 1 61063A2F
P 4350 4600
F 0 "#PWR0123" H 4350 4350 50  0001 C CNN
F 1 "GND" H 4355 4427 50  0000 C CNN
F 2 "" H 4350 4600 50  0001 C CNN
F 3 "" H 4350 4600 50  0001 C CNN
	1    4350 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 4600 4350 4500
Connection ~ 4350 4500
Wire Wire Line
	3000 1550 3000 1650
Wire Wire Line
	3000 1650 2700 1650
Wire Wire Line
	3300 1550 3300 1650
Wire Wire Line
	3300 1650 3600 1650
Wire Wire Line
	3250 1900 3250 1650
Wire Wire Line
	3250 1650 3300 1650
Connection ~ 3300 1650
Wire Wire Line
	3050 1900 3050 1650
Wire Wire Line
	3050 1650 3000 1650
Connection ~ 3000 1650
$Comp
L power:GND #PWR0124
U 1 1 6117924B
P 3750 1900
F 0 "#PWR0124" H 3750 1650 50  0001 C CNN
F 1 "GND" H 3755 1727 50  0000 C CNN
F 2 "" H 3750 1900 50  0001 C CNN
F 3 "" H 3750 1900 50  0001 C CNN
	1    3750 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 1900 3150 1800
Wire Wire Line
	3150 1800 3750 1800
Wire Wire Line
	3750 1800 3750 1900
$Comp
L My_Headers:3-pin_test_header J4
U 1 1 611C0206
P 10200 6000
F 0 "J4" H 10163 6233 50  0000 C CNN
F 1 "3-pin_test_header" H 10200 5800 50  0001 C CNN
F 2 "My_Parts:3-pad_SMD_test-pad" H 10250 5700 50  0001 C CNN
F 3 "~" H 10200 6000 50  0001 C CNN
	1    10200 6000
	-1   0    0    -1  
$EndComp
Text GLabel 10500 5900 2    50   Input ~ 0
TP3
Text GLabel 10500 6000 2    50   Input ~ 0
TP2
Text GLabel 10500 6100 2    50   Input ~ 0
TP1
Wire Wire Line
	10500 5900 10400 5900
Wire Wire Line
	10500 6000 10400 6000
Wire Wire Line
	10500 6100 10400 6100
Text Notes 10200 6300 0    50   ~ 0
SMD test pad
NoConn ~ 1150 2750
NoConn ~ 11000 4950
NoConn ~ 11000 5050
NoConn ~ 11000 5150
NoConn ~ 11000 5250
NoConn ~ 6350 4200
NoConn ~ 2650 6650
$EndSCHEMATC
