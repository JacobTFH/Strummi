EESchema Schematic File Version 4
LIBS:Strummi-cache
EELAYER 26 0
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
L BelaMini:BelaMini_headers U1
U 1 1 5C6C2300
P 5350 4300
F 0 "U1" H 5337 5615 50  0000 C CNN
F 1 "BelaMini_headers" H 5337 5524 50  0000 C CNN
F 2 "BelaMini:BelaMini_headers_reverse" H 5100 5200 50  0001 C CNN
F 3 "" H 5100 5200 50  0001 C CNN
	1    5350 4300
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x12_Female J4
U 1 1 5C6C23B7
P 10350 1800
F 0 "J4" H 10377 1776 50  0000 L CNN
F 1 "Conn_01x12_Female" H 10377 1685 50  0000 L CNN
F 2 "Connectors_Molex:Molex_KK-6410-12_12x2.54mm_Straight" H 10350 1800 50  0001 C CNN
F 3 "~" H 10350 1800 50  0001 C CNN
	1    10350 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	10150 2000 9450 2000
Wire Wire Line
	10150 2200 9450 2200
Wire Wire Line
	10150 1600 9450 1600
Wire Wire Line
	10150 1800 9450 1800
Wire Wire Line
	10150 2400 9450 2400
Wire Wire Line
	10150 1400 9450 1400
Text Label 9450 1500 0    50   ~ 0
Piezo1_A
Text Label 9450 1600 0    50   ~ 0
Piezo1_B
Text Label 9450 1700 0    50   ~ 0
Piezo2_A
Text Label 9450 1800 0    50   ~ 0
Piezo2_B
Text Label 9450 1900 0    50   ~ 0
Piezo3_A
Text Label 9450 2000 0    50   ~ 0
Piezo3_B
Text Label 9450 1300 0    50   ~ 0
Piezo0_A
Text Label 9450 1400 0    50   ~ 0
Piezo0_B
Text Label 9450 2100 0    50   ~ 0
Piezo4_A
Text Label 9450 2200 0    50   ~ 0
Piezo4_B
Text Label 9450 2300 0    50   ~ 0
Piezo5_A
Text Label 9450 2400 0    50   ~ 0
Piezo5_B
$Comp
L device:R R10
U 1 1 5C6C2CF6
P 7850 2400
F 0 "R10" H 7920 2446 50  0000 L CNN
F 1 "R" H 7920 2355 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 7780 2400 50  0001 C CNN
F 3 "~" H 7850 2400 50  0001 C CNN
	1    7850 2400
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR0101
U 1 1 5C6C2DA8
P 7850 2850
F 0 "#PWR0101" H 7850 2600 50  0001 C CNN
F 1 "GNDA" H 7855 2677 50  0000 C CNN
F 2 "" H 7850 2850 50  0001 C CNN
F 3 "" H 7850 2850 50  0001 C CNN
	1    7850 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	7850 2550 7850 2750
$Comp
L power:GNDA #PWR0102
U 1 1 5C6C2EFD
P 6150 5500
F 0 "#PWR0102" H 6150 5250 50  0001 C CNN
F 1 "GNDA" H 6155 5327 50  0000 C CNN
F 2 "" H 6150 5500 50  0001 C CNN
F 3 "" H 6150 5500 50  0001 C CNN
	1    6150 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 5400 6150 5400
Wire Wire Line
	6150 5400 6150 5500
$Comp
L device:R R12
U 1 1 5C6C3754
P 8000 2400
F 0 "R12" H 8070 2446 50  0000 L CNN
F 1 "R" H 8070 2355 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 7930 2400 50  0001 C CNN
F 3 "~" H 8000 2400 50  0001 C CNN
	1    8000 2400
	1    0    0    -1  
$EndComp
$Comp
L device:R R14
U 1 1 5C6C3915
P 8150 2400
F 0 "R14" H 8220 2446 50  0000 L CNN
F 1 "R" H 8220 2355 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 8080 2400 50  0001 C CNN
F 3 "~" H 8150 2400 50  0001 C CNN
	1    8150 2400
	1    0    0    -1  
