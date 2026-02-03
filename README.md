# Six button Sega Mega Drive / Genesis controller board

This repository contains a KiCad project for a six button Sega Mega Drive / Genesis controller board as well as ATTiny404 micro controller code to implement a replacement for the 6 button Sega Mega Drive controller's custom chip. This board is also compatible with the ZX Spectrum Next and its clones.

**Note: the `main` HEAD is not necessarily tested! Tested revisions of the board+firmware will be tagged**

## How do I program the controller?

**DISCLAIMER: This project is provided "as is" for educational purposes only. The authors shall not be held liable for any damage to equipment, data loss, or personal injury incurred through the assembly or use of this project. Proceed at your own risk.**

The ATtiny404 uses UPDI (Unified Program and Debug Interface) for programming, not ISP like older AVR MCUs. 

There are several ways to program the ATtiny404 but probably the most affordable way is to use **avrdude** with a USB serial adapter. serialupdi mode has been supported by **avrdude** since v7.

You will need the following:

* A USB serial adapter such as the [FTDI FT232](https://www.amazon.co.uk/dp/B07BBPX8B8)
* A 4.7 KOhm resistor. A resistor in the range of 3.3K to 10KOhm should be fine if you don't have a 4.7KOhm resistor.
* 5x female to female jumper (DuPont) wires.

The +5V and GND headers are wired directly from the serial adapter to the UPDI header. You must create a "Y" jumper cable that connects both the RX and TX pins on your serial adapter to the single UPDI pin on the controller PCB.

The UPDI pin is the bottom left UPDI header pin that has the square footprint in this schematic screenshot. The resistor needs to be connected to the TX wire of your Y cable. Ensure that your serial adapter voltage selection header is set to 5V.

![UPDI header schematic](images/UPDI-header-pinout.png)

![USB serial to UPDI header wiring](images/UPDI-wiring.jpg)

You should only need to have the ATtiny and the UPDI header soldered to the PCB to program it.

Once you have the board connected as shown above, you can program the firmware under Linux using:

```
avrdude  -p t404 -c serialupdi -P /dev/ttyUSB0 -U flash:w:main.hex
```

Or under Windows:

```
avrdude.exe -p t404 -c serialupdi -P COM6 -U flash:w:main.hex
```

Make sure you set the serial port device correctly by checking **dmesg** output under Linux or **Device Manager** under Windows.

## Building a joystick

The cable is connected to the J2 header using this pinout:

![Mega Drive controller cable pinout](images/Mega-Drive-connector-pinout.jpg)

Pin 1 on J2 and all of the chips is marked on the PCB silkscreen with a small white dot to the side of pin 1.

Here's photo of this board wired up to a Sanwa clone joystick and housed within a 3D printed [Uzebox fightstick](https://uzebox.org/wiki/Joystick) case:

![Sanwa joystick in Uzebox fightstick case](images/Wired--MD-controller.jpg)

## Credits

Schematic and ATtiny code by [R.F.Merrill](https://github.com/rfmerrill)

Silkscreen and documentation by [Dan MacDonald](https://github.com/danboid/)
