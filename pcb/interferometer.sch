EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Self mixing interferometer"
Date "2020-05-14"
Rev "2"
Comp ""
Comment1 "Author: Alois Kiogora Mbutura"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L interferometer-rescue:Laserdiode_N_TYPE LD1
U 1 1 5919F1C9
P 1900 1715
F 0 "LD1" V 2485 1665 50  0000 L CNN
F 1 "Laserdiode_N_TYPE (2.2-2.5v)" V 2585 1365 50  0000 L CNN
F 2 "ADN8810ACPZ:ADL-65055TL" H 1900 1790 50  0001 C CNN
F 3 "https://www.lasercomponents.com/fileadmin/user_upload/home/Datasheets/arima/655nm/adl-65055tl.pdf" H 1950 1615 50  0001 C CNN
F 4 "LASER COMPONENTS" H 1900 1715 50  0001 C CNN "Manufacturer_Name"
F 5 "ADL-65055TL" H 1900 1715 50  0001 C CNN "Manufacturer_Part_Number"
F 6 "ADL-65055TL" H 1900 1715 50  0001 C CNN "manf#"
	1    1900 1715
	0    1    1    0   
$EndComp
Text Label 1550 2165 0    60   ~ 0
PD
Text Label 2250 2165 2    60   ~ 0
LD
$Comp
L interferometer-rescue:ARDUINO_SHIELD SHIELD1
U 1 1 5919FE34
P 5250 2300
F 0 "SHIELD1" H 5250 2500 60  0000 C CNN
F 1 "ARDUINO_SHIELD" H 5300 2300 60  0000 C CNN
F 2 "freetronics_footprints:ARDUINO_SHIELD" H 5250 2100 50  0001 C CNN
F 3 "" H 5250 2300 60  0000 C CNN
	1    5250 2300
	1    0    0    -1  
$EndComp
Text Label 3150 2100 0    60   ~ 0
5v
Text Label 3550 2000 2    60   ~ 0
3v3
Text Label 6550 1900 0    60   ~ 0
MOSI
Text Label 6550 1700 0    60   ~ 0
SCK
Text Label 7050 2000 0    60   ~ 0
~CS
Text Label 4050 2600 0    60   ~ 0
A0
Text Notes 7200 3340 2    60   ~ 0
Arduino form-factor shield
Text Notes 3040 3340 2    60   ~ 0
N-type/Common anode to VDD LD-PD package
Text Label 6550 2400 0    60   ~ 0
~laser_standby
Text Label 6550 2600 0    60   ~ 0
~laser_reset
Text Label 6550 2700 0    60   ~ 0
ADDR0
Text Label 6550 2800 0    60   ~ 0
ADDR1
Text Label 6550 2900 0    60   ~ 0
ADDR2
Text Notes 11220 3340 2    60   ~ 0
Laser driver
Text Label 2150 1365 0    60   ~ 0
5v
NoConn ~ 10000 1800
NoConn ~ 10000 1900
Text Label 3850 2300 1    60   ~ 0
GND
Text Label 6550 1600 0    60   ~ 0
GND
Text Label 2450 3900 1    60   ~ 0
GND
$Comp
L interferometer-rescue:GNDA #PWR01
U 1 1 591C35DD
P 2250 4350
F 0 "#PWR01" H 2250 4100 50  0001 C CNN
F 1 "GNDA" H 2255 4177 50  0000 C CNN
F 2 "" H 2250 4350 50  0001 C CNN
F 3 "" H 2250 4350 50  0001 C CNN
	1    2250 4350
	1    0    0    -1  
$EndComp
Text Notes 3040 4740 2    60   ~ 0
Analog and digital grounds
$Comp
L interferometer-rescue:C C1
U 1 1 591C3B82
P 8750 850
F 0 "C1" H 8450 900 50  0000 L CNN
F 1 "0.1uF" H 8450 800 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 8788 700 50  0001 C CNN
F 3 "" H 8750 850 50  0001 C CNN
F 4 "Samsung Electro-Mechanics" H 8750 850 50  0001 C CNN "Manufacturer_Name"
F 5 "CL21B104JBCNNNC" H 8750 850 50  0001 C CNN "Manufacturer_Part_Number"
F 6 "CL21B104JBCNNNC" H 8750 850 50  0001 C CNN "manf#"
	1    8750 850 
	1    0    0    -1  
$EndComp
Text Notes 5900 6535 2    60   ~ 0
4.096v voltage reference
$Comp
L interferometer-rescue:Earth #PWR02
U 1 1 591C415F
P 2650 4350
F 0 "#PWR02" H 2650 4100 50  0001 C CNN
F 1 "Earth" H 2650 4200 50  0001 C CNN
F 2 "" H 2650 4350 50  0001 C CNN
F 3 "" H 2650 4350 50  0001 C CNN
	1    2650 4350
	1    0    0    -1  
$EndComp
Text Label 1350 3900 0    60   ~ 0
AVSS
$Comp
L interferometer-rescue:C C8
U 1 1 591C4360
P 1150 4200
F 0 "C8" H 1265 4246 50  0000 L CNN
F 1 "22uF" H 1265 4155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1188 4050 50  0001 C CNN
F 3 "" H 1150 4200 50  0001 C CNN
	1    1150 4200
	1    0    0    -1  
$EndComp
$Comp
L interferometer-rescue:GNDA #PWR03
U 1 1 591C43D1
P 1150 4350
F 0 "#PWR03" H 1150 4100 50  0001 C CNN
F 1 "GNDA" H 1155 4177 50  0000 C CNN
F 2 "" H 1150 4350 50  0001 C CNN
F 3 "" H 1150 4350 50  0001 C CNN
	1    1150 4350
	1    0    0    -1  
$EndComp
$Comp
L interferometer-rescue:C C3
U 1 1 591C4BB6
P 10200 1100
F 0 "C3" H 10315 1146 50  0000 L CNN
F 1 "0.1uF" H 10315 1055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 10238 950 50  0001 C CNN
F 3 "" H 10200 1100 50  0001 C CNN
F 4 "Samsung Electro-Mechanics" H 10200 1100 50  0001 C CNN "Manufacturer_Name"
F 5 "CL21B104JBCNNNC" H 10200 1100 50  0001 C CNN "Manufacturer_Part_Number"
F 6 "CL21B104JBCNNNC" H 10200 1100 50  0001 C CNN "manf#"
	1    10200 1100
	1    0    0    -1  
$EndComp
Text Label 8600 650  2    60   ~ 0
5v
$Comp
L interferometer-rescue:Earth #PWR04
U 1 1 591C5737
P 9650 2800
F 0 "#PWR04" H 9650 2550 50  0001 C CNN
F 1 "Earth" H 9650 2650 50  0001 C CNN
F 2 "" H 9650 2800 50  0001 C CNN
F 3 "" H 9650 2800 50  0001 C CNN
	1    9650 2800
	1    0    0    -1  
