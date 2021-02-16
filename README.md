# avrComponentTester

Adapted from project at [https://www.mikrocontroller.net/articles/AVR_Transistortester](https://www.mikrocontroller.net/articles/AVR_Transistortester)

## Download repository

>$ git clone [https://github.com/jonsag/avrComponentTester.git](https://github.com/jonsag/avrComponentTester.git)

## Hardware

### Programmer

You will need an avr programmer like [this one](https://github.com/jonsag/ardAVRProgrammer).  

If you use an another programmer you will have to adapt the avrdude -c switch in the commands below.  

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

>$ avrdude -p m328p -P /dev/ttyUSB0 -c avrisp -b 19200 -v -U flash:w:optiboot_atmega328p.hex:i

Clean up  

>$ make clean

#### Tester software

Compile software  

>$ cd \<PATH_TO>/Software/ATmega328p_with_st7735/mega328_color_kit
>
>$ make

This creates four new files:  

    mega328_color_kit.eep
    mega328_color_kit.hex
    mega328_color_kit.lss
    mega328_color_kit.map

and a directory with lots of files in:

    ../Obj/

Upload software  

>$ avrdude -p m328p -P /dev/ttyUSB0 -c avrisp -b 19200 -v -D -U flash:w:mega328_color_kit.hex

Set fuses  

>$ avrdude -p m328p -P /dev/ttyUSB0 -c avrisp -b 19200 -U lock:w:0xFF:m -U lfuse:w:0xf7:m -U hfuse:w:0xd9:m -U efuse:w:0xfc:m

#### Alternative to bootlader and software upload

If you are using another programmer than Arduino as ISP you have to adapt the Makefile accordingly.  

>$ cd \<PATH_TO>/Software/ATmega328p_with_st7735/mega328_color_kit
>
>$ make upload make

Write fuses  

>$ make fuses-crystal

Clean up  

>$ make clean

## Resources

### Fuse bits

Fuse bit calculator  

[https://www.engbedded.com/fusecalc/](https://www.engbedded.com/fusecalc/) 

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

More on [this page](https://www.nongnu.org/avrdude/user-manual/avrdude_4.html),  

and [here](https://embedds.com/all-you-need-to-know-about-avr-fuses/).  
#### Erase avr flash memory

>$ avrdude -p m328p -P /dev/ttyUSB0 -c avrisp -b 19200 -v -e

or  

>$ avrdude -p m328p -P /dev/ttyUSB0 -c avrisp -b 19200 -t

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

Read EEPROM  

>$ avrdude -p m328p -P /dev/ttyUSB0 -c avrisp -b 19200 -v -U flash:r:filename.hex:i  

Read flash  

>$ avrdude -p m328p -P /dev/ttyUSB0 -c avrisp -b 19200 -v -U eeprom:r:filename.hex:i  

Read fuse bits  

>$ avrdude -p m328p -P /dev/ttyUSB0 -c avrisp -b 19200 -v lfuse:r:-:i
>
>$ avrdude -p m328p -P /dev/ttyUSB0 -c avrisp -b 19200 -v hfuse:r:-:i
>
>$ avrdude -p m328p -P /dev/ttyUSB0 -c avrisp -b 19200 -v efuse:r:-:i