$EndComp
$Comp
L device:R R16
U 1 1 5C6C3D07
P 8300 2400
F 0 "R16" H 8370 2446 50  0000 L CNN
F 1 "R" H 8370 2355 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 8230 2400 50  0001 C CNN
F 3 "~" H 8300 2400 50  0001 C CNN
	1    8300 2400
	1    0    0    -1  
$EndComp
$Comp
L device:R R18
U 1 1 5C6C3F1D
P 8450 2400
F 0 "R18" H 8520 2446 50  0000 L CNN
F 1 "R" H 8520 2355 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 8380 2400 50  0001 C CNN
F 3 "~" H 8450 2400 50  0001 C CNN
	1    8450 2400
	1    0    0    -1  
$EndComp
$Comp
L device:R R20
U 1 1 5C6C416A
P 8600 2400
F 0 "R20" H 8670 2446 50  0000 L CNN
F 1 "R" H 8670 2355 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 8530 2400 50  0001 C CNN
F 3 "~" H 8600 2400 50  0001 C CNN
	1    8600 2400
	1    0    0    -1  
$EndComp
$Comp
L device:R R19
U 1 1 5C6CB8F8
P 8600 1500
F 0 "R19" H 8670 1546 50  0000 L CNN
F 1 "R" H 8670 1455 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 8530 1500 50  0001 C CNN
F 3 "~" H 8600 1500 50  0001 C CNN
	1    8600 1500
	-1   0    0    1   
$EndComp
$Comp
L device:R R17
U 1 1 5C6CB907
P 8450 1500
F 0 "R17" H 8520 1546 50  0000 L CNN
F 1 "R" H 8520 1455 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 8380 1500 50  0001 C CNN
F 3 "~" H 8450 1500 50  0001 C CNN
	1    8450 1500
	-1   0    0    1   
$EndComp
$Comp
L device:R R15
U 1 1 5C6CB916
P 8300 1500
F 0 "R15" H 8370 1546 50  0000 L CNN
F 1 "R" H 8370 1455 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 8230 1500 50  0001 C CNN
F 3 "~" H 8300 1500 50  0001 C CNN
	1    8300 1500
	-1   0    0    1   
$EndComp
$Comp
L device:R R13
U 1 1 5C6CB925
P 8150 1500
F 0 "R13" H 8220 1546 50  0000 L CNN
F 1 "R" H 8220 1455 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 8080 1500 50  0001 C CNN
F 3 "~" H 8150 1500 50  0001 C CNN
	1    8150 1500
	-1   0    0    1   
$EndComp
$Comp
L device:R R11
U 1 1 5C6CB934
P 8000 1500
F 0 "R11" H 8070 1546 50  0000 L CNN
F 1 "R" H 8070 1455 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 7930 1500 50  0001 C CNN
F 3 "~" H 8000 1500 50  0001 C CNN
	1    8000 1500
	-1   0    0    1   
$EndComp
$Comp
L device:R R9
U 1 1 5C6CB943
P 7850 1500
F 0 "R9" H 7920 1546 50  0000 L CNN
F 1 "R" H 7920 1455 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 7780 1500 50  0001 C CNN
F 3 "~" H 7850 1500 50  0001 C CNN
	1    7850 1500
	-1   0    0    1   
$EndComp
Wire Wire Line
	7850 1350 7850 1200
Wire Wire Line
	7850 1650 7850 1700
Wire Wire Line
	8000 1650 8000 1800
Wire Wire Line
	7850 1700 7600 1700
$Comp
L power:GNDA #PWR0103
U 1 1 5C6D3E21
P 9200 2600
F 0 "#PWR0103" H 9200 2350 50  0001 C CNN
F 1 "GNDA" H 9205 2427 50  0000 C CNN
F 2 "" H 9200 2600 50  0001 C CNN
F 3 "" H 9200 2600 50  0001 C CNN
	1    9200 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	9200 2300 9200 2600
Wire Wire Line
	9200 2300 10150 2300
Wire Wire Line
	9200 2300 9200 2100
Wire Wire Line
	9200 2100 10150 2100
Connection ~ 9200 2300
Wire Wire Line
	9200 1900 9200 2100