$EndComp
Text Label 7650 1750 0    60   ~ 0
~CS
Text Label 7650 1850 0    60   ~ 0
SCK
Text Label 7650 1950 0    60   ~ 0
MOSI
Text Label 7300 1450 0    60   ~ 0
4.096_VREF
Text Label 7400 1550 0    60   ~ 0
~laser_reset
Text Label 8050 3000 2    60   ~ 0
~laser_standby
NoConn ~ 10000 1400
Text Notes 5900 4740 2    60   ~ 0
Laser driver address jumpers
$Comp
L interferometer-rescue:Jumper_NC_Dual JP4
U 1 1 591C6801
P 5350 3950
F 0 "JP4" V 4850 3900 50  0000 L CNN
F 1 "Jumper_NC_Dual" V 4750 3700 50  0000 L CNN
F 2 "freetronics_footprints:1X03" H 5350 3950 50  0001 C CNN
F 3 "" H 5350 3950 50  0001 C CNN
	1    5350 3950
	0    -1   -1   0   
$EndComp
$Comp
L interferometer-rescue:Jumper_NC_Dual JP2
U 1 1 591C6851
P 3750 3950
F 0 "JP2" V 3250 3900 50  0000 L CNN
F 1 "Jumper_NC_Dual" V 3150 3700 50  0000 L CNN
F 2 "freetronics_footprints:1X03" H 3750 3950 50  0001 C CNN
F 3 "" H 3750 3950 50  0001 C CNN
	1    3750 3950
	0    -1   -1   0   
$EndComp
$Comp
L interferometer-rescue:Jumper_NC_Dual JP3
U 1 1 591C689D
P 4550 3950
F 0 "JP3" V 4050 3900 50  0000 L CNN
F 1 "Jumper_NC_Dual" V 3950 3700 50  0000 L CNN
F 2 "freetronics_footprints:1X03" H 4550 3950 50  0001 C CNN
F 3 "" H 4550 3950 50  0001 C CNN
	1    4550 3950
	0    -1   -1   0   
$EndComp
Text Label 7500 2100 0    60   ~ 0
chip_addr0
Text Label 7500 2200 0    60   ~ 0
chip_addr1
Text Label 7500 2300 0    60   ~ 0
chip_addr2
Text Label 4800 3850 1    60   ~ 0
chip_addr1
Text Label 4050 3850 1    60   ~ 0
chip_addr0
Text Label 5600 3850 1    60   ~ 0
chip_addr2
Text Label 3650 3650 2    60   ~ 0
ADDR0
Text Label 4450 3650 2    60   ~ 0
ADDR1
Text Label 5250 3650 2    60   ~ 0
ADDR2
$Comp
L interferometer-rescue:C C4
U 1 1 591C8F57
P 7350 1600
F 0 "C4" H 7450 1550 50  0000 L CNN
F 1 "0.1uF" H 7400 1450 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 7388 1450 50  0001 C CNN
F 3 "" H 7350 1600 50  0001 C CNN
F 4 "Samsung Electro-Mechanics" H 7350 1600 50  0001 C CNN "Manufacturer_Name"
F 5 "CL21B104JBCNNNC" H 7350 1600 50  0001 C CNN "Manufacturer_Part_Number"
F 6 "CL21B104JBCNNNC" H 7350 1600 50  0001 C CNN "manf#"
	1    7350 1600
	1    0    0    -1  
$EndComp
Text Notes 3040 6535 2    60   ~ 0
Power supplies and low frequency filtering
$Comp
L interferometer-rescue:C C6
U 1 1 591CA8F6
P 9150 2950
F 0 "C6" H 8950 2950 50  0000 L CNN
F 1 "0.1uF" H 8900 2850 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 9188 2800 50  0001 C CNN
F 3 "" H 9150 2950 50  0001 C CNN
F 4 "Samsung Electro-Mechanics" H 9150 2950 50  0001 C CNN "Manufacturer_Name"
F 5 "CL21B104JBCNNNC" H 9150 2950 50  0001 C CNN "Manufacturer_Part_Number"
F 6 "CL21B104JBCNNNC" H 9150 2950 50  0001 C CNN "manf#"
	1    9150 2950
	1    0    0    -1  
$EndComp
$Comp
L interferometer-rescue:GNDA #PWR05
U 1 1 591CAC9F
P 9150 3150
F 0 "#PWR05" H 9150 2900 50  0001 C CNN
F 1 "GNDA" H 8950 3050 50  0000 C CNN
F 2 "" H 9150 3150 50  0001 C CNN
F 3 "" H 9150 3150 50  0001 C CNN
	1    9150 3150
	1    0    0    -1  
$EndComp
Text Label 8900 2750 0    60   ~ 0
AVSS
$Comp
L interferometer-rescue:Earth #PWR06
U 1 1 591CC522
P 3750 4250
F 0 "#PWR06" H 3750 4000 50  0001 C CNN
F 1 "Earth" H 3750 4100 50  0001 C CNN
F 2 "" H 3750 4250 50  0001 C CNN
F 3 "" H 3750 4250 50  0001 C CNN
	1    3750 4250
	1    0    0    -1  
$EndComp
$Comp
L interferometer-rescue:Earth #PWR07
U 1 1 591CC620
P 4550 4250
F 0 "#PWR07" H 4550 4000 50  0001 C CNN
F 1 "Earth" H 4550 4100 50  0001 C CNN
F 2 "" H 4550 4250 50  0001 C CNN
F 3 "" H 4550 4250 50  0001 C CNN
	1    4550 4250
	1    0    0    -1  
$EndComp
$Comp
L interferometer-rescue:Earth #PWR08
U 1 1 591CC6E3
P 5350 4250
F 0 "#PWR08" H 5350 4000 50  0001 C CNN
F 1 "Earth" H 5350 4100 50  0001 C CNN
F 2 "" H 5350 4250 50  0001 C CNN
F 3 "" H 5350 4250 50  0001 C CNN
	1    5350 4250
	1    0    0    -1  
$EndComp
$Comp
L interferometer-rescue:GNDA #PWR09
U 1 1 591CD640
P 7350 1850
F 0 "#PWR09" H 7350 1600 50  0001 C CNN
F 1 "GNDA" H 7350 1700 50  0000 C CNN
F 2 "" H 7350 1850 50  0001 C CNN
F 3 "" H 7350 1850 50  0001 C CNN
	1    7350 1850
	1    0    0    -1  
$EndComp
$Comp
L interferometer-rescue:C C9
U 1 1 591CDD86
P 1050 5550
F 0 "C9" H 1150 5550 50  0000 L CNN
F 1 "22uF" H 1100 5450 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1088 5400 50  0001 C CNN
F 3 "" H 1050 5550 50  0001 C CNN
	1    1050 5550
	1    0    0    -1  
