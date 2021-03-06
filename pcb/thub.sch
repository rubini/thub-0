EESchema Schematic File Version 2
LIBS:thub
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
LIBS:special
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
LIBS:urtica
LIBS:leder
LIBS:idroware
LIBS:abcdef
LIBS:thub-cache
EELAYER 27 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date "2 nov 2015"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L ATMEGA88PA-A IC1
U 1 1 563559EA
P 3600 3050
F 0 "IC1" H 2850 4300 40  0000 L BNN
F 1 "atmega*8" H 4000 1650 40  0000 L BNN
F 2 "TQFP32" H 3600 3050 30  0000 C CIN
F 3 "" H 3600 3050 60  0000 C CNN
	1    3600 3050
	1    0    0    -1  
$EndComp
$Comp
L CRYSTAL_SMD X1
U 1 1 5635CA44
P 10100 4650
F 0 "X1" H 10100 4740 30  0000 C CNN
F 1 "16MHz" H 10130 4540 30  0000 L CNN
F 2 "~" H 10100 4650 60  0000 C CNN
F 3 "~" H 10100 4650 60  0000 C CNN
	1    10100 4650
	1    0    0    -1  
$EndComp
$Comp
L USB-MINI-B CON1
U 1 1 5635CA8A
P 10250 1300
F 0 "CON1" H 10000 1750 60  0000 C CNN
F 1 "USB-MINI-B" H 10200 800 60  0000 C CNN
F 2 "" H 10250 1300 60  0000 C CNN
F 3 "" H 10250 1300 60  0000 C CNN
	1    10250 1300
	1    0    0    -1  
$EndComp
$Comp
L ICSP J1
U 1 1 5635D671
P 3750 1100
F 0 "J1" H 3750 900 60  0000 C CNN
F 1 "ICSP" H 3750 1300 60  0000 C CNN
F 2 "~" H 3750 1100 60  0000 C CNN
F 3 "~" H 3750 1100 60  0000 C CNN
	1    3750 1100
	1    0    0    -1  
$EndComp
$Comp
L WS2812B U1
U 1 1 5635D6B8
P 4950 6950
F 0 "U1" H 4975 6700 60  0000 C CNN
F 1 "WS2812B" H 4950 7275 60  0000 C CNN
F 2 "" H 4950 6950 60  0000 C CNN
F 3 "" H 4950 6950 60  0000 C CNN
	1    4950 6950
	1    0    0    -1  
$EndComp
$Comp
L WS2812B U2
U 1 1 5635D6C7
P 4050 6950
F 0 "U2" H 4075 6700 60  0000 C CNN
F 1 "WS2812B" H 4050 7275 60  0000 C CNN
F 2 "" H 4050 6950 60  0000 C CNN
F 3 "" H 4050 6950 60  0000 C CNN
	1    4050 6950
	1    0    0    -1  
$EndComp
$Comp
L BUTTON SW1
U 1 1 5635D772
P 10000 6050
F 0 "SW1" H 10000 6050 60  0000 C CNN
F 1 "BUTTON" H 10000 5900 60  0000 C CNN
F 2 "" H 10000 6050 60  0000 C CNN
F 3 "" H 10000 6050 60  0000 C CNN
	1    10000 6050
	1    0    0    1   
$EndComp
$Comp
L STRIP-2 J4
U 1 1 563692BA
P 8625 1300
F 0 "J4" H 8625 1500 60  0000 C CNN
F 1 "breadboard" H 8625 1100 60  0000 C CNN
F 2 "" H 8625 1300 60  0000 C CNN
F 3 "" H 8625 1300 60  0000 C CNN
	1    8625 1300
	1    0    0    -1  
$EndComp
$Comp
L STRIP-2 J3
U 1 1 563692C9
P 9125 1300
F 0 "J3" H 9125 1500 60  0000 C CNN
F 1 "millefori" H 9125 1100 60  0000 C CNN
F 2 "" H 9125 1300 60  0000 C CNN
F 3 "" H 9125 1300 60  0000 C CNN
	1    9125 1300
	1    0    0    -1  