Wire Wire Line
	9200 1900 10150 1900
Connection ~ 9200 2100
Wire Wire Line
	9200 1700 9200 1900
Wire Wire Line
	9200 1700 10150 1700
Connection ~ 9200 1900
Wire Wire Line
	9200 1500 9200 1700
Wire Wire Line
	9200 1500 10150 1500
Connection ~ 9200 1700
Wire Wire Line
	9200 1300 9200 1500
Wire Wire Line
	9200 1300 10150 1300
Connection ~ 9200 1500
Text Label 7600 1700 2    50   ~ 0
Piezo0_B
Text Label 7600 1800 2    50   ~ 0
Piezo1_B
Text Label 7600 1900 2    50   ~ 0
Piezo2_B
Text Label 7600 2000 2    50   ~ 0
Piezo3_B
Text Label 7600 2100 2    50   ~ 0
Piezo4_B
Text Label 7600 2200 2    50   ~ 0
Piezo5_B
Wire Wire Line
	6000 5150 6600 5150
Wire Wire Line
	6000 5100 6600 5100
Wire Wire Line
	6000 5050 6600 5050
Wire Wire Line
	6000 5000 6600 5000
Wire Wire Line
	6000 5200 6600 5200
Wire Wire Line
	6000 5250 6600 5250
Text Label 6600 5000 0    50   ~ 0
Piezo0_B
Text Label 6600 5050 0    50   ~ 0
Piezo1_B
Text Label 6600 5100 0    50   ~ 0
Piezo2_B
Text Label 6600 5150 0    50   ~ 0
Piezo3_B
Text Label 6600 5200 0    50   ~ 0
Piezo4_B
Text Label 6600 5250 0    50   ~ 0
Piezo5_B
Connection ~ 7850 1700
Wire Wire Line
	7850 1700 7850 2250
Wire Wire Line
	7600 1800 8000 1800
Wire Wire Line
	8150 1650 8150 1900
Wire Wire Line
	8000 1800 8000 2250
Connection ~ 8000 1800
Wire Wire Line
	7600 1900 8150 1900
Connection ~ 8150 1900
Wire Wire Line
	8150 1900 8150 2250
Wire Wire Line
	8300 1650 8300 2000
Wire Wire Line
	8300 2000 7600 2000
Connection ~ 8300 2000
Wire Wire Line
	8300 2000 8300 2250
Wire Wire Line
	8450 1650 8450 2100
Wire Wire Line
	7600 2100 8450 2100
Connection ~ 8450 2100
Wire Wire Line
	8450 2100 8450 2250
Wire Wire Line
	8600 1650 8600 2200
Wire Wire Line
	7600 2200 8600 2200
Connection ~ 8600 2200
Wire Wire Line
	8600 2200 8600 2250
$Comp
L Connector:Conn_01x09_Female J2
U 1 1 5C6FE188
P 1350 1900
F 0 "J2" H 1244 2485 50  0000 C CNN
F 1 "Conn_01x09_Female" H 1244 2394 50  0000 C CNN
F 2 "Connectors_Molex:Molex_KK-6410-09_09x2.54mm_Straight" H 1350 1900 50  0001 C CNN
F 3 "~" H 1350 1900 50  0001 C CNN
	1    1350 1900
	-1   0    0    1   
$EndComp
$Comp
L power:GNDD #PWR0104
U 1 1 5C701118
P 1850 2550
F 0 "#PWR0104" H 1850 2300 50  0001 C CNN
F 1 "GNDD" H 1854 2395 50  0000 C CNN
F 2 "" H 1850 2550 50  0001 C CNN
F 3 "" H 1850 2550 50  0001 C CNN
	1    1850 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 1500 1850 1500
Wire Wire Line
	1850 1500 1850 2550
Wire Wire Line
	1550 1600 2100 1600
Wire Wire Line
	1550 1700 2100 1700
Wire Wire Line
	1550 1800 2100 1800
Wire Wire Line
	1550 1900 2100 1900
Wire Wire Line
	1550 2000 2100 2000
Wire Wire Line
	1550 2100 2100 2100
Wire Wire Line
	1550 2200 2100 2200