$EndComp
$Comp
L interferometer-rescue:GNDA #PWR010
U 1 1 591CE000
P 1050 5800
F 0 "#PWR010" H 1050 5550 50  0001 C CNN
F 1 "GNDA" H 1055 5627 50  0000 C CNN
F 2 "" H 1050 5800 50  0001 C CNN
F 3 "" H 1050 5800 50  0001 C CNN
	1    1050 5800
	1    0    0    -1  
$EndComp
$Comp
L interferometer-rescue:FDC637BNZ Q1
U 1 1 591CBC07
P 6515 3835
F 0 "Q1" H 6600 4265 50  0000 C CNN
F 1 "FDC637BNZ" H 6600 4174 50  0000 C CNN
F 2 "OPA320SAIDBVT:SOT95P280X145-6N" H 6060 3455 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/FDC637BNZ-D.pdf" H 6515 3835 50  0001 L CNN
F 4 "ON Semiconductor" H 6515 3835 50  0001 C CNN "Manufacturer_Name"
F 5 "FDC637BNZ" H 6515 3835 50  0001 C CNN "Manufacturer_Part_Number"
F 6 "512-FDC637BNZ" H 6515 3835 50  0001 C CNN "Mouser Part Number"
F 7 "FDC637BNZ" H 6515 3835 50  0001 C CNN "manf#"
	1    6515 3835
	1    0    0    -1  
$EndComp
Text Label 7215 3645 0    60   ~ 0
LD
$Comp
L interferometer-rescue:R R3
U 1 1 591CE293
P 7230 4820
F 0 "R3" H 7000 4890 50  0000 L CNN
F 1 "66.5 ohm 0.1%" H 6950 4790 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 7160 4820 50  0001 C CNN
F 3 "" H 7230 4820 50  0001 C CNN
F 4 "Panasonic" H 7230 4820 50  0001 C CNN "Manufacturer_Name"
F 5 "ERJ-6ENF66R5V" H 7230 4820 50  0001 C CNN "Manufacturer_Part_Number"
F 6 "ERJ-6ENF66R5V" H 7230 4820 50  0001 C CNN "manf#"
	1    7230 4820
	1    0    0    -1  
$EndComp
Text Label 10200 2100 0    60   ~ 0
RSN
Text Label 6860 4625 2    60   ~ 0
RSN
Text Label 10200 1650 0    60   ~ 0
IOUT
Text Label 6080 4310 3    60   ~ 0
IOUT
Text Label 3850 5000 0    60   ~ 0
5v
NoConn ~ 5700 5550
NoConn ~ 5700 5650
NoConn ~ 5700 5750
NoConn ~ 5700 5850
NoConn ~ 5700 5950
Text Label 5050 5050 0    60   ~ 0
4.096_VREF
Text Notes 7455 5250 2    60   ~ 0
Laser-driver output
$Comp
L interferometer-rescue:ADR292GRUZ U3
U 1 1 591CC52C
P 3500 5350
F 0 "U3" H 4600 5737 60  0000 C CNN
F 1 "ADR292GRUZ" H 4600 5631 60  0000 C CNN
F 2 "ADN8810ACPZ:ADR292GRUZ" H 3900 4100 60  0001 C CNN
F 3 "https://eu.mouser.com/datasheet/2/609/ADR291_292-1503582.pdf" H 3500 5350 60  0000 C CNN
F 4 "ADR292GRUZ" H 3500 5350 60  0001 C CNN "manf#"
F 5 "Analog Devices" H 3500 5350 50  0001 C CNN "Manufacturer_Name"
F 6 "ADR292GRUZ" H 3500 5350 50  0001 C CNN "Manufacturer_Part_Number"
F 7 "584-ADR292GRUZ" H 3500 5350 50  0001 C CNN "Mouser Part Number"
	1    3500 5350
	1    0    0    -1  
$EndComp
$Comp
L interferometer-rescue:C C11
U 1 1 591CF24A
P 3405 5530
F 0 "C11" H 3520 5576 50  0000 L CNN
F 1 "0.1uF" H 3520 5485 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3443 5380 50  0001 C CNN
F 3 "" H 3405 5530 50  0001 C CNN
F 4 "Samsung Electro-Mechanics" H 3405 5530 50  0001 C CNN "Manufacturer_Name"
F 5 "CL21B104JBCNNNC" H 3405 5530 50  0001 C CNN "Manufacturer_Part_Number"
F 6 "CL21B104JBCNNNC" H 3405 5530 50  0001 C CNN "manf#"
	1    3405 5530
	1    0    0    -1  
$EndComp
$Comp
L interferometer-rescue:TESTPOINT TP2
U 1 1 591D1312
P 7130 5730
F 0 "TP2" H 7208 5854 40  0000 L CNN
F 1 "TESTPOINT" H 7208 5786 30  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.5mm" H 7130 5730 60  0001 C CNN
F 3 "" H 7130 5730 60  0000 C CNN
	1    7130 5730
	1    0    0    -1  
$EndComp
$Comp
L interferometer-rescue:TESTPOINT TP3
U 1 1 591D135E
P 6110 6205
F 0 "TP3" H 5955 6275 40  0000 L CNN
F 1 "TESTPOINT" H 5830 6210 30  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.5mm" H 6110 6205 60  0001 C CNN
F 3 "" H 6110 6205 60  0000 C CNN
	1    6110 6205
	-1   0    0    1   
$EndComp
Text Notes 7455 6535 2    60   ~ 0
Testpoints
NoConn ~ 10000 1550
NoConn ~ 6200 1800
NoConn ~ 6200 2100
NoConn ~ 6200 2500
NoConn ~ 6200 3000
NoConn ~ 6200 3100
NoConn ~ 6200 1300
NoConn ~ 6200 1400
NoConn ~ 6200 1500
NoConn ~ 4300 1700
NoConn ~ 4300 1800
NoConn ~ 4300 1900
NoConn ~ 4300 2400
NoConn ~ 6200 800 
NoConn ~ 6200 900 
NoConn ~ 6200 1000
NoConn ~ 5150 1000
NoConn ~ 5150 900 
NoConn ~ 5150 800 
Text Notes 11220 6535 2    60   ~ 0
Transimpedance amplifier
Text Label 5700 6300 2    60   ~ 0
AVSS
Text Label 800  5300 0    60   ~ 0
3v3
$Comp
L interferometer-rescue:C C10
U 1 1 591D633E
P 2450 5550
F 0 "C10" H 2550 5550 50  0000 L CNN
F 1 "22uF" H 2500 5450 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2488 5400 50  0001 C CNN
F 3 "" H 2450 5550 50  0001 C CNN
	1    2450 5550
	1    0    0    -1  