$EndComp
$Comp
L STRIP-12 J5
U 1 1 56369BE2
P 7000 2900
F 0 "J5" H 7000 3600 60  0000 C CNN
F 1 "STRIP-12" H 7000 2200 60  0000 C CNN
F 2 "~" H 7000 2700 60  0000 C CNN
F 3 "~" H 7000 2700 60  0000 C CNN
	1    7000 2900
	1    0    0    -1  
$EndComp
$Comp
L WS2812B U3
U 1 1 56369E11
P 3150 6950
F 0 "U3" H 3175 6700 60  0000 C CNN
F 1 "WS2812B" H 3150 7275 60  0000 C CNN
F 2 "" H 3150 6950 60  0000 C CNN
F 3 "" H 3150 6950 60  0000 C CNN
	1    3150 6950
	1    0    0    -1  
$EndComp
$Comp
L CSMALL C5
U 1 1 56370BE6
P 9800 4750
F 0 "C5" H 9825 4800 30  0000 L CNN
F 1 "20p" H 9825 4700 30  0000 L CNN
F 2 "~" H 9800 4750 60  0000 C CNN
F 3 "~" H 9800 4750 60  0000 C CNN
	1    9800 4750
	1    0    0    -1  
$EndComp
$Comp
L CSMALL C6
U 1 1 56370BF5
P 10500 4750
F 0 "C6" H 10525 4800 30  0000 L CNN
F 1 "20p" H 10525 4700 30  0000 L CNN
F 2 "~" H 10500 4750 60  0000 C CNN
F 3 "~" H 10500 4750 60  0000 C CNN
	1    10500 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	9800 4650 9900 4650
Wire Wire Line
	10300 4650 10500 4650
$Comp
L GND #PWR01
U 1 1 56370C07
P 9800 4850
F 0 "#PWR01" H 9800 4850 30  0001 C CNN
F 1 "GND" H 9800 4780 30  0001 C CNN
F 2 "" H 9800 4850 60  0000 C CNN
F 3 "" H 9800 4850 60  0000 C CNN
	1    9800 4850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 56370C16
P 10500 4850
F 0 "#PWR02" H 10500 4850 30  0001 C CNN
F 1 "GND" H 10500 4780 30  0001 C CNN
F 2 "" H 10500 4850 60  0000 C CNN
F 3 "" H 10500 4850 60  0000 C CNN
	1    10500 4850
	1    0    0    -1  
$EndComp
NoConn ~ 10100 4750
Wire Wire Line
	9850 4650 9850 4250
Wire Wire Line
	9850 4250 10650 4250
Connection ~ 9850 4650
Text Label 10450 4250 0    60   ~ 0
X1
Wire Wire Line
	10400 4650 10400 4400
Wire Wire Line
	10400 4400 10650 4400
Connection ~ 10400 4650
Text Label 10450 4400 0    60   ~ 0
X2
Wire Wire Line
	4050 1000 4150 1000
Wire Wire Line
	4150 1000 4150 900 
$Comp
L VCC #PWR03
U 1 1 56370D16
P 4150 900
F 0 "#PWR03" H 4150 1000 30  0001 C CNN
F 1 "VCC" H 4150 1000 30  0000 C CNN
F 2 "" H 4150 900 60  0000 C CNN
F 3 "" H 4150 900 60  0000 C CNN
	1    4150 900 
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR04
U 1 1 56370D25
P 4150 1300
F 0 "#PWR04" H 4150 1300 30  0001 C CNN
F 1 "GND" H 4150 1230 30  0001 C CNN
F 2 "" H 4150 1300 60  0000 C CNN
F 3 "" H 4150 1300 60  0000 C CNN
	1    4150 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 1200 4150 1200
Wire Wire Line
	4150 1200 4150 1300
Wire Wire Line
	4050 1100 4550 1100
Text Label 4300 1100 0    40   ~ 0
MOSI
Wire Wire Line
	3450 1000 2900 1000
Wire Wire Line
	3450 1100 2900 1100
Wire Wire Line
	3450 1200 2900 1200
