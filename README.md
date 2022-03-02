# NewtonROMReader

Source code and layout for an Apple Newton MessagePad ROM board reader/writer.

The Newton ROM Reader reads the contents of Apple's MessagePad MP2x00 ROM
boards. Besides the well know US and German ROM, we were able to read 
prototype ROM boards for further research.

Using the alternative Flash ROM Board, the ROM Reader can also program the
Flash chipd and create new ROM Boards with patched or alternative 
operating systems. 

## Reader/Programmer

Assembling the Programmer requires some advanced soldering skills. The pin 
headers must be soldered around the outside of the board facing down. They 
must be flush with the PCB on the top, or the ROM board will not fit.

The SD Card connector is soldered to the underside of the board. The top
of the connector should be insulated using an ample amount of tape, avoiding
a short circuit with header pins on the Arduino.

The DIMM memory socket is more difficult to solder. The pin pitch is relatively
small. To make sure that the soldering is correct, the first tool to run
in the Programmer should be the short circuit test.

The last solder part is easy, but must not be forgotten. It's a jumper that 
set the power to 3V. Connect the two eyes marke with an asterisk (*).

```
| Lower left corner of the PCB
|
| ooo ooo
| ooo **o
|     ...... ........
+---------------------
``` 

The Programmer board should be mounted on an Arduino Due. It *MUST NOT* be 
used with an Arduino Mega 1280/2560. The Mega runs at 5V and will likely
destroy any ROM, Flash, or SD card inserted into the Programmer. The Due runs
at the required 3V. If the large USB-A port of the Arduino blocks access to the
SD Card slot, you have the wrong board!

The Programmer communicates with the user via USB connection to the Programming
port. No extra power connection is required. There is no extra software for
the Programmer. User must use a serial terminal program to connect to via the 
USB line (57600bps/baud 8N1).

## Firmware Source Code

The source code comes in an Arduino sketch. The "SdFat" library must be 
installed within the Arduino system, and `SPI_DRIVER_SELECT` must be set to `2`
in the `<SdFat.h>` header file.

Load the `.ino` file and set the board to 'Arduino Due (Programming Port)`, 
then chose the right port from the `Tools > Port` menu.

Open the serial monitor `Tools > Serail Monitor` and press `Ctrl-U` to upload
the firmware to the Programmer.  

## PCB Layout

The Programmer PCB was designed with Eagle CAD 7.7.0 Stadard Edition. It's a
two layer board with no exeptional requirements.

The SO-DIMM 72 modules are not very common anymore and are somewhat hard to 
find. The SD Card socket is a standard SMD part. Pin headers shoudl be 
square shaped to fit the Arduino receptables well.

## Usage

The Programmer writes a 90's style menu over the USB serial port connection.
Functions can be selected by typing the command key and Return. Most commands
will require confimation of the status of the programmer. Type "ok" and 
Return to confirm your setup.

 - `s`: Check all connectors on the board fro short circuits. This tool helps
        verifying that there are no bridges in the DIMM connector soldering.
 - `e`: Check if the Flash memory is empty (all addresses return 0xFFFFFFFF).
 
  