$EndComp
$Comp
L interferometer-rescue:GNDA #PWR011
U 1 1 591D6345
P 2450 5800
F 0 "#PWR011" H 2450 5550 50  0001 C CNN
F 1 "GNDA" H 2455 5627 50  0000 C CNN
F 2 "" H 2450 5800 50  0001 C CNN
F 3 "" H 2450 5800 50  0001 C CNN
	1    2450 5800
	1    0    0    -1  
$EndComp
Text Label 2200 5300 0    60   ~ 0
5v
Text Label 10100 2600 0    60   ~ 0
AVSS
$Comp
L interferometer-rescue:C C2
U 1 1 591D6A0E
P 8300 900
F 0 "C2" H 7950 950 50  0000 L CNN
F 1 "0.1uF" H 7950 850 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 8338 750 50  0001 C CNN
F 3 "" H 8300 900 50  0001 C CNN
F 4 "Samsung Electro-Mechanics" H 8300 900 50  0001 C CNN "Manufacturer_Name"
F 5 "CL21B104JBCNNNC" H 8300 900 50  0001 C CNN "Manufacturer_Part_Number"
F 6 "CL21B104JBCNNNC" H 8300 900 50  0001 C CNN "manf#"
	1    8300 900 
	1    0    0    -1  
$EndComp
Text Label 8050 1250 0    60   ~ 0
AVSS
$Comp
L interferometer-rescue:Jumper_NC_Dual JP1
U 1 1 591D7A74
P 10585 900
F 0 "JP1" H 10735 1415 50  0000 L CNN
F 1 "Jumper_NC_Dual" H 10285 1315 50  0000 L CNN
F 2 "freetronics_footprints:1X03" H 10585 900 50  0001 C CNN
F 3 "" H 10585 900 50  0001 C CNN
	1    10585 900 
	0    1    1    0   
$EndComp
Text Label 10785 650  0    60   ~ 0
5v
Text Label 10785 1150 0    60   ~ 0
3v3
$Comp
L interferometer-rescue:C C5
U 1 1 591D8E08
P 1450 1700
F 0 "C5" H 1100 1750 50  0000 L CNN
F 1 "0.1uF" H 1100 1650 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1488 1550 50  0001 C CNN
F 3 "" H 1450 1700 50  0001 C CNN
F 4 "Samsung Electro-Mechanics" H 1450 1700 50  0001 C CNN "Manufacturer_Name"
F 5 "CL21B104JBCNNNC" H 1450 1700 50  0001 C CNN "Manufacturer_Part_Number"
F 6 "CL21B104JBCNNNC" H 1450 1700 50  0001 C CNN "manf#"
	1    1450 1700
	1    0    0    -1  
$EndComp
Text Label 6905 5080 0    60   ~ 0
AVSS
$Comp
L interferometer-rescue:Earth #PWR012
U 1 1 591D7D5F
P 8300 1100
F 0 "#PWR012" H 8300 850 50  0001 C CNN
F 1 "Earth" H 8300 950 50  0001 C CNN
F 2 "" H 8300 1100 50  0001 C CNN
F 3 "" H 8300 1100 50  0001 C CNN
	1    8300 1100
	1    0    0    -1  
$EndComp
Text Label 950  3900 2    60   ~ 0
DVSS
Text Label 9500 2850 2    60   ~ 0
DVSS
Text Label 8150 750  0    60   ~ 0
5v
NoConn ~ 8550 2700
Text Label 8100 5000 0    60   ~ 0
AVSS
$Comp
L interferometer-rescue:R R1
U 1 1 591DF768
P 8650 3750
F 0 "R1" H 8700 3900 50  0000 L CNN
F 1 "680K ohm 1%" H 8700 3800 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 8580 3750 50  0001 C CNN
F 3 "" H 8650 3750 50  0001 C CNN
	1    8650 3750
	1    0    0    -1  
$EndComp
$Comp
L interferometer-rescue:R R2
U 1 1 591DF87A
P 8950 4000
F 0 "R2" V 8950 4000 50  0000 C CNN
F 1 "21K ohm 1% " V 8834 4000 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 8880 4000 50  0001 C CNN
F 3 "" H 8950 4000 50  0001 C CNN
	1    8950 4000
	0    1    1    0   
$EndComp
Text Label 9450 4000 2    60   ~ 0
3v3
$Comp
L interferometer-rescue:C C7
U 1 1 591DFDB3
P 8350 3750
F 0 "C7" H 8050 3800 50  0000 L CNN
F 1 "0.1uF" H 8050 3700 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 8388 3600 50  0001 C CNN
F 3 "" H 8350 3750 50  0001 C CNN
F 4 "Samsung Electro-Mechanics" H 8350 3750 50  0001 C CNN "Manufacturer_Name"
F 5 "CL21B104JBCNNNC" H 8350 3750 50  0001 C CNN "Manufacturer_Part_Number"
F 6 "CL21B104JBCNNNC" H 8350 3750 50  0001 C CNN "manf#"
	1    8350 3750
	1    0    0    -1  
$EndComp
Text Label 9400 4800 2    60   ~ 0
PD
$Comp
L interferometer-rescue:R R4
U 1 1 591E038E
P 9250 5200
F 0 "R4" V 9250 5200 50  0000 C CNN
F 1 "7.87K ohm" V 9350 5200 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 9180 5200 50  0001 C CNN
F 3 "" H 9250 5200 50  0001 C CNN
	1    9250 5200
	0    1    1    0   
$EndComp
$Comp
L interferometer-rescue:C C12
U 1 1 591E07E5
P 9250 5600
F 0 "C12" V 9500 5600 50  0000 C CNN
F 1 "82pF" V 9400 5600 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 9288 5450 50  0001 C CNN
F 3 "" H 9250 5600 50  0001 C CNN
F 4 "Samsung Electro-Mechanics" H 9250 5600 50  0001 C CNN "Manufacturer_Name"
F 5 "CL21C820JBANNNC" H 9250 5600 50  0001 C CNN "Manufacturer_Part_Number"
F 6 "CL21C820JBANNNC" H 9250 5600 50  0001 C CNN "manf#"
	1    9250 5600
	0    1    1    0   
$EndComp
Text Label 10750 4800 0    60   ~ 0
~SHDN
Text Label 6550 2200 0    60   ~ 0
~SHDN
Text Label 7130 6200 1    60   ~ 0
4.096_VREF
Text Label 6000 6125 0    60   ~ 0
5v
$Comp
L interferometer-rescue:TESTPOINT TP4
U 1 1 591DB78A
P 6320 5860
F 0 "TP4" H 6398 5984 40  0000 L CNN
F 1 "TESTPOINT" H 6398 5916 30  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.5mm" H 6320 5860 60  0001 C CNN
F 3 "" H 6320 5860 60  0000 C CNN
	1    6320 5860
	1    0    0    -1  