Text Label 3000 1000 0    40   ~ 0
MISO
Text Label 3000 1100 0    40   ~ 0
SCK
Text Label 3000 1200 0    40   ~ 0
RESET
$Comp
L R-SMALL R1
U 1 1 56370DC6
P 2850 1400
F 0 "R1" H 2750 1500 60  0000 C CNN
F 1 "10k" H 2850 1400 40  0000 C CNN
F 2 "~" H 2850 1400 60  0000 C CNN
F 3 "~" H 2850 1400 60  0000 C CNN
	1    2850 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 1200 3300 1400
Wire Wire Line
	3300 1400 3000 1400
Connection ~ 3300 1200
Wire Wire Line
	2700 1400 2550 1400
Wire Wire Line
	2550 1400 2550 1250
$Comp
L VCC #PWR05
U 1 1 56370E1E
P 2550 1250
F 0 "#PWR05" H 2550 1350 30  0001 C CNN
F 1 "VCC" H 2550 1350 30  0000 C CNN
F 2 "" H 2550 1250 60  0000 C CNN
F 3 "" H 2550 1250 60  0000 C CNN
	1    2550 1250
	1    0    0    -1  
$EndComp
NoConn ~ 9700 1150
NoConn ~ 9700 1300
NoConn ~ 9700 1450
$Comp
L VCC #PWR06
U 1 1 56370E2D
P 9600 900
F 0 "#PWR06" H 9600 1000 30  0001 C CNN
F 1 "VCC" H 9600 1000 30  0000 C CNN
F 2 "" H 9600 900 60  0000 C CNN
F 3 "" H 9600 900 60  0000 C CNN
	1    9600 900 
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR07
U 1 1 56370E4B
P 9600 1700
F 0 "#PWR07" H 9600 1700 30  0001 C CNN
F 1 "GND" H 9600 1630 30  0001 C CNN
F 2 "" H 9600 1700 60  0000 C CNN
F 3 "" H 9600 1700 60  0000 C CNN
	1    9600 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	8475 1000 9700 1000
Wire Wire Line
	9600 1000 9600 900 
Wire Wire Line
	8475 1600 9700 1600
Wire Wire Line
	9600 1600 9600 1700
$Comp
L CSMALL C1
U 1 1 56371219
P 5450 1200
F 0 "C1" H 5475 1250 30  0000 L CNN
F 1 "100n" H 5475 1150 30  0000 L CNN
F 2 "~" H 5450 1200 60  0000 C CNN
F 3 "~" H 5450 1200 60  0000 C CNN
	1    5450 1200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR08
U 1 1 5637121F
P 5450 1300
F 0 "#PWR08" H 5450 1300 30  0001 C CNN
F 1 "GND" H 5450 1230 30  0001 C CNN
F 2 "" H 5450 1300 60  0000 C CNN
F 3 "" H 5450 1300 60  0000 C CNN
	1    5450 1300
	1    0    0    -1  
$EndComp
$Comp
L CSMALL C2
U 1 1 56371225
P 5750 1200
F 0 "C2" H 5775 1250 30  0000 L CNN
F 1 "100n" H 5775 1150 30  0000 L CNN
F 2 "~" H 5750 1200 60  0000 C CNN
F 3 "~" H 5750 1200 60  0000 C CNN
	1    5750 1200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR09
U 1 1 5637122B
P 5750 1300
F 0 "#PWR09" H 5750 1300 30  0001 C CNN
F 1 "GND" H 5750 1230 30  0001 C CNN
F 2 "" H 5750 1300 60  0000 C CNN
F 3 "" H 5750 1300 60  0000 C CNN
	1    5750 1300
	1    0    0    -1  
$EndComp
$Comp
L CSMALL C3
U 1 1 56371231
P 6450 1200
F 0 "C3" H 6475 1250 30  0000 L CNN
F 1 "100n" H 6475 1150 30  0000 L CNN
F 2 "~" H 6450 1200 60  0000 C CNN
F 3 "~" H 6450 1200 60  0000 C CNN
	1    6450 1200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR010
