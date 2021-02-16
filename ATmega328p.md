# Exploration of the ATmega328P

## Hardware used

Atmega_board_detector at [https://github.com/jonsag/ardAVRProgrammer](https://github.com/jonsag/ardAVRProgrammer).

## ATmega328P MCU  

### Empty chip

    Signature = 0x1E 0x95 0x0F  
    Processor = ATmega328P  
    Flash memory size = 32768 bytes.  
    LFuse = 0x62  
    HFuse = 0xD9  
    EFuse = 0xFF  
    Lock byte = 0xFF  
    Clock calibration = 0x95  
    Bootloader in use: No  
    EEPROM preserved through erase: No  
    Watchdog timer always on: No  
    Bootloader is 4096 bytes starting at 7000  
    
    Bootloader:  
    
    7000: 0xFF ...  
    ...  
    7FF0: 0xFF ...  
    
    MD5 sum of bootloader = 0x6A 0xE5 0x9E 0x64 0x85 0x03 0x77 0xEE 0x54 0x70 0xC8 0x54 0x76 0x15 0x51 0xEA  
    No bootloader (all 0xFF)  
    
    First 256 bytes of program memory:  
    
    00: 0xFF ...  
    ...  
    F0: 0xFF ...  

### With bootloader from Arduino IDE

Board: Arduino AVR Boards -> Arduino Duemilanove or Diecimila  
Processor: ATmega328P  

    Signature = 0x1E 0x95 0x0F  
    Processor = ATmega328P  
    Flash memory size = 32768 bytes.  
    LFuse = 0xFF  
    HFuse = 0xDA  
    EFuse = 0xFD  
    Lock byte = 0xCF  
    Clock calibration = 0x95  
    Bootloader in use: Yes  
    EEPROM preserved through erase: No  
    Watchdog timer always on: No  
    Bootloader is 2048 bytes starting at 7800  
    
    Bootloader:  
    
    7800: 0x0C ...  
    ...  
    7FF0: 0xFF ...  
    
    MD5 sum of bootloader = 0x0A 0xAC 0xF7 0x16 0xF4 0x3C 0xA2 0xC9 0x27 0x7E 0x08 0xB9 0xD6 0x90 0xBC 0x02  
    Bootloader name: ATmegaBOOT_168_atmega328  
    
    First 256 bytes of program memory:  
    
    00: 0xFF ...  
    ...  
    F0: 0xFF ...  

Board: ATmega Microcontrollers -> ATmega328/328p  
Processor: ATmega328p  
Clock: Internal 8 MHz  

    Signature = 0x1E 0x95 0x0F  
    Processor = ATmega328P  
    Flash memory size = 32768 bytes.  
    LFuse = 0xE2  
    HFuse = 0xDB  
    EFuse = 0xFD  
    Lock byte = 0xFF  
    Clock calibration = 0x95  
    Bootloader in use: No  
    EEPROM preserved through erase: No  
    Watchdog timer always on: No  
    Bootloader is 2048 bytes starting at 7800  
    
    Bootloader:  
    
    7800: 0xFF ...  
    ...  
    7FF0: 0xFF ...  
    
    MD5 sum of bootloader = 0xE0 0xDE 0xEB 0xD3 0xC3 0xF5 0x60 0x21 0x2A 0xF1 0x7C 0x68 0xB9 0x34 0x4B 0xAE  
    No bootloader (all 0xFF)  
    
    First 256 bytes of program memory:  
    
    00: 0xFF ...  
    ...  
    F0: 0xFF ...  

Board: ATmega168/328 -> ATmega168/328  
Micro: ATmega328P @ 16MHz w/Arduino as ISP (Optiboot)  
(produces an error on burning)  

    Signature = 0x1E 0x95 0x0F  
    Processor = ATmega328P  
    Flash memory size = 32768 bytes.  
    LFuse = 0xFF  
    HFuse = 0xDE  
    EFuse = 0xFD  
    Lock byte = 0xCF  
    Clock calibration = 0x95  
    Bootloader in use: Yes  
    EEPROM preserved through erase: No  
    Watchdog timer always on: No  
    Bootloader is 512 bytes starting at 7E00  
    
    Bootloader:  
    
    7E00: 0x11 ...  
    ...  
    7FF0: 0xFF ...  
    
    MD5 sum of bootloader = 0xFB 0xF4 0x9B 0x7B 0x59 0x73 0x7F 0x65 0xE8 0xD0 0xF8 0xA5 0x08 0x12 0xE7 0x9F  
    Bootloader name: optiboot_atmega328  
    
    First 256 bytes of program memory:  
    
    00: 0xFF ...  
    ...  
    F0: 0xFF ...  

Board: ATmega168/328 -> ATmega168/328  
Micro: ATmega328P @ 16MHz w/Arduino as ISP  
(produces an error on burning)  

    Signature = 0x1E 0x95 0x0F  
    Processor = ATmega328P  
    Flash memory size = 32768 bytes.  
    LFuse = 0xFF  
    HFuse = 0xDF  
    EFuse = 0xFD  
    Lock byte = 0xCF  
    Clock calibration = 0x95  
    Bootloader in use: No  
    EEPROM preserved through erase: No  
    Watchdog timer always on: No  
    Bootloader is 512 bytes starting at 7E00  
    
    Bootloader:  
    
    7E00: 0x11 ...  
    ...  
    7FF0: 0xFF ...  
    
    MD5 sum of bootloader = 0xFB 0xF4 0x9B 0x7B 0x59 0x73 0x7F 0x65 0xE8 0xD0 0xF8 0xA5 0x08 0x12 0xE7 0x9F  
    Bootloader name: optiboot_atmega328  
    
    First 256 bytes of program memory:  
    
    00: 0xFF ...  
    ...  
    F0: 0xFF ...  

### With bootloader from Bootloader/optiboot

Compile bootloader  

>$ cd Bootloader/optiboot
>
>$ make atmega328p AVR_FREQ=8000000 BAUD_RATE=9600 LED_START_FLASHES=0 LED_DATA_FLASH=1

    Optiboot for 8000000 Hz (8.00 Mhz) operation with Baudrate 9600 and EEprom support configured.
     >>> Start building optiboot for AVR atmega328p:
    LED-Pin PB5 use Pin 19-PDIP28 17-TQFP32, with special functions: SCK PCINT5.
    RX-Pin PD0 use Pin 2-PDIP28 30-TQFP32, with special functions: PCINT16 RXD.
    TX-Pin PD1 use Pin 3-PDIP28 31-TQFP32, with special functions: PCINT17 TXD.
    avr-gcc -g -Wall -Os -fno-split-wide-types -mrelax -mmcu=atmega328p  -fno-diagnostics-show-caret -DBAUD_RATE=9600 -DLED_START_FLASHES=0 -DLED_DATA_FLASH=1 -DSUPPORT_EEPROM=1 -DLED=pB5 -DUART=00 -DSOFT_UART=0 -DUART_RX=pD0 -DUART_TX=pD1 -DF_CPU=8000000 -DHFUSE=hexDE -DLFUSE=hexFF -DBOOT_PAGE_LEN=512 -DVerboseLev=2 -c -o optiboot.o optiboot.S

    --------------------------------------------------------------------------------
    BAUD RATE CHECK: Desired: 9600,  Real: 9615.3, UBRR = 103, Difference=.16%
    --------------------------------------------------------------------------------
    # # # # # # # # # # # # # # # # # # # # # #
    Boot Loader start address: 0x7E00 = 32256
    # # # # # # # # # # # # # # # # # # # # # #

       text	   data	    bss	    dec	    hex	filename
        436	      0	      0	    436	    1b4	optiboot.elf
    Requires 1 Boot Page of 512 Bytes, which is 1.5% of Flash Memory
    BOOTSZ=3, which means 1 Boot Page

Upload bootloader  

>$ avrdude -p m328p -P /dev/ttyUSB0 -c avrisp -b 19200 -v -U flash:w:optiboot_atmega328p.hex:i

    avrdude: Version 6.3
             Copyright (c) 2000-2005 Brian Dean, http://www.bdmicro.com/
             Copyright (c) 2007-2014 Joerg Wunsch

             System wide configuration file is "/etc/avrdude.conf"
             User configuration file is "/home/jon/.avrduderc"
             User configuration file does not exist or is not a regular file, skipping

             Using Port                    : /dev/ttyUSB0
             Using Programmer              : avrisp
             Overriding Baud Rate          : 19200
             AVR Part                      : ATmega328P
             Chip Erase delay              : 9000 us
             PAGEL                         : PD7
             BS2                           : PC2
             RESET disposition             : dedicated
             RETRY pulse                   : SCK
             serial program mode           : yes
             parallel program mode         : yes
             Timeout                       : 200
             StabDelay                     : 100
             CmdexeDelay                   : 25
             SyncLoops                     : 32
             ByteDelay                     : 0
             PollIndex                     : 3
             PollValue                     : 0x53
             Memory Detail                 :

                                      Block Poll               Page                       Polled
               Memory Type Mode Delay Size  Indx Paged  Size   Size #Pages MinW  MaxW   ReadBack
               ----------- ---- ----- ----- ---- ------ ------ ---- ------ ----- ----- ---------
               eeprom        65    20     4    0 no       1024    4      0  3600  3600 0xff 0xff
               flash         65     6   128    0 yes     32768  128    256  4500  4500 0xff 0xff
               lfuse          0     0     0    0 no          1    0      0  4500  4500 0x00 0x00
               hfuse          0     0     0    0 no          1    0      0  4500  4500 0x00 0x00
               efuse          0     0     0    0 no          1    0      0  4500  4500 0x00 0x00
               lock           0     0     0    0 no          1    0      0  4500  4500 0x00 0x00
               calibration    0     0     0    0 no          1    0      0     0     0 0x00 0x00
               signature      0     0     0    0 no          3    0      0     0     0 0x00 0x00

             Programmer Type : STK500
             Description     : Atmel AVR ISP
             Hardware Version: 2
             Firmware Version: 1.18
             Topcard         : Unknown
             Vtarget         : 0.0 V
             Varef           : 0.0 V
             Oscillator      : Off
             SCK period      : 0.1 us

    avrdude: AVR device initialized and ready to accept instructions

    Reading | ################################################## | 100% 0.08s

    avrdude: Device signature = 0x1e950f (probably m328p)
    avrdude: safemode: hfuse reads as DF
    avrdude: safemode: efuse reads as FD
    avrdude: NOTE: "flash" memory has been specified, an erase cycle will be performed
             To disable this feature, specify the -D option.
    avrdude: erasing chip
    avrdude: reading input file "optiboot_atmega328p.hex"
    avrdude: writing flash (32768 bytes):

    Writing | ################################################## | 100% 0.00s

    avrdude: 32768 bytes of flash written
    avrdude: verifying flash memory against optiboot_atmega328p.hex:
    avrdude: load data flash data from input file optiboot_atmega328p.hex:
    avrdude: input file optiboot_atmega328p.hex contains 32768 bytes
    avrdude: reading on-chip flash data:

    Reading | ################################################## | 100% 0.00s

    avrdude: verifying ...
    avrdude: 32768 bytes of flash verified

    avrdude: safemode: hfuse reads as DF
    avrdude: safemode: efuse reads as FD
    avrdude: safemode: Fuses OK (E:FD, H:DF, L:FF)

    avrdude done.  Thank you.

I interpret this as:  

    lfuse: 0xFF
    hfuse: 0xDF
    efuse: 0xFD

Testing with Board Detector  

    Signature = 0x1E 0x95 0x0F 
    Processor = ATmega328P
    Flash memory size = 32768 bytes.
    LFuse = 0xFF 
    HFuse = 0xDF 
    EFuse = 0xFD 
    Lock byte = 0xFF 
    Clock calibration = 0x95 
    Bootloader in use: No
    EEPROM preserved through erase: No
    Watchdog timer always on: No
    Bootloader is 512 bytes starting at 7E00

    Bootloader:

    7E00: 0xF8 ...
    ...
    7FF0: 0xFF ...

    MD5 sum of bootloader = 0xB0 0xF1 0xD0 0xF8 0xEB 0x10 0x10 0xAC 0x95 0xCB 0x7E 0x8F 0x04 0x0D 0xFA 0xA2 
    Bootloader MD5 sum not known.

    First 256 bytes of program memory:

    00: 0xFF ...
    ...
    F0: 0xFF ...

Trying with different baudrate  

>$ make atmega328p AVR_FREQ=8000000 BAUD_RATE=19200 LED_START_FLASHES=0 LED_DATA_FLASH=1

    Optiboot for 8000000 Hz (8.00 Mhz) operation with Baudrate 19200 and EEprom support configured.
     >>> Start building optiboot for AVR atmega328p:
    LED-Pin PB5 use Pin 19-PDIP28 17-TQFP32, with special functions: SCK PCINT5.
    RX-Pin PD0 use Pin 2-PDIP28 30-TQFP32, with special functions: PCINT16 RXD.
    TX-Pin PD1 use Pin 3-PDIP28 31-TQFP32, with special functions: PCINT17 TXD.
    avr-gcc -g -Wall -Os -fno-split-wide-types -mrelax -mmcu=atmega328p  -fno-diagnostics-show-caret -DBAUD_RATE=19200 -DLED_START_FLASHES=0 -DLED_DATA_FLASH=1 -DSUPPORT_EEPROM=1 -DLED=pB5 -DUART=00 -DSOFT_UART=0 -DUART_RX=pD0 -DUART_TX=pD1 -DF_CPU=8000000 -DHFUSE=hexDE -DLFUSE=hexFF -DBOOT_PAGE_LEN=512 -DVerboseLev=2 -c -o optiboot.o optiboot.S

    --------------------------------------------------------------------------------
    BAUD RATE CHECK: Desired: 19200,  Real: 19230, UBRR = 51, Difference=.16%
    --------------------------------------------------------------------------------
    # # # # # # # # # # # # # # # # # # # # # #
    Boot Loader start address: 0x7E00 = 32256
    # # # # # # # # # # # # # # # # # # # # # #

       text	   data	    bss	    dec	    hex	filename
        436	      0	      0	    436	    1b4	optiboot.elf
    Requires 1 Boot Page of 512 Bytes, which is 1.5% of Flash Memory
    BOOTSZ=3, which means 1 Boot Page

Uploading  

>$ avrdude -p m328p -P /dev/ttyUSB0 -c avrisp -b 19200 -v -U flash:w:optiboot_atmega328p.hex:i

Board detector:

    Signature = 0x1E 0x95 0x0F  
    Processor = ATmega328P  
    Flash memory size = 32768 bytes.  
    LFuse = 0xFF  
    HFuse = 0xDF  
    EFuse = 0xFD  
    Lock byte = 0xFF  
    Clock calibration = 0x95  
    Bootloader in use: No  
    EEPROM preserved through erase: No  
    Watchdog timer always on: No  
    Bootloader is 512 bytes starting at 7E00  
    
    Bootloader:  
    
    7E00: 0xF8 ...  
    ...  
    7FF0: 0xFF ...  
    
    MD5 sum of bootloader = 0x7C 0xC0 0x57 0xDA 0x91 0xA6 0x82 0x30 0x6A 0x9D 0x6A 0x96 0xD1 0xFF 0xBA 0xD6  
    Bootloader MD5 sum not known.  
    
    First 256 bytes of program memory:  
    
    00: 0xFF ...  
    ...  
    F0: 0xFF ...  

### Erasing chip and uploading software

>$ avrdude -p m328p -P /dev/ttyUSB0 -c avrisp -b 19200 -e  
>  
>$ cd Software/ATmega328p_with_st7735/mega328_color_kit  
>  
>$ make  

    rm -rf ../Obj/mega328_color_kit
    mkdir ../Obj/mega328_color_kit
    mkdir ../Obj/mega328_color_kit/dep
    avr-gcc  -Wall ...
    ...
    avr-objdump -h -S ../Obj/mega328_color_kit/mega328_color_kit.elf > mega328_color_kit.lss

    8 MHz operation configured.
    AVR Memory Usage
    ----------------
    Device: atmega328p

    Program:   31980 bytes (97.6% Full)
    (.text + .data + .bootloader)

    Data:        204 bytes (10.0% Full)
    (.data + .bss + .noinit)

    EEPROM:      876 bytes (85.5% Full)
    (.eeprom)

>$ avrdude -p m328p -P /dev/ttyUSB0 -c avrisp -b 19200 -U flash:w:mega328_color_kit.hex  

    avrdude: AVR device initialized and ready to accept instructions

    Reading | ################################################## | 100% 0.08s

    avrdude: Device signature = 0x1e950f (probably m328p)
    avrdude: NOTE: "flash" memory has been specified, an erase cycle will be performed
            To disable this feature, specify the -D option.
    avrdude: erasing chip
    avrdude: reading input file "mega328_color_kit.hex"
    avrdude: input file mega328_color_kit.hex auto detected as Intel Hex
    avrdude: writing flash (31980 bytes):

    Writing | ################################################## | 100% 39.85s

    avrdude: 31980 bytes of flash written
    avrdude: verifying flash memory against mega328_color_kit.hex:
    avrdude: load data flash data from input file mega328_color_kit.hex:
    avrdude: input file mega328_color_kit.hex auto detected as Intel Hex
    avrdude: input file mega328_color_kit.hex contains 31980 bytes
    avrdude: reading on-chip flash data:

    Reading | ################################################## | 100% 31.26s

    avrdude: verifying ...
    avrdude: 31980 bytes of flash verified

    avrdude: safemode: Fuses OK (E:FD, H:DF, L:FF)

    avrdude done.  Thank you.

Checking with Board Detector:

    Signature = 0x1E 0x95 0x0F 
    Processor = ATmega328P
    Flash memory size = 32768 bytes.
    LFuse = 0xFF 
    HFuse = 0xDF 
    EFuse = 0xFD 
    Lock byte = 0xFF 
    Clock calibration = 0x95 
    Bootloader in use: No
    EEPROM preserved through erase: No
    Watchdog timer always on: No
    Bootloader is 512 bytes starting at 7E00

    Bootloader:

    7E00: 0xFF ...
    ...
    7FF0: 0xFF ...

    MD5 sum of bootloader = 0xDE 0x03 0xFE 0x65 0xA6 0x76 0x5C 0xAA 0x8C 0x91 0x34 0x3A 0xCC 0x62 0xCF 0xFC 
    No bootloader (all 0xFF)

    First 256 bytes of program memory:

    00: 0xB9 ...
    ...
    F0: 0xC4 ...

### Erasing chip, burning bootloader and uploading software

>$ avrdude -p m328p -P /dev/ttyUSB0 -c avrisp -b 19200 -e  
>
>$ cd Bootloader/optiboot
>
>$ make atmega328p AVR_FREQ=8000000 BAUD_RATE=9600 LED_START_FLASHES=0 LED_DATA_FLASH=1
>
>$ avrdude -p m328p -P /dev/ttyUSB0 -c avrisp -b 19200 -v -U flash:w:optiboot_atmega328p.hex:i
>
>$ cd Software/ATmega328p_with_st7735/mega328_color_kit
>
>$ make
>
>$ avrdude -p m328p -P /dev/ttyUSB0 -c avrisp -b 19200 -v -U flash:w:mega328_color_kit.hex

Checking with Board Detector:  

    Signature = 0x1E 0x95 0x0F 
    Processor = ATmega328P
    Flash memory size = 32768 bytes.
    LFuse = 0xFF 
    HFuse = 0xDF 
    EFuse = 0xFD 
    Lock byte = 0xFF 
    Clock calibration = 0x95 
    Bootloader in use: No
    EEPROM preserved through erase: No
    Watchdog timer always on: No
    Bootloader is 512 bytes starting at 7E00

    Bootloader:

    7E00: 0xFF ...
    ...
    7FF0: 0xFF ...

    MD5 sum of bootloader = 0xDE 0x03 0xFE 0x65 0xA6 0x76 0x5C 0xAA 0x8C 0x91 0x34 0x3A 0xCC 0x62 0xCF 0xFC 
    No bootloader (all 0xFF)

    First 256 bytes of program memory:

    00: 0xB9 ...
    ...
    F0: 0xC4 ...

Evidently this erases the bootloader

Trying again with -D switch  

>$ avrdude -p m328p -P /dev/ttyUSB0 -c avrisp -b 19200 -e  
>
>$ avrdude -p m328p -P /dev/ttyUSB0 -c avrisp -b 19200 -v -U flash:w:optiboot_atmega328p.hex:i
>
>$ avrdude -p m328p -P /dev/ttyUSB0 -c avrisp -b 19200 -v -D -U flash:w:mega328_color_kit.hex

Checking with Board Detector:  

    Signature = 0x1E 0x95 0x0F 
    Processor = ATmega328P
    Flash memory size = 32768 bytes.
    LFuse = 0xFF 
    HFuse = 0xDF 
    EFuse = 0xFD 
    Lock byte = 0xFF 
    Clock calibration = 0x95 
    Bootloader in use: No
    EEPROM preserved through erase: No
    Watchdog timer always on: No
    Bootloader is 512 bytes starting at 7E00

    Bootloader:

    7E00: 0xF8 ...
    ...
    7FF0: 0xFF ...

    MD5 sum of bootloader = 0xB0 0xF1 0xD0 0xF8 0xEB 0x10 0x10 0xAC 0x95 0xCB 0x7E 0x8F 0x04 0x0D 0xFA 0xA2 
    Bootloader MD5 sum not known.

    First 256 bytes of program memory:

    00: 0xB9 ...
    ...
    F0: 0xC4 ...

Now the bootloader stays  

### Setting fuses

>$ avrdude -p m328p -P /dev/ttyUSB0 -c avrisp -b 19200 -U lfuse:w:0xF7:m -U hfuse:w:0xD9:m -U efuse:w:0xFC:m

Checking with Board Detector:  

    Signature = 0x1E 0x95 0x0F 
    Processor = ATmega328P
    Flash memory size = 32768 bytes.
    LFuse = 0xF7 
    HFuse = 0xD9 
    EFuse = 0xFC 
    Lock byte = 0xFF 
    Clock calibration = 0x95 
    Bootloader in use: No
    EEPROM preserved through erase: No
    Watchdog timer always on: No
    Bootloader is 4096 bytes starting at 7000

    Bootloader:

    7000: 0xFF ...
    ...
    7FF0: 0xFF ...

    MD5 sum of bootloader = 0xAC 0x30 0xC1 0x8F 0x18 0x2B 0x1E 0x5D 0x92 0x81 0x06 0x75 0xD2 0x57 0x60 0x22 
    Bootloader MD5 sum not known.

    First 256 bytes of program memory:

    00: 0xB9 ...
    ...
    F0: 0xC4 ...

### Uploading with make

>$ avrdude -p m328p -P /dev/ttyUSB0 -c avrisp -b 19200 -e  
>
>$ avrdude -p m328p -P /dev/ttyUSB0 -c avrisp -b 19200 -v -U flash:w:optiboot_atmega328p.hex:i
>
>$ make upload make

    make
    make[1]: Entering directory '/home/jon/Documents/CodeWorkspace/avrComponentTester/Software/ATmega328p_with_st7735/mega328_color_kit'
    rm -rf ../Obj/mega328_color_kit
    mkdir ../Obj/mega328_color_kit
    mkdir ../Obj/mega328_color_kit/dep
    avr-gcc  -Wall ...
    ...
    avr-objdump -h -S ../Obj/mega328_color_kit/mega328_color_kit.elf > mega328_color_kit.lss

    8 MHz operation configured.
    AVR Memory Usage
    ----------------
    Device: atmega328p

    Program:   31980 bytes (97.6% Full)
    (.text + .data + .bootloader)

    Data:        204 bytes (10.0% Full)
    (.data + .bss + .noinit)

    EEPROM:      876 bytes (85.5% Full)
    (.eeprom)


    make[1]: Leaving directory '/home/jon/Documents/CodeWorkspace/avrComponentTester/Software/ATmega328p_with_st7735/mega328_color_kit'
    avrdude -c avrisp -B 1.0 -b 19200 -p m328p -P /dev/ttyUSB0 -U flash:w:./mega328_color_kit.hex:a \
    -U eeprom:w:./mega328_color_kit.eep:a

    avrdude: AVR device initialized and ready to accept instructions

    Reading | ################################################## | 100% 0.08s

    avrdude: Device signature = 0x1e950f (probably m328p)
    avrdude: NOTE: "flash" memory has been specified, an erase cycle will be performed
            To disable this feature, specify the -D option.
    avrdude: erasing chip
    avrdude: reading input file "./mega328_color_kit.hex"
    avrdude: input file ./mega328_color_kit.hex auto detected as Intel Hex
    avrdude: writing flash (31980 bytes):

    Writing | ################################################## | 100% 39.85s

    avrdude: 31980 bytes of flash written
    avrdude: verifying flash memory against ./mega328_color_kit.hex:
    avrdude: load data flash data from input file ./mega328_color_kit.hex:
    avrdude: input file ./mega328_color_kit.hex auto detected as Intel Hex
    avrdude: input file ./mega328_color_kit.hex contains 31980 bytes
    avrdude: reading on-chip flash data:

    Reading | ################################################## | 100% 31.26s

    avrdude: verifying ...
    avrdude: 31980 bytes of flash verified
    avrdude: reading input file "./mega328_color_kit.eep"
    avrdude: input file ./mega328_color_kit.eep auto detected as Intel Hex
    avrdude: writing eeprom (876 bytes):

    Writing | ################################################## | 100% 53.09s

    avrdude: 876 bytes of eeprom written
    avrdude: verifying eeprom memory against ./mega328_color_kit.eep:
    avrdude: load data eeprom data from input file ./mega328_color_kit.eep:
    avrdude: input file ./mega328_color_kit.eep auto detected as Intel Hex
    avrdude: input file ./mega328_color_kit.eep contains 876 bytes
    avrdude: reading on-chip eeprom data:

    Reading | ################################################## | 100% 13.51s

    avrdude: verifying ...
    avrdude: verification error, first mismatch at byte 0x0000
            0x20 != 0x49
    avrdude: verification error; content mismatch

    avrdude: safemode: Fuses OK (E:FC, H:D9, L:F7)

    avrdude done.  Thank you.

    ../finish.mk:174: recipe for target 'upload' failed
    make: *** [upload] Error 1

>$ make fuses-crystal

    avrdude -c avrisp -B 200 -b 19200 -p m328p -P /dev/ttyUSB0  -U lfuse:w:0xf7:m -U hfuse:w:0xd9:m -U efuse:w:0xfc:m

    avrdude: AVR device initialized and ready to accept instructions

    Reading | ################################################## | 100% 0.08s

    avrdude: Device signature = 0x1e950f (probably m328p)
    avrdude: reading input file "0xf7"
    avrdude: writing lfuse (1 bytes):

    Writing | ################################################## | 100% 0.03s

    avrdude: 1 bytes of lfuse written
    avrdude: verifying lfuse memory against 0xf7:
    avrdude: load data lfuse data from input file 0xf7:
    avrdude: input file 0xf7 contains 1 bytes
    avrdude: reading on-chip lfuse data:

    Reading | ################################################## | 100% 0.03s

    avrdude: verifying ...
    avrdude: 1 bytes of lfuse verified
    avrdude: reading input file "0xd9"
    avrdude: writing hfuse (1 bytes):

    Writing | ################################################## | 100% 0.03s

    avrdude: 1 bytes of hfuse written
    avrdude: verifying hfuse memory against 0xd9:
    avrdude: load data hfuse data from input file 0xd9:
    avrdude: input file 0xd9 contains 1 bytes
    avrdude: reading on-chip hfuse data:

    Reading | ################################################## | 100% 0.03s

    avrdude: verifying ...
    avrdude: 1 bytes of hfuse verified
    avrdude: reading input file "0xfc"
    avrdude: writing efuse (1 bytes):

    Writing | ################################################## | 100% 0.03s

    avrdude: 1 bytes of efuse written
    avrdude: verifying efuse memory against 0xfc:
    avrdude: load data efuse data from input file 0xfc:
    avrdude: input file 0xfc contains 1 bytes
    avrdude: reading on-chip efuse data:

    Reading | ################################################## | 100% 0.03s

    avrdude: verifying ...
    avrdude: 1 bytes of efuse verified

    avrdude: safemode: Fuses OK (E:FC, H:D9, L:F7)

    avrdude done.  Thank you.

Checking with Board Detector:  

    Signature = 0x1E 0x95 0x0F 
    Processor = ATmega328P
    Flash memory size = 32768 bytes.
    LFuse = 0xF7 
    HFuse = 0xD9 
    EFuse = 0xFC 
    Lock byte = 0xFF 
    Clock calibration = 0x95 
    Bootloader in use: No
    EEPROM preserved through erase: No
    Watchdog timer always on: No
    Bootloader is 4096 bytes starting at 7000

    Bootloader:

    7000: 0xFF ...
    ...
    7FF0: 0xFF ...

    MD5 sum of bootloader = 0x3B 0xE4 0xDB 0x3F 0x50 0x38 0x57 0x15 0xDB 0x46 0xD3 0xAB 0xC4 0x97 0x3A 0x95 
    Bootloader MD5 sum not known.

    First 256 bytes of program memory:

    00: 0xB9 ...
    ...
    F0: 0xC4 ...

### Erasing chip and uploading with just make upload make

>$ avrdude -p m328p -P /dev/ttyUSB0 -c avrisp -b 19200 -e  
>
>$ make upload make

Checking with Board Detector:  

    Signature = 0x1E 0x95 0x0F 
    Processor = ATmega328P
    Flash memory size = 32768 bytes.
    LFuse = 0xF7 
    HFuse = 0xD9 
    EFuse = 0xFC 
    Lock byte = 0xFF 
    Clock calibration = 0x95 
    Bootloader in use: No
    EEPROM preserved through erase: No
    Watchdog timer always on: No
    Bootloader is 4096 bytes starting at 7000

    Bootloader:

    7000: 0xFF ...
    ...
    7FF0: 0xFF ...

    MD5 sum of bootloader = 0x3B 0xE4 0xDB 0x3F 0x50 0x38 0x57 0x15 0xDB 0x46 0xD3 0xAB 0xC4 0x97 0x3A 0x95 
    Bootloader MD5 sum not known.

    First 256 bytes of program memory:

    00: 0xB9 ...
    ...
    F0: 0xC4 ...

Fuses stay and has bootloader.  

## Erase avr flash memory 

>$ avrdude -p m328p -P /dev/ttyUSB0 -c avrisp -b 19200 -e

or  

>$ avrdude -p m328p -P /dev/ttyUSB0 -c avrisp -b 19200 -t
>
>avrdude> erase

## Misc notes

Don't pay this any attention  

Fuse bits  

>$ avrdude -p m328p -P /dev/ttyUSB0 -c avrisp -b 19200 -v -e -U efuse:w:0x05:m -U hfuse:w:0xD6:m -U lfuse:w:0xFF:m

Hex file and lock bits  

>$ avrdude -p m328p -P /dev/ttyUSB0 -c avrisp -b 19200 -v -e -U flash:w:hexfilename.hex -U lock:w:0x0F:m

-U lock:w:0x0F:m -U lfuse:w:0xff:m -U hfuse:w:0xde:m -U efuse:w:0x05:m  

I tried to re-program a problematic GM328 that was not possible to calibrate.
https://www.youtube.com/watch?v=JCP7oWG3D3w
No matter what mega328_GM328 version I used from https://www.mikrocontroller.net/...
I always get a white blank screen.  The fuses I used are: lfuse=0xF7 hfuse=0xD9 efuse=0xFF

https://saturn.ffzg.hr/rot13/index.cgi?avr_component_tester
avrdude -c usbasp -B 20 -p m328p -P usb  -U lfuse:w:0xf7:m -U hfuse:w:0xd9:m -U efuse:w:0x04:m

https://github.com/blurpy/transistor-tester
fuses_lo = 0xf7
fuses_hi = 0xd9
fuses_ext = 0xfc
lock_byte = 0xff
I use a TL866II Plus universal programmer together with the minipro open source software for Linux. See https://github.com/blurpy/minipro for more about how to use.
With the chip in the programmer, just run these commands:
Erase chip: minipro -p "ATMEGA328P@DIP28" -E
Write eeprom: minipro -p "ATMEGA328P@DIP28" -c data -w ComponentTester.eep -e
Write flash: minipro -p "ATMEGA328P@DIP28" -c code -w ComponentTester.hex -e
Write fuses: minipro -p "ATMEGA328P@DIP28" -c config -w ComponentTester.cfg -e
That should be it.

$ make fuses-crystal
avrdude -c avrispmkII -B 200  -p m328p -P usb  -U lfuse:w:0xf7:m -U hfuse:w:0xd9:m -U efuse:w:0xfc:m

/home/jon/.arduino15/packages/arduino/tools/avrdude/6.3.0-arduino17/bin/avrdude \
-C/home/jon/.arduino15/packages/arduino/tools/avrdude/6.3.0-arduino17/etc/avrdude.conf \
-v -patmega328p \
-cstk500v1 \
-P/dev/ttyUSB0 \
-b19200 \
-Uflash:w:/tmp/arduino_build_677961/st7735_demo.ino.hex:i

>$ avrdude -v -patmega328p -cstk500v1 -P/dev/ttyUSB0 -b19200 -Uflash:w:

### make upload make

First erase chip  

>$ avrdude -p m328p -P /dev/ttyUSB0 -c avrisp -b 19200 -e

Compile and upload  

>$ cd \<PATH_TO>/Software/ATmega328p_with_st7735/mega328_color_kit
>
>$ make upload make

Commands run by this  

>$ make
>
>$ avrdude -c avrisp -B 1.0 -b 19200 -p m328p -P /dev/ttyUSB0 -U flash:w:./mega328_color_kit.hex:a \
>-U eeprom:w:./mega328_color_kit.eep:a

Upload of EEPROM failed.  

    avrdude: 876 bytes of eeprom written
    avrdude: verifying eeprom memory against ./mega328_color_kit.eep:
    avrdude: load data eeprom data from input file ./mega328_color_kit.eep:
    avrdude: input file ./mega328_color_kit.eep auto detected as Intel Hex
    avrdude: input file ./mega328_color_kit.eep contains 876 bytes
    avrdude: reading on-chip eeprom data:

    Reading | ################################################## | 100% 13.51s

    avrdude: verifying ...
    avrdude: verification error, first mismatch at byte 0x0000
            0x20 != 0x49
    avrdude: verification error; content mismatch

My compiled version of the .eep file are identical with the precompiled in the svn,  
and so is the .hex.  

Trying a dump of the .hex and .eep  

>$ avrdude -p m328p -P /dev/ttyUSB0 -c avrisp -b 19200 -v -U flash:r:flash.hex:i -U eeprom:r:eeprom.eep:i

Running diffs  

>$ diff mega328_color_kit.hex flash.hex | wc -l

    3003

>$ diff mega328_color_kit.eep eeprom.eep | wc -l

    91

Trying a new chip  

>$ make clean
>
>$ avrdude -p m328p -P /dev/ttyUSB0 -c avrisp -b 19200 -e
>
>$ make upload make
>
>$ avrdude -p m328p -P /dev/ttyUSB0 -c avrisp -b 19200 -v -U flash:r:flash2.hex:i -U eeprom:r:eeprom2.eep:i
>
>$ diff mega328_color_kit.hex flash2.hex | wc -l

    3003

>$ diff mega328_color_kit.eep eeprom2.eep | wc -l

    91

>$ make fuses-crystal