$EndComp
Text Label 5970 5860 0    60   ~ 0
3v3
NoConn ~ 6120 3645
NoConn ~ 6120 3815
NoConn ~ 7080 3815
$Comp
L interferometer-rescue:R R8
U 1 1 591DD952
P 10550 4550
F 0 "R8" H 10620 4596 50  0000 L CNN
F 1 "100K ohm" H 10620 4505 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 10480 4550 50  0001 C CNN
F 3 "https://industrial.panasonic.com/cdbs/www-data/pdf/RDM0000/AOA0000C307.pdf" H 10550 4550 50  0001 C CNN
F 4 "Panasonic" H 10550 4550 50  0001 C CNN "Manufacturer_Name"
F 5 "ERA-6AEB104V" H 10550 4550 50  0001 C CNN "Manufacturer_Part_Number"
F 6 "ERA-6AEB104V" H 10550 4550 50  0001 C CNN "manf#"
	1    10550 4550
	1    0    0    -1  
$EndComp
Text Label 10700 4300 0    60   ~ 0
3v3
$Comp
L interferometer-rescue:R R7
U 1 1 591DE4AD
P 8200 2750
F 0 "R7" H 8270 2796 50  0000 L CNN
F 1 "100K ohm" H 8270 2705 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 8130 2750 50  0001 C CNN
F 3 "https://industrial.panasonic.com/cdbs/www-data/pdf/RDM0000/AOA0000C307.pdf" H 8200 2750 50  0001 C CNN
F 4 "Panasonic" H 8200 2750 50  0001 C CNN "Manufacturer_Name"
F 5 "ERA-6AEB104V" H 8200 2750 50  0001 C CNN "Manufacturer_Part_Number"
F 6 "ERA-6AEB104V" H 8200 2750 50  0001 C CNN "manf#"
	1    8200 2750
	1    0    0    -1  
$EndComp
Text Label 8000 2600 0    60   ~ 0
3v3
$Comp
L interferometer-rescue:R R6
U 1 1 591DEC98
P 6900 1800
F 0 "R6" H 6970 1846 50  0000 L CNN
F 1 "100K ohm" H 6970 1755 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 6830 1800 50  0001 C CNN
F 3 "https://industrial.panasonic.com/cdbs/www-data/pdf/RDM0000/AOA0000C307.pdf" H 6900 1800 50  0001 C CNN
F 4 "Panasonic" H 6900 1800 50  0001 C CNN "Manufacturer_Name"
F 5 "ERA-6AEB104V" H 6900 1800 50  0001 C CNN "Manufacturer_Part_Number"
F 6 "ERA-6AEB104V" H 6900 1800 50  0001 C CNN "manf#"
	1    6900 1800
	1    0    0    -1  
$EndComp
Text Label 7100 1550 2    60   ~ 0
3v3
$Comp
L interferometer-rescue:R R5
U 1 1 591DF4B3
P 7450 1200
F 0 "R5" H 7520 1246 50  0000 L CNN
F 1 "100K ohm" H 7520 1155 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 7380 1200 50  0001 C CNN
F 3 "https://industrial.panasonic.com/cdbs/www-data/pdf/RDM0000/AOA0000C307.pdf" H 7450 1200 50  0001 C CNN
F 4 "ERA-6AEB104V" H 7450 1200 60  0001 C CNN "manf#"
F 5 "Panasonic" H 7450 1200 50  0001 C CNN "Manufacturer_Name"
F 6 "ERA-6AEB104V" H 7450 1200 50  0001 C CNN "Manufacturer_Part_Number"
	1    7450 1200
	1    0    0    -1  
$EndComp
Text Label 7650 1000 2    60   ~ 0
3v3
NoConn ~ 4300 2700
NoConn ~ 4300 2800
NoConn ~ 4300 2900
NoConn ~ 4300 3000
NoConn ~ 4300 3100
$Comp
L interferometer-rescue:LED D1
U 1 1 591E6733
P 3300 2250
F 0 "D1" V 3350 2450 50  0000 R CNN
F 1 "LED GREEN" V 3250 2450 50  0000 R CNN
F 2 "LED_SMD:LED_0805_2012Metric" H 3300 2250 50  0001 C CNN
F 3 "https://optoelectronics.liteon.com/upload/download/DS22-2000-118/LTST-C171KGKT.pdf" H 3300 2250 50  0001 C CNN
F 4 "Lite-On" H 3300 2250 50  0001 C CNN "Manufacturer_Name"
F 5 "LTST-C171KGKT" H 3300 2250 50  0001 C CNN "Manufacturer_Part_Number"
F 6 "LTST-C171KGKT" H 3300 2250 50  0001 C CNN "manf#"
	1    3300 2250
	0    -1   -1   0   
$EndComp
$Comp
L interferometer-rescue:R R9
U 1 1 591E706A
P 3300 2650
F 0 "R9" H 3150 2700 50  0000 L CNN
F 1 "220 ohm" H 3050 2600 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3230 2650 50  0001 C CNN
F 3 "" H 3300 2650 50  0001 C CNN
	1    3300 2650
	1    0    0    -1  
$EndComp
$Comp
L interferometer-rescue:GNDA #PWR013
U 1 1 591E7828
P 3300 2850
F 0 "#PWR013" H 3300 2600 50  0001 C CNN
F 1 "GNDA" H 3305 2677 50  0000 C CNN
F 2 "" H 3300 2850 50  0001 C CNN
F 3 "" H 3300 2850 50  0001 C CNN
	1    3300 2850
	1    0    0    -1  
$EndComp
$Comp
L interferometer-rescue:LED D2
U 1 1 591E8C37
P 3650 2350
F 0 "D2" V 3800 2550 50  0000 R CNN
F 1 "LED GREEN" V 3700 2550 50  0000 R CNN
F 2 "LED_SMD:LED_0805_2012Metric" H 3650 2350 50  0001 C CNN
F 3 "https://optoelectronics.liteon.com/upload/download/DS22-2000-118/LTST-C171KGKT.pdf" H 3650 2350 50  0001 C CNN
F 4 "Lite-On" H 3650 2350 50  0001 C CNN "Manufacturer_Name"
F 5 "LTST-C171KGKT" H 3650 2350 50  0001 C CNN "Manufacturer_Part_Number"
F 6 "LTST-C171KGKT" H 3650 2350 50  0001 C CNN "manf#"
	1    3650 2350
	0    -1   -1   0   
$EndComp
$Comp
L interferometer-rescue:R R10
U 1 1 591E93EB
P 3650 2650
F 0 "R10" H 3450 2700 50  0000 L CNN
F 1 "100 ohm" H 3400 2600 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3580 2650 50  0001 C CNN
F 3 "" H 3650 2650 50  0001 C CNN
	1    3650 2650
	1    0    0    -1  
$EndComp
$Comp
L interferometer-rescue:GNDA #PWR014
U 1 1 591E9451
P 3650 2850
F 0 "#PWR014" H 3650 2600 50  0001 C CNN
F 1 "GNDA" H 3655 2677 50  0000 C CNN
F 2 "" H 3650 2850 50  0001 C CNN
F 3 "" H 3650 2850 50  0001 C CNN
	1    3650 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 1365 1900 1365
