# avrComponentTester

Adaptions of project at https://www.mikrocontroller.net/articles/AVR_Transistortester

## Download repository

>$ git clone https://github.com/jonsag/avrComponentTester.git

## Hardware

Look in directory  

    KiCAD/avrComponentTester-Jose_Miquel_2-layer

There you will find schematics and PCB layout.  

In the directory  

    KiCAD/avrComponentTester-Jose_Miquel_2-layer/Gerber

you will find a zip file for PCB manufacturing.  

## Software

### Install and prepare avrdude

>$ sudo apt install make binutils-avr avrdude avr-libc gcc-avr  
>
>$ usermod -a -G dialout,plugdev $USER  

Some avrdude switches:

    -p partno; what type of part that is connected to the programmer
    -P port; port to identify the device to which the programmer is attached
    -c programmer-id; the programmer to be used
    -b baudrate; override the RS-232 connection baud rate
    -e ; causes a chip erase to be executed
    -F ; override device signature check
    -v ; enable verbose output, more -v options increase verbosity level
    -U <memtype:op:filename[:format]>
        flash; the flash ROM of the device
            w; read the specified file and write it to the specified device memory
        lock; the lock byte
        efuse; the extended fuse byte
        hfuse; the high fuse byte
        lfuse; the low fuse byte
        boot; the boot flash area of ATxmega devices

More on [this page](https://www.nongnu.org/avrdude/user-manual/avrdude_4.html).  
### ATmega328P with ST7735 1.8" OLED screen

#### Bootloader

Build bootloader  

>$ cd Bootloader/optiboot
>
>$ make atmega328p LED_START_FLASHES=0 LED_DATA_FLASH=1

Now you got several new files:  

    baudcheck.tmp.sh
    optiboot_atmega328p.hex
    optiboot_atmega328p.log
    optiboot/optiboot_atmega328p.lst
    optiboot.elf
    optiboot.o

Burn bootloader  

>$ avrdude -p m328p -P /dev/ttyUSB0 -c avrisp -b 19200 -v -U flash:w:optiboot_atmega328p.hex:i -U lock:w:0x0F:m -U lfuse:w:0xff:m -U hfuse:w:0xde:m -U efuse:w:0x05:m

(or  

>$ avrdude -p m328p -P /dev/ttyUSB0 -c avrisp -b 19200 -v -e -U flash:w:optiboot_atmega328p.hex -U lock:w:0x0F:m

or  

>$ avrdude -v -p atmega328p -c stk500v2 -P usb -U flash:w:optiboot_atmega328.hex:i -U lock:w:0x0F:m -U lfuse:w:0xff:m -U hfuse:w:0xde:m -U efuse:w:0x05:m  

)  

Clean up  

>$ make clean

#### Tester software

Compile software  

>$ cd Software/ATmega328p_with_st7735/mega328_color_kit
>
>$ make

This creates several new files:  

    mega328_color_kit.eep
    mega328_color_kit.hex
    mega328_color_kit.lss
    mega328_color_kit.map

and a directory with lots of files in:

    ../Obj/

Upload software  

>$ avrdude -p m328p -P /dev/ttyUSB0 -c avrisp -b 19200 -U flash:w:mega328_color_kit.hex

Clean up  

>$ make clean

## Misc notes

Don't pay this any attention  

Fuse bits  

>$ avrdude -p m328p -P /dev/ttyUSB0 -c avrisp -b 19200 -v -e -U efuse:w:0x05:m -U hfuse:w:0xD6:m -U lfuse:w:0xFF:m

Hex file and lock bits  

>$ avrdude -p m328p -P /dev/ttyUSB0 -c avrisp -b 19200 -v -e -U flash:w:hexfilename.hex -U lock:w:0x0F:m

-U lock:w:0x0F:m -U lfuse:w:0xff:m -U hfuse:w:0xde:m -U efuse:w:0x05:m  