U 1 1 56371237
P 6450 1300
F 0 "#PWR010" H 6450 1300 30  0001 C CNN
F 1 "GND" H 6450 1230 30  0001 C CNN
F 2 "" H 6450 1300 60  0000 C CNN
F 3 "" H 6450 1300 60  0000 C CNN
	1    6450 1300
	1    0    0    -1  
$EndComp
$Comp
L CSMALL C4
U 1 1 5637123D
P 2350 2650
F 0 "C4" H 2375 2700 30  0000 L CNN
F 1 "100n" H 2375 2600 30  0000 L CNN
F 2 "~" H 2350 2650 60  0000 C CNN
F 3 "~" H 2350 2650 60  0000 C CNN
	1    2350 2650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR011
U 1 1 56371243
P 2350 2750
F 0 "#PWR011" H 2350 2750 30  0001 C CNN
F 1 "GND" H 2350 2680 30  0001 C CNN
F 2 "" H 2350 2750 60  0000 C CNN
F 3 "" H 2350 2750 60  0000 C CNN
	1    2350 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 2550 2700 2550
Wire Wire Line
	2700 1950 2550 1950
Wire Wire Line
	2550 1800 2550 2050
$Comp
L VCC #PWR012
U 1 1 56371265
P 2550 1800
F 0 "#PWR012" H 2550 1900 30  0001 C CNN
F 1 "VCC" H 2550 1900 30  0000 C CNN
F 2 "" H 2550 1800 60  0000 C CNN
F 3 "" H 2550 1800 60  0000 C CNN
	1    2550 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 2050 2700 2050
Connection ~ 2550 1950
Wire Wire Line
	2700 4050 2350 4050
Wire Wire Line
	2350 4050 2350 4600
Wire Wire Line
	2700 4150 2350 4150
Connection ~ 2350 4150
Wire Wire Line
	2350 4250 2700 4250
Connection ~ 2350 4250
$Comp
L GND #PWR013
U 1 1 563712F0
P 2350 4600
F 0 "#PWR013" H 2350 4600 30  0001 C CNN
F 1 "GND" H 2350 4530 30  0001 C CNN
F 2 "" H 2350 4600 60  0000 C CNN
F 3 "" H 2350 4600 60  0000 C CNN
	1    2350 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 6850 2600 6850
Wire Wire Line
	2600 6850 2600 6200
Wire Wire Line
	3750 6850 3600 6850
Wire Wire Line
	3600 6850 3600 6450
Wire Wire Line
	2600 6450 4500 6450
Connection ~ 2600 6450
Wire Wire Line
	4650 6850 4500 6850
Wire Wire Line
	4500 6850 4500 6450
Connection ~ 3600 6450
Wire Wire Line
	3450 7025 3575 7025
Wire Wire Line
	3575 7025 3575 7325
Wire Wire Line
	3575 7325 5550 7325
Wire Wire Line
	5550 7325 5550 7600
Wire Wire Line
	5250 7025 5250 7325
Connection ~ 5250 7325
Wire Wire Line
	4350 7025 4500 7025
Wire Wire Line
	4500 7025 4500 7325
Connection ~ 4500 7325
$Comp
L GND #PWR014
U 1 1 563714A5
P 5550 7600
F 0 "#PWR014" H 5550 7600 30  0001 C CNN
F 1 "GND" H 5550 7530 30  0001 C CNN
F 2 "" H 5550 7600 60  0000 C CNN
F 3 "" H 5550 7600 60  0000 C CNN
	1    5550 7600
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR015
U 1 1 563714B4
P 2600 6200
F 0 "#PWR015" H 2600 6300 30  0001 C CNN
F 1 "VCC" H 2600 6300 30  0000 C CNN
F 2 "" H 2600 6200 60  0000 C CNN
F 3 "" H 2600 6200 60  0000 C CNN
	1    2600 6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 6850 5450 6850
Wire Wire Line
	5450 6850 5450 6275
Wire Wire Line
	5450 6275 4625 6275
NoConn ~ 2850 7025
Text Label 4775 6275 0    40   ~ 0
Neopixel
Wire Wire Line
	8975 1350 8975 1600
Connection ~ 9600 1600
Wire Wire Line
	8475 1350 8475 1600
