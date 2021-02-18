# Experiencews with USBasp programmer

## ATmega328P factory settings

Probably  

    LFuse = 0x62  
    HFuse = 0xD9  
    EFuse = 0xFF  
    Lock byte = 0xFF  
    Clock calibration = 0x95

## Testing a chip previously programmed

>$ cu -l /dev/ttyACM0 -s 115200

    Atmega chip detector.
    Written by Nick Gammon.
    Version 1.20
    Compiled on Feb 15 2021 at 16:17:48 with Arduino IDE 10813.
    Attempting to enter ICSP programming mode ...
    Entered programming mode OK.
    Signature = 0x1E 0x95 0x0F 
    Processor = ATmega328P
    Flash memory size = 32768 bytes.
    LFuse = 0xF7 
    HFuse = 0xD9 
    EFuse = 0xFC 
    Lock byte = 0xFF 
    Clock calibration = 0x8C 
    Bootloader in use: No
    EEPROM preserved through erase: No
    Watchdog timer always on: No
    Bootloader is 4096 bytes starting at 7000

    Bootloader:

    7000: 0xFF 0x92 0xFC 0x01 0x4C 0x01 0xA1 0x2C 0xB1 0x2C 0x74 0x01 0xDD 0x24 0xCC 0x24 
    ...
    7FF0: 0xFF 0xFF 0xFF 0xFF 0xFF 0xFF 0xFF 0xFF 0xFF 0xFF 0xFF 0xFF 0xFF 0xFF 0xFF 0xFF 

    MD5 sum of bootloader = 0x3B 0xE4 0xDB 0x3F 0x50 0x38 0x57 0x15 0xDB 0x46 0xD3 0xAB 0xC4 0x97 0x3A 0x95 
    Bootloader MD5 sum not known.

    First 256 bytes of program memory:

    00: 0xB9 0xC6 0x00 0x00 0xC9 0xC6 0x00 0x00 0xC7 0xC6 0x00 0x00 0xC5 0xC6 0x00 0x00
    ...
    F0: 0xC4 0xB8 0x84 0xFF 0x1A 0xC0 0xA8 0xE1 0x00 0x00 0xAA 0x95 0xF1 0xF7 0xEF 0x93 

    Programming mode off.

Fuses are now  

    LFuse = 0xF7 
    HFuse = 0xD9 
    EFuse = 0xFC 
    Lock byte = 0xFF 
    Clock calibration = 0x8C

## Trying to read chip with USBasp

Chip must have 8Mhz crystal on pins 9 and 10.

>$ avrdude -p m328p -P usb -c usbasp -B 20 -v -U flash:r:flash.hex:i -U eeprom:r:eeprom.eep:i

Diffs  

>$ diff mega328_color_kit.hex flash.hex | wc -l

    3003

>$ diff mega328_color_kit.eep eeprom.eep | wc -l

    91

## Testing with some makes

>$ make verify

Produces an error  

>$ make clean
>
>$ make upload make

Fuses are now  

    ... Fuses OK (E:FC, H:D9, L:F7)

Runs OK  

>$ make verify

All is OK  

>$ make fuses-crystal

Fuses are now  

    ... Fuses OK (E:FC, H:D9, L:F7)

Setting other fuses

>$ make fuses

Now fuses are  

    ... Fuses OK (E:FC, H:D9, L:E2)

Setting back to crystal and verifying

>$ make fuses-crystal
>
>$ make verify

All is OK  