Wire Wire Line
	1800 2015 1800 2165
Wire Wire Line
	1800 2165 1550 2165
Wire Wire Line
	2000 2015 2000 2165
Wire Wire Line
	2000 2165 2250 2165
Wire Notes Line
	475  3340 11220 3340
Wire Wire Line
	3150 2100 3300 2100
Wire Wire Line
	3550 2000 3650 2000
Wire Wire Line
	3850 2300 3900 2300
Wire Wire Line
	4300 2200 3900 2200
Wire Wire Line
	6200 1900 6550 1900
Wire Wire Line
	6200 1700 6550 1700
Wire Wire Line
	6200 2000 6900 2000
Wire Wire Line
	4300 2600 4050 2600
Wire Wire Line
	6200 2400 6550 2400
Wire Wire Line
	6200 2600 6550 2600
Wire Wire Line
	6200 2800 6550 2800
Wire Wire Line
	6200 2900 6550 2900
Wire Wire Line
	6200 2700 6550 2700
Wire Notes Line
	6970 6535 475  6535
Wire Wire Line
	1900 1515 1900 1365
Wire Wire Line
	10100 2300 10100 2600
Wire Wire Line
	10100 2300 10000 2300
Wire Wire Line
	9300 1000 9300 900 
Wire Wire Line
	9400 900  9400 1000
Wire Wire Line
	3900 2200 3900 2300
Connection ~ 3900 2300
Wire Wire Line
	6200 1600 6550 1600
Wire Notes Line
	475  4740 475  4735
Wire Wire Line
	2450 3900 2450 4200
Wire Wire Line
	2250 4200 2450 4200
Wire Wire Line
	2650 4200 2650 4350
Wire Wire Line
	2250 4200 2250 4350
Connection ~ 2450 4200
Wire Wire Line
	9250 2700 9250 2850
Wire Wire Line
	9150 650  9150 1000
Wire Wire Line
	8600 650  8750 650 
Wire Wire Line
	8750 700  8750 650 
Connection ~ 8750 650 
Wire Wire Line
	10200 900  10200 950 
Connection ~ 10200 900 
Wire Wire Line
	10200 1250 10200 1350
Wire Wire Line
	7900 1750 7650 1750
Wire Wire Line
	7900 1850 7650 1850
Wire Wire Line
	7900 1950 7650 1950
Wire Wire Line
	7300 1450 7350 1450
Wire Wire Line
	7400 1550 7450 1550
Wire Wire Line
	8750 3000 8750 2700
Wire Wire Line
	8050 3000 8200 3000
Wire Notes Line
	5900 3350 5900 6535
Wire Wire Line
	7900 2100 7500 2100
Wire Wire Line
	7900 2200 7500 2200
Wire Wire Line
	7900 2300 7500 2300
Wire Wire Line
	4650 3950 4800 3950
Wire Wire Line
	4800 3950 4800 3850
Wire Wire Line
	5450 3950 5600 3950
Wire Wire Line
	5600 3950 5600 3850
Wire Wire Line
	3850 3950 4050 3950
Wire Wire Line
	4050 3950 4050 3850
Wire Wire Line
	3750 3700 3750 3650
Wire Wire Line
	3750 3650 3650 3650
Wire Wire Line
	4550 3700 4550 3650
Wire Wire Line
	4550 3650 4450 3650
Wire Wire Line
	5350 3700 5350 3650
Wire Wire Line
	5350 3650 5250 3650
Connection ~ 7350 1450
Wire Wire Line
	9150 2700 9150 2750
Wire Wire Line
	9150 2750 8900 2750
Connection ~ 9150 2750
Wire Wire Line
	9150 3150 9150 3100
Wire Wire Line
	9300 900  9400 900 
Connection ~ 9400 900 
Wire Wire Line
	3750 4250 3750 4200
Wire Wire Line
	4550 4250 4550 4200
Wire Wire Line
	5350 4250 5350 4200
Wire Wire Line
	7350 1850 7350 1750
Wire Wire Line
	800  5300 1050 5300
Wire Wire Line
	1050 5300 1050 5400
Wire Wire Line
	1050 5800 1050 5700
Wire Wire Line
	7080 3645 7215 3645
Wire Wire Line
	7080 4050 7230 4050
Wire Wire Line
	7230 4050 7230 4625
Wire Wire Line
	7230 4625 6860 4625
Connection ~ 7230 4625
Wire Wire Line
	7230 4970 7230 5080
Wire Wire Line
	10000 2100 10200 2100
Wire Wire Line
	6120 4050 6080 4050
Wire Wire Line
	6080 4050 6080 4310
Wire Wire Line
	10000 1650 10200 1650
Wire Wire Line
	5700 5350 5700 5050
Wire Wire Line
	5700 5050 5050 5050
Wire Wire Line
	5750 6150 5750 6300
Wire Wire Line
	5750 6150 5700 6150
Wire Notes Line
	7455 3340 7455 6535
Wire Notes Line
	7455 5250 5905 5250
Wire Wire Line
	3500 5350 3405 5350
Wire Wire Line
	3405 5000 3405 5350
Wire Wire Line
	3405 5000 3850 5000
Connection ~ 3405 5350
Wire Wire Line
	5750 6300 5700 6300
Wire Wire Line
	2200 5300 2450 5300
Wire Wire Line
	2450 5300 2450 5400
Wire Wire Line
	2450 5800 2450 5700
Wire Wire Line
	9000 750  9000 1000
Wire Wire Line
	8150 750  8300 750 
Wire Wire Line
	8400 1000 8400 1250
Wire Wire Line
	8400 1000 8550 1000
Wire Wire Line
	8400 1250 8050 1250
Connection ~ 8300 750 
Wire Wire Line
	10585 1150 10785 1150
Wire Wire Line
	10585 650  10785 650 
Wire Wire Line
	1450 1365 1450 1550
Wire Wire Line
	1450 1850 1450 2150
Wire Wire Line
	7230 5080 6905 5080
Connection ~ 1900 1365
Wire Wire Line
	8300 1050 8300 1100
Connection ~ 1150 3900
Wire Wire Line
	950  3900 1150 3900
Wire Wire Line
	1150 3900 1150 4050
Wire Wire Line
	9650 2800 9650 2700
Wire Wire Line
	9650 2700 9350 2700
Wire Wire Line
	9250 2850 9500 2850
Wire Wire Line
	9100 4000 9450 4000
Wire Wire Line
	9100 5200 9050 5200
Wire Wire Line
	9700 4600 9700 5200
Wire Wire Line
	8800 5600 9100 5600
Connection ~ 9700 5200
Wire Wire Line
	9700 5600 9400 5600
Wire Wire Line
	9400 5200 9700 5200