Connection ~ 8975 1600
Wire Wire Line
	8475 1250 8475 1000
Connection ~ 9600 1000
Wire Wire Line
	8975 1250 8975 1000
Wire Wire Line
	8975 1000 8950 1000
Connection ~ 8950 1000
Wire Wire Line
	2700 2250 2175 2250
Wire Wire Line
	2175 2250 2175 2050
$Comp
L VAA #PWR016
U 1 1 5637164A
P 2175 2050
F 0 "#PWR016" H 2175 2110 30  0001 C CNN
F 1 "VAA" H 2175 2160 30  0000 C CNN
F 2 "" H 2175 2050 60  0000 C CNN
F 3 "" H 2175 2050 60  0000 C CNN
	1    2175 2050
	1    0    0    -1  
$EndComp
$Comp
L VAA #PWR017
U 1 1 56371663
P 6450 950
F 0 "#PWR017" H 6450 1010 30  0001 C CNN
F 1 "VAA" H 6450 1060 30  0000 C CNN
F 2 "" H 6450 950 60  0000 C CNN
F 3 "" H 6450 950 60  0000 C CNN
	1    6450 950 
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR018
U 1 1 56371672
P 5600 950
F 0 "#PWR018" H 5600 1050 30  0001 C CNN
F 1 "VCC" H 5600 1050 30  0000 C CNN
F 2 "" H 5600 950 60  0000 C CNN
F 3 "" H 5600 950 60  0000 C CNN
	1    5600 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 1100 5450 950 
Wire Wire Line
	5450 950  5850 950 
Wire Wire Line
	5750 950  5750 1100
Connection ~ 5600 950 
Wire Wire Line
	6450 1100 6450 950 
Wire Wire Line
	4600 1950 5100 1950
Wire Wire Line
	4600 2050 5100 2050
Text Label 4800 1950 0    40   ~ 0
PB0
Text Label 4800 2050 0    40   ~ 0
PB1
Wire Wire Line
	4600 2150 5100 2150
Wire Wire Line
	4600 2250 5100 2250
Text Label 4800 2150 0    40   ~ 0
SSEL
Text Label 4800 2250 0    40   ~ 0
MOSI
Wire Wire Line
	4600 2350 5100 2350
Wire Wire Line
	4600 2450 5100 2450
Text Label 4800 2350 0    40   ~ 0
MISO
Text Label 4800 2450 0    40   ~ 0
SCK
Wire Wire Line
	4600 2550 5100 2550
Wire Wire Line
	4600 2650 5100 2650
Text Label 4800 2550 0    40   ~ 0
X1
Text Label 4800 2650 0    40   ~ 0
X2
Wire Wire Line
	4600 2800 5100 2800
Wire Wire Line
	4600 2900 5100 2900
Text Label 4800 2800 0    40   ~ 0
ADC0
Text Label 4800 2900 0    40   ~ 0
Neopixel
Wire Wire Line
	4600 3000 5100 3000
Wire Wire Line
	4600 3100 5100 3100
Text Label 4800 3000 0    40   ~ 0
PC2
Text Label 4800 3100 0    40   ~ 0
PC3
Wire Wire Line
	4600 3200 5100 3200
Wire Wire Line
	4600 3300 5100 3300
Text Label 4800 3200 0    40   ~ 0
SDA
Text Label 4800 3300 0    40   ~ 0
SCL
Wire Wire Line
	4600 3400 5100 3400
Text Label 4800 3400 0    40   ~ 0
RESET
Wire Wire Line
	4600 3550 5100 3550
Wire Wire Line
	4600 3650 5100 3650
Text Label 4800 3550 0    40   ~ 0
TXD
Text Label 4800 3650 0    40   ~ 0
RXD
Wire Wire Line
	4600 3750 5100 3750
Wire Wire Line
	4600 3850 5100 3850
Text Label 4800 3750 0    40   ~ 0
BUTTON
Text Label 4800 3850 0    40   ~ 0
PD3
Wire Wire Line
	4600 3950 5100 3950
Wire Wire Line
	4600 4050 5100 4050
