# avrComponentTester

Adapted from project at [https://www.mikrocontroller.net/articles/AVR_Transistortester](https://www.mikrocontroller.net/articles/AVR_Transistortester)

## Download repository

>$ git clone [https://github.com/jonsag/avrComponentTester.git](https://github.com/jonsag/avrComponentTester.git)

## Hardware

### Programmer

You will need an avr programmer like [this one](https://github.com/jonsag/USBaspProgrammer), or perhaps [this one](https://github.com/jonsag/ardAVRProgrammer).  

I'm using the first of these two.  
If you use an another programmer you will have to adapt the avrdude -c switch in the commands below, and change some lines in the Makefile.  

### Components tester

Look in directory  

    KiCAD/avrComponentTester-Jose_Miquel_2-layer

There you will find schematics and PCB layout.  

In the directory  

    KiCAD/avrComponentTester-Jose_Miquel_2-layer/Gerber

you will find a zip file for PCB manufacturing.  

## Software

### Prerequisites

#### Install and prepare avrdude

>$ sudo apt install make binutils-avr avrdude avr-libc gcc-avr cross-avr-gcc9  
>
>$ usermod -a -G dialout,plugdev $USER  

You have to log out user to make new groups available.  

### ATmega328P with ST7735 1.8" OLED screen

#### Adapt software

In Makefile, uncomment line 62 to change direction of the rotary encoder  

    CFLAGS += -DCHANGE_ROTARY_DIRECTION

In autoconf.h, lines 169 and 172:  

    #define R_L_VAL 6800
    ...
    #define R_H_VAL 47000

Set values to match your resistors, ie:  

    #define R_L_VAL 6790
    ...
    #define R_H_VAL 46900

#### Tester software

>$ cd \<PATH_TO>/Software/ATmega328p_with_st7735/mega328_color_kit
>
>$ make upload

Write fuses  

>$ make fuses-crystal

Clean up  

>$ make clean

#### Alternative method

Compile software  

>$ make

This creates four new files:  

    mega328_color_kit.eep
    mega328_color_kit.hex
    mega328_color_kit.lss
    mega328_color_kit.map

and a directory with lots of files in:

    ../Obj/

Upload software and EEPROM

>$ avrdude -p m328p -P usb -c usbasp -B 20 -v -U flash:w:mega328_color_kit.hex -U eeprom:w:mega328_color_kit.eep

Set fuses  

>$ avrdude -p m328p -P usb -c usbasp -B 20 -v -U lfuse:w:0xF7:m -U hfuse:w:0xD9:m -U efuse:w:0xFC:m

Clean up  

>$ make clean

## Resources

### Fuse bits

Fuse bit calculator [here](https://www.engbedded.com/fusecalc/).  

Some reading [here](https://embedds.com/all-you-need-to-know-about-avr-fuses/).  

### avrdude

Some avrdude switches:

    -p partno; what type of part that is connected to the programmer
    -P port; port to identify the device to which the programmer is attached
    -c programmer-id; the programmer to be used
    -b baudrate; override the RS-232 connection baud rate
    -e ; causes a chip erase to be executed
    -F ; override device signature check
    -B bitclock; specify the bit clock period for the JTAG interface or the ISP clock
    -D ; disable auto erase for flash
    -v ; enable verbose output, more -v options increase verbosity level
    -U <memtype:op:filename[:format]>
        flash; the flash ROM of the device
            w; read the specified file and write it to the specified device memory
        lock; the lock byte
        efuse; the extended fuse byte
        hfuse; the high fuse byte
        lfuse; the low fuse byte
        boot; the boot flash area of ATxmega devices
    -t ; enter the interactive “terminal” mode

More on [this page](https://www.nongnu.org/avrdude/user-manual/avrdude_4.html).  

#### Erase avr flash memory

>$ avrdude -p m328p -P usb -c usbasp -B 20 -v -e

or  

>$ avrdude -p m328p -P usb -c usbasp -B 20 -v -t

    avrdude: AVR device initialized and ready to accept instructions

    Reading | ################################################## | 100% 0.08s

    avrdude: Device signature = 0x1e950f (probably m328p)
    avrdude> erase
    >>> erase 
    avrdude: erasing chip
    avrdude> quit
    >>> quit 

    avrdude: safemode: Fuses OK (E:FD, H:DF, L:FF)

    avrdude done.  Thank you.

#### Read from MCU to file

Read flash  

>$ avrdude -p m328p -P usb -c usbasp -B 20 -v -U flash:r:flash.hex:i  

Read EEPROM  

>$ avrdude -p m328p -P usb -c usbasp -B 20 -v -U eeprom:r:eeprom.eep:i  

Read fuse bits  

>$ avrdude -p m328p -P usb -c usbasp -B 20 -U lfuse:r:-:i -U hfuse:r:-:i -U efuse:r:-:i

#### Bootloader

Build bootloader  

>$ cd \<PATH_TO>/Bootloader/optiboot
>
>$ make atmega328p AVR_FREQ=8000000 BAUD_RATE=9600 LED_START_FLASHES=0 LED_DATA_FLASH=1

Now you got six new files:  

    baudcheck.tmp.sh
    optiboot_atmega328p.hex
    optiboot_atmega328p.log
    optiboot/optiboot_atmega328p.lst
    optiboot.elf
    optiboot.o

Burn bootloader  

>$ avrdude -p m328p -P usb -c usbasp -B 20 -v -U flash:w:optiboot_atmega328p.hex:i

Clean up  

>$ make clean
