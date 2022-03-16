# NewtonROMReader

This archive contains the PCB layout and firmware source code for my Apple 
Newton MessagePad ROM board reader/programmer.

The Newton ROM Reader reads the contents of Apple MessagePad MP2x00 ROM
boards. Besides the well known US and German ROM, this programmer can read 
prototype ROM boards for further research.

Using the alternative Flash ROM Board, the ROM Reader can also program the
Flash chips and create new ROM Boards with patched or alternative 
operating systems. 

## Versions

### Version 0.1 

The initial version is 0.1 which can erase, write, and verify the first ROM 
block and supports SD Cards.

### Version 0.2 

Version 0.2 is obsolete.

### Version 0.3 

Version 0.3 was mostly rewritten, adding support for USB Drives that can be 
connected to the native USB port via OTG cable. If no SD Card is found, we
check for a connected USB Drive. USB and SD drives can be hot swapped.

Menus were restructured, and menu commands were changed (sorry about that).
There is no longer a confirmation required for any operation, making it 
very easy to erase or overwrite a ROM with one keypress.

Pins are now set to inputs with a pullup after every operation, making an
accidental removal of a ROM card without powering down less harmful 
for the card.

## CAUTION

 - Use an original Arduino Due. Do *NOT* use a Mega 2560!
 - Never insert or remove the ROM card while the programmer is powered!
 - All operations are final! There is no undo! There is no confirmation.

## Reader/Programmer

Assembling the Programmer requires some advanced soldering skills. The pin 
headers must be soldered around the outside of the board facing down. They 
must be flush with the PCB on the top, or the ROM board will not fit.

The SD Card connector is soldered to the underside of the board. The top
of the connector should be insulated using an ample amount of tape, avoiding
a short circuit with header pins on the Arduino. ALternatively, the colliding
pins on the Arduino board can be cut off.

The DIMM memory socket is more difficult to solder. The pin pitch is relatively
small. To make sure that the soldering is correct, the first tool to run
in the Programmer should be the short circuit test.

The last solder part is easy, but must not be forgotten. It's a jumper that 
sets the power to 3.2V. Connect the two eyes marked with an asterisk (*).

```
:
:   Lower left corner of the PCB
|
| ooo ooo
| ooo **o
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
Programming USB port (57600bps/baud 8N1).

## Firmware Source Code

The source code comes as an Arduino sketch `.ino` file and a number of 
additional source and header files. The "SdFat" library by Bill Greimann must be 
installed within the Arduino system `Tools > Manage Libraries...`.

Load the `.ino` file and set the board to `Arduino Due (Programming Port)`, 
then choose the right port from the `Tools > Port` menu.

Open the serial monitor `Tools > Serial Monitor` and press `Ctrl-U` to upload
the firmware to the Programmer.  

## PCB Layout

The Programmer PCB was designed with Eagle CAD 7.7.0 Stadard Edition. It's a
two layer board with no exeptional requirements.

The SO-DIMM 72 modules are not very common anymore and are somewhat hard to 
find. The SD Card socket is a standard SMD part. Pin headers should be 
square shaped to fit the Arduino receptables well.

## Usage

The Programmer writes a 90's style menu over the USB serial port connection.
Functions can be selected by typing the command key and Return. 

 - `h`: Check all connectors on the board for short circuits. This tool helps
        verifying that there are no bridges in the SO DIMM connector soldering.
        *Never run this command with a ROM board or SD Card inserted!*
 - `0`: Select the ROM area from 0x00000000 to 0x00800000 which corresponds
        to the regular ROM and Apple system ROM extension (REx).
 - `1`: This page can be programmed with an extension block of up to 8MB.
 - `2`, `3`: Experimental blocks. These should be mapped to 0x10000000 and 
        can contain 8MB extensions each. This however is not yet verified.
 - `p`: Print the contents of the Flash as a hex dump with ASCII. Pressing 
        `return` will print the next block. Pressing any other key followed
        by `enter` will bring you back to the main menu. 
 - `c`: Check if the Flash memory is empty (all addresses return 0xFFFFFFFF).
 - `e`: Erase all sectors in the selected Flash area.
 - `w`: Write the content of a file on SD card or on an USB Drive to the 
        current Flash page. Filenames for pages 0 to 3 are set to "rom.bin",
        "rex1.bin", "rex2.bin", and "rex3.bin".
 - 'v': Verify the Flash content with the corresponding file on SD Card or 
        USB Drive.
  
## ToDo's

 - the SO DIMM footprint is really hard to solder, the pads are too big and 
   solder tends to short the pins
 - the LED can not be controlled because it is connected to a ROM Board output
 - address and data pins should be connected to 32 bit registers, making the 
   pin-by-pin addressing obsolete and the programmer much faster
 - the SPI port should be connected to a hardware SPI
 - there should be an option for a display and four buttons
 - the SD Card connecter must have pull-ups on most pins, and the Card 
   Detect and Write Protect pins should be connected to some pin
 