Text Label 4800 3950 0    40   ~ 0
PD4
Text Label 4800 4050 0    40   ~ 0
LEDPWM
Wire Wire Line
	4600 4150 5100 4150
Wire Wire Line
	4600 4250 5100 4250
Text Label 4800 4150 0    40   ~ 0
PD6
Text Label 4800 4250 0    40   ~ 0
PD7
Wire Wire Line
	2200 3300 2700 3300
Wire Wire Line
	2200 3400 2700 3400
Text Label 2400 3300 0    40   ~ 0
ADC6
Text Label 2400 3400 0    40   ~ 0
ADC7
Wire Wire Line
	3450 6850 3500 6850
Wire Wire Line
	3500 6850 3500 6950
Wire Wire Line
	3500 6950 3650 6950
Wire Wire Line
	3650 6950 3650 7025
Wire Wire Line
	3650 7025 3750 7025
Wire Wire Line
	4350 6850 4425 6850
Wire Wire Line
	4425 6850 4425 6950
Wire Wire Line
	4425 6950 4600 6950
Wire Wire Line
	4600 6950 4600 7025
Wire Wire Line
	4600 7025 4650 7025
$Comp
L INDUCTOR_SMALL L1
U 1 1 56372257
P 6100 950
F 0 "L1" H 6100 1050 50  0000 C CNN
F 1 "10uH" H 6100 900 50  0000 C CNN
F 2 "~" H 6100 950 60  0000 C CNN
F 3 "~" H 6100 950 60  0000 C CNN
	1    6100 950 
	1    0    0    -1  
$EndComp
Connection ~ 5750 950 
Wire Wire Line
	6450 950  6350 950 
Connection ~ 6450 950 
$Comp
L LED D1
U 1 1 56372365
P 10400 2550
F 0 "D1" H 10400 2650 50  0000 C CNN
F 1 "red" H 10400 2450 50  0000 C CNN
F 2 "~" H 10400 2550 60  0000 C CNN
F 3 "~" H 10400 2550 60  0000 C CNN
	1    10400 2550
	1    0    0    -1  
$EndComp
$Comp
L R-SMALL R2
U 1 1 56372372
P 10050 2550
F 0 "R2" H 9950 2650 60  0000 C CNN
F 1 "1k" H 10050 2550 40  0000 C CNN
F 2 "~" H 10050 2550 60  0000 C CNN
F 3 "~" H 10050 2550 60  0000 C CNN
	1    10050 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	9900 2550 9750 2550
$Comp
L VCC #PWR019
U 1 1 5637237E
P 9750 2550
F 0 "#PWR019" H 9750 2650 30  0001 C CNN
F 1 "VCC" H 9750 2650 30  0000 C CNN
F 2 "" H 9750 2550 60  0000 C CNN
F 3 "" H 9750 2550 60  0000 C CNN
	1    9750 2550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR020
U 1 1 56372386
P 10600 2800
F 0 "#PWR020" H 10600 2800 30  0001 C CNN
F 1 "GND" H 10600 2730 30  0001 C CNN
F 2 "" H 10600 2800 60  0000 C CNN
F 3 "" H 10600 2800 60  0000 C CNN
	1    10600 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	10600 2550 10600 2800
$Comp
L LED D2
U 1 1 5637240E
P 10400 3200
F 0 "D2" H 10400 3300 50  0000 C CNN
F 1 "green" H 10400 3100 50  0000 C CNN
F 2 "~" H 10400 3200 60  0000 C CNN
F 3 "~" H 10400 3200 60  0000 C CNN
	1    10400 3200
	1    0    0    -1  
$EndComp
$Comp
L R-SMALL R3
U 1 1 56372414
P 10050 3200
F 0 "R3" H 9950 3300 60  0000 C CNN
F 1 "1k" H 10050 3200 40  0000 C CNN
F 2 "~" H 10050 3200 60  0000 C CNN
F 3 "~" H 10050 3200 60  0000 C CNN
	1    10050 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	9350 3200 9900 3200