Wire Wire Line
	1550 2300 2100 2300
Text Label 2100 1600 0    50   ~ 0
Button0
Text Label 2100 1700 0    50   ~ 0
Button1
Text Label 2100 1800 0    50   ~ 0
Button2
Text Label 2100 1900 0    50   ~ 0
Button3
Text Label 2100 2000 0    50   ~ 0
Button4
Text Label 2100 2100 0    50   ~ 0
Button5
Text Label 2100 2200 0    50   ~ 0
Button6
Text Label 2100 2300 0    50   ~ 0
Button7
Wire Wire Line
	7850 1200 8000 1200
Wire Wire Line
	8600 1200 8600 1350
Connection ~ 7850 1200
Wire Wire Line
	7850 1200 7850 1100
Wire Wire Line
	8450 1350 8450 1200
Connection ~ 8450 1200
Wire Wire Line
	8450 1200 8600 1200
Wire Wire Line
	8300 1350 8300 1200
Connection ~ 8300 1200
Wire Wire Line
	8300 1200 8450 1200
Wire Wire Line
	8150 1350 8150 1200
Connection ~ 8150 1200
Wire Wire Line
	8150 1200 8300 1200
Wire Wire Line
	8000 1350 8000 1200
Connection ~ 8000 1200
Wire Wire Line
	8000 1200 8150 1200
Wire Wire Line
	7850 2750 8000 2750
Wire Wire Line
	8600 2750 8600 2550
Connection ~ 7850 2750
Wire Wire Line
	7850 2750 7850 2850
Wire Wire Line
	8000 2550 8000 2750
Connection ~ 8000 2750
Wire Wire Line
	8000 2750 8150 2750
Wire Wire Line
	8150 2550 8150 2750
Connection ~ 8150 2750
Wire Wire Line
	8150 2750 8300 2750
Wire Wire Line
	8300 2550 8300 2750
Connection ~ 8300 2750
Wire Wire Line
	8300 2750 8450 2750
Wire Wire Line
	8450 2550 8450 2750
Connection ~ 8450 2750
Wire Wire Line
	8450 2750 8600 2750
$Comp
L device:R R6
U 1 1 5C73768E
P 2950 2100
F 0 "R6" H 3020 2146 50  0000 L CNN
F 1 "R" H 3020 2055 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 2880 2100 50  0001 C CNN
F 3 "~" H 2950 2100 50  0001 C CNN
	1    2950 2100
	0    1    -1   0   
$EndComp
$Comp
L device:R R5
U 1 1 5C737695
P 2950 1950
F 0 "R5" H 3020 1996 50  0000 L CNN
F 1 "R" H 3020 1905 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 2880 1950 50  0001 C CNN
F 3 "~" H 2950 1950 50  0001 C CNN
	1    2950 1950
	0    1    -1   0   
$EndComp
$Comp
L device:R R4
U 1 1 5C73769C
P 2950 1800
F 0 "R4" H 3020 1846 50  0000 L CNN
F 1 "R" H 3020 1755 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 2880 1800 50  0001 C CNN
F 3 "~" H 2950 1800 50  0001 C CNN
	1    2950 1800
	0    1    -1   0   
$EndComp
$Comp
L device:R R3
U 1 1 5C7376A3
P 2950 1650
F 0 "R3" H 3020 1696 50  0000 L CNN
F 1 "R" H 3020 1605 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 2880 1650 50  0001 C CNN
F 3 "~" H 2950 1650 50  0001 C CNN
	1    2950 1650
	0    1    -1   0   
$EndComp
$Comp
L device:R R2
U 1 1 5C7376AA
P 2950 1500
F 0 "R2" H 3020 1546 50  0000 L CNN
F 1 "R" H 3020 1455 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 2880 1500 50  0001 C CNN
F 3 "~" H 2950 1500 50  0001 C CNN
	1    2950 1500
	0    1    -1   0   
$EndComp
$Comp
L device:R R1
U 1 1 5C7376B1
P 2950 1350
F 0 "R1" H 3020 1396 50  0000 L CNN
F 1 "R" H 3020 1305 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 2880 1350 50  0001 C CNN
F 3 "~" H 2950 1350 50  0001 C CNN
	1    2950 1350
	0    1    -1   0   
