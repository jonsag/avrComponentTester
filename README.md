# avrComponentTester

Adapted from project at [https://www.mikrocontroller.net/articles/AVR_Transistortester](https://www.mikrocontroller.net/articles/AVR_Transistortester)

## Download repository

>$ git clone [https://github.com/jonsag/avrComponentTester.git](https://github.com/jonsag/avrComponentTester.git)

## Hardware

Look in directory  

    KiCAD/avrComponentTester-Jose_Miquel_2-layer

There you will find schematics and PCB layout.  

In the directory  

    KiCAD/avrComponentTester-Jose_Miquel_2-layer/Gerber

you will find a zip file for PCB manufacturing.  

## Software

### Install and prepare avrdude

>$ sudo apt install make binutils-avr avrdude avr-libc gcc-avr cross-avr-gcc9  
>
>$ usermod -a -G dialout,plugdev $USER  

Some avrdude switches:

    -p partno; what type of part that is connected to the programmer
    -P port; port to identify the device to which the programmer is attached
    -c programmer-id; the programmer to be used
    -b baudrate; override the RS-232 connection baud rate
    -e ; causes a chip erase to be executed
    -F ; override device signature check
    -B bitclock; specify the bit clock period for the JTAG interface or the ISP clock
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

To erase flash memory (bootloader):  

>$ avrdude -p m328p -P /dev/ttyUSB0 -c avrisp -t
>
>avrdude> erase

### ATmega328P with ST7735 1.8" OLED screen

#### Fuse bits

Fuse bit calculator  

[https://www.engbedded.com/fusecalc/](https://www.engbedded.com/fusecalc/)  

#### Bootloader

Perhaps bootloader isn't needed for ATmega328?  

Build bootloader  

>$ cd Bootloader/optiboot
>
>$ make atmega328p AVR_FREQ=8000000 BAUD_RATE=9600 LED_START_FLASHES=0

Now you got six new files:  

    baudcheck.tmp.sh
    optiboot_atmega328p.hex
    optiboot_atmega328p.log
    optiboot/optiboot_atmega328p.lst
    optiboot.elf
    optiboot.o

Burn bootloader  

>$ avrdude -p m328p -P /dev/ttyUSB0 -c avrisp -b 9600 -v -U flash:w:optiboot_atmega328p.hex:i -U lock:w:0x0F:m -U lfuse:w:0xff:m -U hfuse:w:0xde:m -U efuse:w:0x05:m

(or  

>$ avrdude -p m328p -P /dev/ttyUSB0 -c avrisp -b 9600 -v -e -U flash:w:optiboot_atmega328p.hex -U lock:w:0x0F:m

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

This creates four new files:  

    mega328_color_kit.eep
    mega328_color_kit.hex
    mega328_color_kit.lss
    mega328_color_kit.map

and a directory with lots of files in:

    ../Obj/

Upload software  

>$ avrdude -p m328p -P /dev/ttyUSB0 -c avrisp -b 9600 -U flash:w:mega328_color_kit.hex

Alternative  

Skip the above 'make' and 'avrdude ...', and instead do  

>$ make upload make

Write fuses  

>$ make fuses-crystal

Clean up  

>$ make clean

## Misc notes

Don't pay this any attention  

Fuse bits  

>$ avrdude -p m328p -P /dev/ttyUSB0 -c avrisp -b 9600 -v -e -U efuse:w:0x05:m -U hfuse:w:0xD6:m -U lfuse:w:0xFF:m

Hex file and lock bits  

>$ avrdude -p m328p -P /dev/ttyUSB0 -c avrisp -b 9600 -v -e -U flash:w:hexfilename.hex -U lock:w:0x0F:m

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
