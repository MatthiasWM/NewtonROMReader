
# Building the Hardware and Installing Software Components

 - Building the Newton ROM Reader PCB
 - Building the Newton ROM Reader firmware
 - Building the DCL Tools and Rex to generate ROM Extensions
 - (not yet) Installing the ARM Cross Assembler to Patch ROMs

## Building the Newton ROM Reader PCB

V1 of the ROM Reader PCB has a few issues, some of them are easy to fix, some are a bit more difficult.

Assembling the Programmer requires some advanced soldering skills. The pin 
headers must be soldered around the outside of the board facing down. They 
must be flush with the PCB on the top, or the ROM board will not fit.

The SD Card connector is soldered to the underside of the board. The top
of the connector should be insulated using an ample amount of tape, avoiding
a short circuit with header pins on the Arduino. Alternatively, the colliding
pins on the Arduino board can simply be cut off.

The DIMM memory socket is more difficult to solder. The pin pitch is relatively
small and the pads of the V1 board are too big. To make sure that the soldering 
is correct, the first tool to run in the Programmer should be the short circuit test.

There are three bridges that must be soldered. To amke sure that the board runs at
3.2V, a jumper that must be soldered, connecting the pins marked `1`. Two 10k 
resistors must be soldered, one connecting the pins marked `2`, and one connecting 
the pins marked `3`. Without resistors, the SD Card interface will not work
(Thanks to PCBman for finding this). 

The programmer will still recognize FAT32 fomatted USB Sticks, connect to the native
USB port via OTG cable.

```
:
:   Lower left corner of the PCB
|
| oo3 o22
| 3oo 11o
|     ...... ........
+--------------------- - -
``` 

The Programmer board should be mounted on an Arduino Due. It *MUST NOT* be 
used with an Arduino Mega 1280/2560. The Mega runs at 5V and will likely
destroy any ROM, Flash, or SD card inserted into the Programmer. The Due runs
at the required 3.2V. If the large USB-A port of the Arduino blocks access to 
the SD Card slot, you have the wrong board!

The Programmer communicates with the user via USB connection to the Programming
port. No extra power connection is required. There is no extra software for
the Programmer. Users must use a serial terminal program to connect via the 
Programming USB port (57600 bps/baud 8N1).

## Building the Newton ROM Reader firmware

To compile this firmware for the Newton ROM Programmer:

Downlaod and install the Arduino IDE (the developer environment) from [arduino.cc](https://www.arduino.cc/en/software).

Install the SdFat library by Bill Greiman, using the Arduino IDE menu `Tools > Manage Libraries...`.

Select the correct board via `Tools > Board > Arduino ARM 32 > Arduino Due (Programming Port)`. 
Connect to the Due `Programming Port` via USB and select the serial port `Tools > Port`.

Downlaod this project as a zip file or with `git clone`.
The archive *must* be located in a directory named `NewtonRomReader`. 
The Arduino IDE insists. Make sure you write `Rom`, not `ROM` in the filename
(Thanks to Pawel for finding this).

Open the `NewtonRomReader.ino` file in the Arduino developer environment.
It will open a single window with 12 or more  tabs for all the other source code files.

Press `Ctrl-R` (`Cmd-R` on Mac) and the program should compile (there may be warnings, but no errors).
Connect your Due and press `Ctrl-U` (`Cmd-U` on Mac) to upload your firmware into your Programmer.

Open the Serial Monitor that is part of the Arduino IDE (`Shift-Ctrl-M`, `Shift-Cmd-M`) and set the speed to 57600 baud.
You should see the ROM Programmer's menu on the serial port screen.

```
==============================
  Newton ROM Programmer V0.4
==============================

  h:  hardware test
  ...
```

Please run the hardware test before inserting any cards or testing anything else. If short circuits are found, brushing a dry 
toothbrush along the backside of the SO DIMM connector (the lengthy connector for the ROM Board) may fix the shorts.

## Building the DCL Tools and Rex to generate ROM Extensions

If you are planning to add Newton apps onto the ROM board, you need to get familiar with the _Rex_ tool. 
Rex is a command line tool that is part of the DCL toolbox. Compile and install Rex from the command line.

You will need to install [CMake](https://cmake.org/download/) and a C++ build environemnt (_Xcode_ on macOS, _VisualStudio_ on MSWindows,
_gcc_ on Linux).

```
# Download the source coee form GitHub:
git clone https://github.com/pguyot/DCL.git DCL.git
# Enter the source coee directory
cd DCL.git/
# Configure the build environment 
cmake -S . -B build -DCMAKE_BUILD_TYPE=Debug
# Build the library and the apps in DCL
cmake --build build/
# Installe Rex and other tools on your machine
cmake --install build/
```

Building a ROM Extension is explained [here](https://github.com/MatthiasWM/NewtonROMReader/wiki/Build-a-ROM-Extension).

## (todo) Installing the ARM Cross Assembler to Patch ROMs