Wire Wire Line
	7130 5730 7130 6200
Wire Wire Line
	6110 6205 6110 6125
Wire Wire Line
	8350 4000 8650 4000
Connection ~ 8650 4000
Wire Wire Line
	8650 3500 8650 3600
Wire Wire Line
	8650 3900 8650 4000
Wire Wire Line
	8350 3900 8350 4000
Wire Wire Line
	6200 2200 6550 2200
Wire Wire Line
	6110 6125 6000 6125
Wire Wire Line
	5970 5860 6320 5860
Wire Notes Line
	7200 3340 7200 470 
Wire Notes Line
	3040 470  3040 6535
Connection ~ 10550 4800
Wire Wire Line
	10550 4700 10550 4800
Wire Wire Line
	10550 4400 10550 4300
Wire Wire Line
	10550 4300 10700 4300
Wire Wire Line
	8200 2900 8200 3000
Connection ~ 8200 3000
Wire Wire Line
	8200 2600 8000 2600
Wire Wire Line
	6900 1950 6900 2000
Connection ~ 6900 2000
Wire Wire Line
	6900 1650 6900 1550
Wire Wire Line
	6900 1550 7100 1550
Wire Wire Line
	7450 1050 7450 1000
Wire Wire Line
	7450 1000 7650 1000
Wire Wire Line
	7450 1550 7450 1350
Connection ~ 7450 1550
Connection ~ 3300 2100
Wire Wire Line
	3300 2500 3300 2400
Wire Wire Line
	3300 2850 3300 2800
Wire Wire Line
	3650 2200 3650 2000
Connection ~ 3650 2000
Wire Wire Line
	3650 2850 3650 2800
Wire Wire Line
	6105 5495 6105 5575
Text Label 10200 4600 0    60   ~ 0
A0
$Comp
L interferometer-rescue:GNDA #PWR015
U 1 1 591F4592
P 10200 1350
F 0 "#PWR015" H 10200 1100 50  0001 C CNN
F 1 "GNDA" H 10350 1250 50  0000 C CNN
F 2 "" H 10200 1350 50  0001 C CNN
F 3 "" H 10200 1350 50  0001 C CNN
	1    10200 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	8750 1100 8750 1000
$Comp
L interferometer-rescue:GNDA #PWR016
U 1 1 591F4F47
P 8750 1100
F 0 "#PWR016" H 8750 850 50  0001 C CNN
F 1 "GNDA" V 8850 1150 50  0000 C CNN
F 2 "" H 8750 1100 50  0001 C CNN
F 3 "" H 8750 1100 50  0001 C CNN
	1    8750 1100
	1    0    0    -1  
$EndComp
$Comp
L interferometer-rescue:GNDA #PWR017
U 1 1 591F5F82
P 3405 5790
F 0 "#PWR017" H 3405 5540 50  0001 C CNN
F 1 "GNDA" H 3410 5617 50  0000 C CNN
F 2 "" H 3405 5790 50  0001 C CNN
F 3 "" H 3405 5790 50  0001 C CNN
	1    3405 5790
	1    0    0    -1  
$EndComp
Wire Wire Line
	3405 5790 3405 5680
$Comp
L interferometer-rescue:C C13
U 1 1 592057BF
P 8500 5150
F 0 "C13" H 8200 5200 50  0000 L CNN
F 1 "0.1uF" H 8150 5100 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 8538 5000 50  0001 C CNN
F 3 "" H 8500 5150 50  0001 C CNN
F 4 "Samsung Electro-Mechanics" H 8500 5150 50  0001 C CNN "Manufacturer_Name"
F 5 "CL21B104JBCNNNC" H 8500 5150 50  0001 C CNN "Manufacturer_Part_Number"
F 6 "CL21B104JBCNNNC" H 8500 5150 50  0001 C CNN "manf#"
	1    8500 5150
	1    0    0    -1  
$EndComp
$Comp
L interferometer-rescue:GNDA #PWR018
U 1 1 59205C76
P 8500 5350
F 0 "#PWR018" H 8500 5100 50  0001 C CNN
F 1 "GNDA" H 8505 5177 50  0000 C CNN
F 2 "" H 8500 5350 50  0001 C CNN
F 3 "" H 8500 5350 50  0001 C CNN
	1    8500 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	8500 5350 8500 5300
Wire Wire Line
	9050 3500 8650 3500
Text Label 9050 3500 0    60   ~ 0
AVSS
Wire Wire Line
	8350 3600 8350 3500
Wire Wire Line
	8350 3500 7850 3500
Wire Wire Line
	7850 3500 7850 3650
$Comp
L interferometer-rescue:GNDA #PWR019
U 1 1 59206D7C
P 7850 3650
F 0 "#PWR019" H 7850 3400 50  0001 C CNN
F 1 "GNDA" H 7650 3550 50  0000 C CNN
F 2 "" H 7850 3650 50  0001 C CNN
F 3 "" H 7850 3650 50  0001 C CNN
	1    7850 3650
	1    0    0    -1  
$EndComp
$Comp
L interferometer-rescue:GNDA #PWR020
U 1 1 5920C7C9
P 1450 2150
F 0 "#PWR020" H 1450 1900 50  0001 C CNN
F 1 "GNDA" H 1455 1977 50  0000 C CNN
F 2 "" H 1450 2150 50  0001 C CNN
F 3 "" H 1450 2150 50  0001 C CNN
	1    1450 2150
	1    0    0    -1  
$EndComp
$Comp
L interferometer-rescue:R R11
U 1 1 592166B5
P 10100 5050
F 0 "R11" H 10170 5096 50  0000 L CNN
F 1 "5.1K ohm" H 10170 5005 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 10030 5050 50  0001 C CNN
F 3 "" H 10100 5050 50  0001 C CNN
	1    10100 5050
	1    0    0    -1  
$EndComp
$Comp
L interferometer-rescue:C C14
U 1 1 592167F4
P 9900 4600
F 0 "C14" V 9648 4600 50  0000 C CNN
F 1 "0.1uF" V 9739 4600 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 9938 4450 50  0001 C CNN
F 3 "" H 9900 4600 50  0001 C CNN
F 4 "Samsung Electro-Mechanics" H 9900 4600 50  0001 C CNN "Manufacturer_Name"
F 5 "CL21B104JBCNNNC" H 9900 4600 50  0001 C CNN "Manufacturer_Part_Number"
F 6 "CL21B104JBCNNNC" H 9900 4600 50  0001 C CNN "manf#"
	1    9900 4600
	0    1    1    0   
$EndComp
Wire Wire Line
	10050 4600 10100 4600
$Comp
L interferometer-rescue:GNDA #PWR021
U 1 1 59216D38
P 10100 5300
F 0 "#PWR021" H 10100 5050 50  0001 C CNN
F 1 "GNDA" H 10105 5127 50  0000 C CNN
F 2 "" H 10100 5300 50  0001 C CNN
F 3 "" H 10100 5300 50  0001 C CNN
	1    10100 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	10100 5300 10100 5200