$EndComp
Wire Wire Line
	2800 1350 2550 1350
Wire Wire Line
	2550 2100 2800 2100
Wire Wire Line
	2800 1950 2550 1950
Wire Wire Line
	2800 1800 2550 1800
Wire Wire Line
	2800 1650 2550 1650
Wire Wire Line
	2800 1500 2550 1500
Wire Wire Line
	3100 1350 3350 1350
Wire Wire Line
	3100 1500 3350 1500
Wire Wire Line
	3100 1650 3350 1650
Wire Wire Line
	3100 1800 3350 1800
Wire Wire Line
	3100 1950 3350 1950
Wire Wire Line
	3100 2100 3350 2100
Text Label 3350 1350 0    50   ~ 0
Button0
Text Label 3350 1500 0    50   ~ 0
Button1
Text Label 3350 1650 0    50   ~ 0
Button2
Text Label 3350 1800 0    50   ~ 0
Button3
Text Label 3350 1950 0    50   ~ 0
Button4
Text Label 3350 2100 0    50   ~ 0
Button5
Text Label 3350 2250 0    50   ~ 0
Button6
Text Label 3350 2400 0    50   ~ 0
Button7
$Comp
L device:R R8
U 1 1 5C77A685
P 2950 2400
F 0 "R8" H 3020 2446 50  0000 L CNN
F 1 "R" H 3020 2355 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 2880 2400 50  0001 C CNN
F 3 "~" H 2950 2400 50  0001 C CNN
	1    2950 2400
	0    1    -1   0   
$EndComp
$Comp
L device:R R7
U 1 1 5C77A68C
P 2950 2250
F 0 "R7" H 3020 2296 50  0000 L CNN
F 1 "R" H 3020 2205 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 2880 2250 50  0001 C CNN
F 3 "~" H 2950 2250 50  0001 C CNN
	1    2950 2250
	0    1    -1   0   
$EndComp
Wire Wire Line
	2550 2400 2800 2400
Wire Wire Line
	2800 2250 2550 2250
Wire Wire Line
	3100 2250 3350 2250
Wire Wire Line
	3100 2400 3350 2400
Connection ~ 2550 2250
Wire Wire Line
	2550 2250 2550 2400
Wire Wire Line
	2550 2100 2550 2250
Wire Wire Line
	2550 1950 2550 2100
Connection ~ 2550 1800
Wire Wire Line
	2550 1500 2550 1650
Connection ~ 2550 1350
Connection ~ 2550 1950
Connection ~ 2550 1650
Wire Wire Line
	2550 1800 2550 1950
Wire Wire Line
	2550 1650 2550 1800
Connection ~ 2550 1500
Wire Wire Line
	2550 1350 2550 1500
Wire Wire Line
	2550 1350 2550 1150
Connection ~ 2550 2100
$Comp
L power:+3.3V #PWR0105
U 1 1 5C7ADFE7
P 4200 3650
F 0 "#PWR0105" H 4200 3500 50  0001 C CNN
F 1 "+3.3V" H 4215 3823 50  0000 C CNN
F 2 "" H 4200 3650 50  0001 C CNN
F 3 "" H 4200 3650 50  0001 C CNN
	1    4200 3650
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0106
U 1 1 5C7BAC99
P 7850 1100
F 0 "#PWR0106" H 7850 950 50  0001 C CNN
F 1 "+3.3V" H 7865 1273 50  0000 C CNN
F 2 "" H 7850 1100 50  0001 C CNN
F 3 "" H 7850 1100 50  0001 C CNN
	1    7850 1100
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0107
U 1 1 5C7BADFD
P 2550 1150
F 0 "#PWR0107" H 2550 1000 50  0001 C CNN
F 1 "+3.3V" H 2565 1323 50  0000 C CNN
F 2 "" H 2550 1150 50  0001 C CNN
F 3 "" H 2550 1150 50  0001 C CNN
	1    2550 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 3950 4200 3950
Wire Wire Line
	4200 3950 4200 3650
Wire Wire Line
	6000 3300 6250 3300