$Comp
L GND #PWR021
U 1 1 56372421
P 10600 3450
F 0 "#PWR021" H 10600 3450 30  0001 C CNN
F 1 "GND" H 10600 3380 30  0001 C CNN
F 2 "" H 10600 3450 60  0000 C CNN
F 3 "" H 10600 3450 60  0000 C CNN
	1    10600 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	10600 3200 10600 3450
Text Label 9450 3200 0    40   ~ 0
LEDPWM
Text Label 2450 2550 0    40   ~ 0
AREF
$Comp
L GNDPWR #PWR022
U 1 1 56373316
P 10900 1750
F 0 "#PWR022" H 10900 1800 40  0001 C CNN
F 1 "GNDPWR" H 10900 1670 40  0000 C CNN
F 2 "" H 10900 1750 60  0000 C CNN
F 3 "" H 10900 1750 60  0000 C CNN
	1    10900 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	10800 1000 10900 1000
Wire Wire Line
	10900 1000 10900 1750
Wire Wire Line
	10800 1600 10900 1600
Connection ~ 10900 1600
Wire Wire Line
	10800 1450 10900 1450
Connection ~ 10900 1450
Wire Wire Line
	10800 1150 10900 1150
Connection ~ 10900 1150
Wire Wire Line
	6350 3150 6850 3150
Wire Wire Line
	6350 3250 6850 3250
Text Label 6550 3150 0    40   ~ 0
SSEL
Text Label 6550 3250 0    40   ~ 0
MOSI
Wire Wire Line
	6350 3350 6850 3350
Wire Wire Line
	6350 3450 6850 3450
Text Label 6550 3350 0    40   ~ 0
MISO
Text Label 6550 3450 0    40   ~ 0
SCK
Wire Wire Line
	6350 2950 6850 2950
Wire Wire Line
	6350 3050 6850 3050
Text Label 6550 3050 0    40   ~ 0
SDA
Text Label 6550 2950 0    40   ~ 0
SCL
Wire Wire Line
	6350 2750 6850 2750
Wire Wire Line
	6350 2850 6850 2850
Text Label 6550 2850 0    40   ~ 0
TXD
Text Label 6550 2750 0    40   ~ 0
RXD
Wire Wire Line
	6350 2350 6850 2350
Wire Wire Line
	6350 2450 6850 2450
Text Label 6550 2350 0    40   ~ 0
PD6
Text Label 6550 2450 0    40   ~ 0
PD7
Wire Wire Line
	6350 2550 6850 2550
Wire Wire Line
	6350 2650 6850 2650
Text Label 6550 2550 0    40   ~ 0
PB0
Text Label 6550 2650 0    40   ~ 0
PB1
Wire Wire Line
	9900 6250 10350 6250
Wire Wire Line
	10350 6250 10350 6450
Connection ~ 10100 6250
$Comp
L GND #PWR023
U 1 1 56373874
P 10350 6450
F 0 "#PWR023" H 10350 6450 30  0001 C CNN
F 1 "GND" H 10350 6380 30  0001 C CNN
F 2 "" H 10350 6450 60  0000 C CNN
F 3 "" H 10350 6450 60  0000 C CNN
	1    10350 6450
	1    0    0    -1  
$EndComp
Wire Wire Line
	9900 5700 10700 5700
Connection ~ 10100 5700
Text Label 10450 5700 0    40   ~ 0
BUTTON
$Comp
L R-SMALL R4
U 1 1 5637399E
P 10300 5550
F 0 "R4" H 10200 5650 60  0000 C CNN
F 1 "10k" H 10300 5550 40  0000 C CNN
F 2 "~" H 10300 5550 60  0000 C CNN
F 3 "~" H 10300 5550 60  0000 C CNN
	1    10300 5550
	0    -1   -1   0   
$EndComp
$Comp
L VCC #PWR024
U 1 1 563739A7
P 10300 5400
F 0 "#PWR024" H 10300 5500 30  0001 C CNN
F 1 "VCC" H 10300 5500 30  0000 C CNN
F 2 "" H 10300 5400 60  0000 C CNN
F 3 "" H 10300 5400 60  0000 C CNN
	1    10300 5400
	1    0    0    -1  