$Comp
L interferometer-rescue:GNDA #PWR022
U 1 1 5921A1DD
P 1550 7050
F 0 "#PWR022" H 1550 6800 50  0001 C CNN
F 1 "GNDA" H 1555 6877 50  0000 C CNN
F 2 "" H 1550 7050 50  0001 C CNN
F 3 "" H 1550 7050 50  0001 C CNN
	1    1550 7050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 7050 1550 6900
Text Label 2100 6900 0    60   ~ 0
AVSS
Wire Wire Line
	1950 6900 2100 6900
Wire Notes Line
	3040 6540 3040 7795
Text Notes 3035 7795 2    60   ~ 0
Alternate tie point
Wire Wire Line
	10100 4900 10100 4600
Connection ~ 10100 4600
Wire Wire Line
	3900 2300 4300 2300
Wire Wire Line
	2450 4200 2650 4200
Wire Wire Line
	8750 650  9150 650 
Wire Wire Line
	10200 900  10485 900 
Wire Wire Line
	7350 1450 7900 1450
Wire Wire Line
	9150 2750 9150 2800
Wire Wire Line
	9400 900  10200 900 
Wire Wire Line
	7230 4625 7230 4670
Wire Wire Line
	3405 5350 3405 5380
Wire Wire Line
	8300 750  9000 750 
Wire Wire Line
	1900 1365 2150 1365
Wire Wire Line
	1150 3900 1350 3900
Wire Wire Line
	9700 4600 9750 4600
Wire Wire Line
	8800 5200 8800 5600
Wire Wire Line
	9700 5200 9700 5600
Wire Wire Line
	8650 4000 8800 4000
Wire Wire Line
	10550 4800 10750 4800
Wire Wire Line
	8200 3000 8750 3000
Wire Wire Line
	6900 2000 7050 2000
Wire Wire Line
	7450 1550 7900 1550
Wire Wire Line
	3300 2100 4300 2100
Wire Wire Line
	3650 2000 4300 2000
Wire Wire Line
	10100 4600 10200 4600
Wire Notes Line
	475  4740 5900 4740
$Comp
L OPA320SAIDBVT:OPA320SAIDBVT U2
U 1 1 5EA140AA
P 8200 4350
F 0 "U2" H 8800 4200 50  0000 C CNN
F 1 "OPA320SAIDBVT" H 8800 4100 50  0000 C CNN
F 2 "OPA320SAIDBVT:SOT95P280X145-6N" H 9250 4450 50  0001 L CNN
F 3 "http://www.ti.com/lit/gpn/OPA320" H 9250 4350 50  0001 L CNN
F 4 "Precision, Zero-Crossover, 20MHz, 0.9pA Ib, RRIO, CMOS Operational Amplifier" H 9250 4250 50  0001 L CNN "Description"
F 5 "1.45" H 9250 4150 50  0001 L CNN "Height"
F 6 "Texas Instruments" H 9250 4050 50  0001 L CNN "Manufacturer_Name"
F 7 "OPA320SAIDBVT" H 9250 3950 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "595-OPA320SAIDBVT" H 9250 3850 50  0001 L CNN "Mouser Part Number"
F 9 "https://www.mouser.com/Search/Refine.aspx?Keyword=595-OPA320SAIDBVT" H 9250 3750 50  0001 L CNN "Mouser Price/Stock"
F 10 "" H 9250 3650 50  0001 L CNN "RS Part Number"
F 11 "" H 9250 3550 50  0001 L CNN "RS Price/Stock"
F 12 "OPA320SAIDBVT" H 8200 4350 50  0001 C CNN "manf#"
	1    8200 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	8500 5000 8050 5000
Wire Wire Line
	8650 4000 8650 4200
Wire Wire Line
	8050 5000 8050 4450
Wire Wire Line
	8050 4450 8200 4450
Wire Wire Line
	9550 4800 9550 4450
Wire Wire Line
	9550 4450 9400 4450
Wire Wire Line
	9550 4800 10550 4800
Wire Wire Line
	9450 4000 9450 4350
Wire Wire Line
	9450 4350 9400 4350
Wire Wire Line
	9050 5200 9050 4800
Wire Wire Line
	9050 4800 9400 4800
Wire Wire Line
	9400 4800 9400 4550
Connection ~ 9050 5200
Wire Wire Line
	9050 5200 8800 5200
Wire Wire Line
	9700 4600 9700 4250
Wire Wire Line
	9700 4250 8200 4250
Wire Wire Line
	8200 4250 8200 4350
Connection ~ 9700 4600
Wire Wire Line
	8650 4200 8150 4200
Wire Wire Line
	8150 4200 8150 4550
Wire Wire Line
	8150 4550 8200 4550
$Comp
L interferometer-rescue:GS2 J1
U 1 1 59219F5F
P 1750 6900
F 0 "J1" V 1545 6900 50  0000 C CNN
F 1 "GS2" V 1636 6900 50  0000 C CNN
F 2 "1x02 GS2:GS2" V 1824 6900 50  0001 C CNN
F 3 "" H 1750 6900 50  0001 C CNN
	1    1750 6900
	0    1    1    0   
$EndComp
$Comp
L interferometer-rescue:ADN8810ACP U1
U 1 1 5EA4013A
P 9000 1750
F 0 "U1" H 9000 1700 60  0000 C CNN
F 1 "ADN8810ACP" H 9000 1600 60  0000 C CNN
F 2 "ADN8810ACPZ:ADN8810ACPZ" H 9000 1500 60  0001 C CNN
F 3 "https://www.analog.com/media/en/technical-documentation/data-sheets/ADN8810.pdf" H 8750 1700 60  0000 C CNN
F 4 "Analog Devices" H 9000 1750 50  0001 C CNN "Manufacturer_Name"
F 5 "ADN8810ACPZ" H 9000 1750 50  0001 C CNN "Manufacturer_Part_Number"
F 6 "584-ADN8810ACPZ" H 9000 1750 50  0001 C CNN "Mouser Part Number"
F 7 "ADN8810ACPZ" H 9000 1750 50  0001 C CNN "manf#"
	1    9000 1750
	1    0    0    -1  
$EndComp
$Comp
L interferometer-rescue:TESTPOINT TP1
U 1 1 591D12B6
P 6105 5495
F 0 "TP1" H 6183 5619 40  0000 L CNN
F 1 "TESTPOINT" H 6183 5551 30  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.5mm" H 6105 5495 60  0001 C CNN
F 3 "" H 6105 5495 60  0000 C CNN
	1    6105 5495
	1    0    0    -1  
$EndComp
Wire Wire Line
	6105 5575 5975 5575
Text Label 5975 5575 0    60   ~ 0
A0
$EndSCHEMATC