Wire Wire Line
	6000 3350 6250 3350
Wire Wire Line
	6000 3450 6250 3450
Wire Wire Line
	6000 3550 6250 3550
Wire Wire Line
	6000 3650 6250 3650
Wire Wire Line
	6000 3750 6250 3750
Wire Wire Line
	6000 4150 6250 4150
Wire Wire Line
	6000 4250 6250 4250
Wire Wire Line
	6000 4350 6250 4350
Wire Wire Line
	6000 4450 6250 4450
Wire Wire Line
	6000 4800 6250 4800
Wire Wire Line
	6000 4500 6250 4500
Wire Wire Line
	6000 4600 6250 4600
Wire Wire Line
	6000 4400 6600 4400
Wire Wire Line
	6600 4400 6600 4000
$Comp
L power:+3.3V #PWR0108
U 1 1 5C80073C
P 6600 4000
F 0 "#PWR0108" H 6600 3850 50  0001 C CNN
F 1 "+3.3V" H 6615 4173 50  0000 C CNN
F 2 "" H 6600 4000 50  0001 C CNN
F 3 "" H 6600 4000 50  0001 C CNN
	1    6600 4000
	1    0    0    -1  
$EndComp
Text Label 6250 3300 0    50   ~ 0
Button0
Text Label 6250 3350 0    50   ~ 0
Button1
Text Label 6250 3450 0    50   ~ 0
Button2
Text Label 6250 3550 0    50   ~ 0
Button3
Text Label 6250 3650 0    50   ~ 0
Button4
Text Label 6250 3750 0    50   ~ 0
Button5
Text Label 6250 4150 0    50   ~ 0
Button6
Text Label 6250 4250 0    50   ~ 0
Button7
Text Label 6250 4350 0    50   ~ 0
D8
Text Label 6250 4450 0    50   ~ 0
D9
Text Label 6250 4500 0    50   ~ 0
D10
Text Label 6250 4600 0    50   ~ 0
D11
Text Label 6250 4800 0    50   ~ 0
D12
Wire Wire Line
	4700 4750 4400 4750
Wire Wire Line
	4700 4650 4400 4650
Text Label 4400 4650 2    50   ~ 0
D15
Text Label 4400 4750 2    50   ~ 0
D14
Text Label 4400 4800 2    50   ~ 0
D13
Wire Wire Line
	4700 4800 4400 4800
Wire Wire Line
	1450 5300 1850 5300
Text Label 1850 6000 0    50   ~ 0
D8
Wire Wire Line
	1450 5400 1850 5400
Text Label 1850 5800 0    50   ~ 0
D9
Wire Wire Line
	1450 5500 1850 5500
Text Label 1850 5600 0    50   ~ 0
D10
Wire Wire Line
	1450 5600 1850 5600
Text Label 1850 5400 0    50   ~ 0
D11
Wire Wire Line
	1450 5700 1850 5700
Text Label 1850 5300 0    50   ~ 0
D12
Wire Wire Line
	1450 5800 1850 5800
Text Label 1850 5500 0    50   ~ 0
D13
Wire Wire Line
	1450 5900 1850 5900
Text Label 1850 5700 0    50   ~ 0
D14
Wire Wire Line
	1450 6000 1850 6000
Text Label 1850 5900 0    50   ~ 0
D15
Wire Wire Line
	2350 6200 2350 5950
Wire Wire Line
	1450 6100 2250 6100
Wire Wire Line
	2250 6100 2250 6350
$Comp
L power:GNDD #PWR0109
U 1 1 5C859703
P 2250 6350
F 0 "#PWR0109" H 2250 6100 50  0001 C CNN
F 1 "GNDD" H 2254 6195 50  0000 C CNN
F 2 "" H 2250 6350 50  0001 C CNN
F 3 "" H 2250 6350 50  0001 C CNN
	1    2250 6350
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0110
U 1 1 5C85973E
P 2350 5950
F 0 "#PWR0110" H 2350 5800 50  0001 C CNN
F 1 "+3.3V" H 2365 6123 50  0000 C CNN
F 2 "" H 2350 5950 50  0001 C CNN
F 3 "" H 2350 5950 50  0001 C CNN
	1    2350 5950
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x10_Female J1
U 1 1 5C79FE0D
P 1250 5800
F 0 "J1" H 1144 5075 50  0000 C CNN
F 1 "Conn_01x10_Female" H 1144 5166 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x05_Pitch2.54mm" H 1250 5800 50  0001 C CNN
F 3 "~" H 1250 5800 50  0001 C CNN
	1    1250 5800
	-1   0    0    1   