$EndComp
Connection ~ 10300 5700
$Comp
L UEXT J2
U 1 1 56373D77
P 6900 4250
F 0 "J2" H 6900 3950 60  0000 C CNN
F 1 "UEXT" H 6900 4550 60  0000 C CNN
F 2 "~" H 6900 4350 60  0000 C CNN
F 3 "~" H 6900 4350 60  0000 C CNN
	1    6900 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 4150 6600 4150
Wire Wire Line
	6100 4250 6600 4250
Text Label 6300 4150 0    40   ~ 0
TXD
Text Label 6300 4250 0    40   ~ 0
SCL
Wire Wire Line
	6100 4350 6600 4350
Wire Wire Line
	6100 4450 6600 4450
Text Label 6300 4350 0    40   ~ 0
MISO
Text Label 6300 4450 0    40   ~ 0
SCK
Wire Wire Line
	7200 4150 7700 4150
Wire Wire Line
	7200 4250 7700 4250
Text Label 7400 4150 0    40   ~ 0
RXD
Text Label 7400 4250 0    40   ~ 0
SDA
Wire Wire Line
	7200 4350 7700 4350
Wire Wire Line
	7200 4450 7700 4450
Text Label 7400 4350 0    40   ~ 0
MOSI
Text Label 7400 4450 0    40   ~ 0
SSEL
Wire Wire Line
	7200 4050 7950 4050
Wire Wire Line
	7950 4050 7950 4150
$Comp
L GND #PWR025
U 1 1 56373E46
P 7950 4150
F 0 "#PWR025" H 7950 4150 30  0001 C CNN
F 1 "GND" H 7950 4080 30  0001 C CNN
F 2 "" H 7950 4150 60  0000 C CNN
F 3 "" H 7950 4150 60  0000 C CNN
	1    7950 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6600 4050 6000 4050
Wire Wire Line
	6000 4050 6000 3850
$Comp
L VCC #PWR026
U 1 1 56373EF0
P 6000 3850
F 0 "#PWR026" H 6000 3950 30  0001 C CNN
F 1 "VCC" H 6000 3950 30  0000 C CNN
F 2 "" H 6000 3850 60  0000 C CNN
F 3 "" H 6000 3850 60  0000 C CNN
	1    6000 3850
	1    0    0    -1  
$EndComp
$Comp
L STRIP-4 J6
U 1 1 5637403A
P 7000 5200
F 0 "J6" H 7000 5500 60  0000 C CNN
F 1 "STRIP-4" H 7000 4900 60  0000 C CNN
F 2 "~" H 7000 5000 60  0000 C CNN
F 3 "~" H 7000 5000 60  0000 C CNN
	1    7000 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 5050 6850 5050
Wire Wire Line
	6150 5150 6850 5150
Wire Wire Line
	6350 5250 6850 5250
Wire Wire Line
	6350 5350 6850 5350
Text Label 6550 5250 0    40   ~ 0
ADC7
Text Label 6550 5350 0    40   ~ 0
ADC0
$Comp
L VAA #PWR027
U 1 1 56374052
P 6350 4950
F 0 "#PWR027" H 6350 5010 30  0001 C CNN
F 1 "VAA" H 6350 5060 30  0000 C CNN
F 2 "" H 6350 4950 60  0000 C CNN
F 3 "" H 6350 4950 60  0000 C CNN
	1    6350 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 4950 6350 5050
Wire Wire Line
	6150 5150 6150 5250
$Comp
L GND #PWR028
U 1 1 563741A4
P 6150 5250
F 0 "#PWR028" H 6150 5250 30  0001 C CNN
F 1 "GND" H 6150 5180 30  0001 C CNN
F 2 "" H 6150 5250 60  0000 C CNN
F 3 "" H 6150 5250 60  0000 C CNN
	1    6150 5250
	1    0    0    -1  
$EndComp
NoConn ~ 5100 3000
NoConn ~ 5100 3100
NoConn ~ 5100 3850
NoConn ~ 5100 3950
NoConn ~ 2200 3300
$EndSCHEMATC