$EndComp
Wire Wire Line
	1450 6200 2350 6200
$Comp
L Connector:Conn_01x04_Female J5
U 1 1 5C80CC4B
P 1250 4300
F 0 "J5" H 1144 3875 50  0000 C CNN
F 1 "Conn_01x04_Female" H 1144 3966 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04_Pitch2.54mm" H 1250 4300 50  0001 C CNN
F 3 "~" H 1250 4300 50  0001 C CNN
	1    1250 4300
	-1   0    0    1   
$EndComp
Wire Wire Line
	2350 4400 2350 4150
Wire Wire Line
	1450 4300 2250 4300
Wire Wire Line
	2250 4300 2250 4550
$Comp
L power:+3.3V #PWR0112
U 1 1 5C81A982
P 2350 4150
F 0 "#PWR0112" H 2350 4000 50  0001 C CNN
F 1 "+3.3V" H 2365 4323 50  0000 C CNN
F 2 "" H 2350 4150 50  0001 C CNN
F 3 "" H 2350 4150 50  0001 C CNN
	1    2350 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 4400 2350 4400
Wire Wire Line
	1450 4100 1850 4100
Wire Wire Line
	1450 4200 1850 4200
Text Label 1850 4100 0    50   ~ 0
A7
Text Label 1850 4200 0    50   ~ 0
A6
Wire Wire Line
	6000 5300 6300 5300
Wire Wire Line
	6000 5350 6300 5350
Text Label 6300 5300 0    50   ~ 0
A6
Text Label 6300 5350 0    50   ~ 0
A7
$Comp
L Connector:Conn_01x03_Female J6
U 1 1 5C84F408
P 3750 5250
F 0 "J6" H 3644 5535 50  0000 C CNN
F 1 "Conn_01x03_Female" H 3644 5444 50  0000 C CNN
F 2 "Connectors_Molex:Molex_KK-6410-03_03x2.54mm_Straight" H 3750 5250 50  0001 C CNN
F 3 "~" H 3750 5250 50  0001 C CNN
	1    3750 5250
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4500 5200 4700 5200
Wire Wire Line
	3950 5150 4500 5150
$Comp
L power:GNDA #PWR0111
U 1 1 5C880E53
P 2250 4550
F 0 "#PWR0111" H 2250 4300 50  0001 C CNN
F 1 "GNDA" H 2255 4377 50  0000 C CNN
F 2 "" H 2250 4550 50  0001 C CNN
F 3 "" H 2250 4550 50  0001 C CNN
	1    2250 4550
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR0113
U 1 1 5C8927B6
P 2650 3100
F 0 "#PWR0113" H 2650 2850 50  0001 C CNN
F 1 "GNDD" H 2654 2945 50  0000 C CNN
F 2 "" H 2650 3100 50  0001 C CNN
F 3 "" H 2650 3100 50  0001 C CNN
	1    2650 3100
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR0114
U 1 1 5C89AEF6
P 2950 3100
F 0 "#PWR0114" H 2950 2850 50  0001 C CNN
F 1 "GNDA" H 2955 2927 50  0000 C CNN
F 2 "" H 2950 3100 50  0001 C CNN
F 3 "" H 2950 3100 50  0001 C CNN
	1    2950 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 3100 2950 2850
Wire Wire Line
	2950 2850 2650 2850
Wire Wire Line
	2650 2850 2650 3100
Wire Wire Line
	4500 5150 4500 5200
Wire Wire Line
	3950 5250 4700 5250
Wire Wire Line
	4500 5350 4500 5300
Wire Wire Line
	4500 5300 4700 5300
Wire Wire Line
	3950 5350 4500 5350
$EndSCHEMATC
