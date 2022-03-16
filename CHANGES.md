## Versions

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

### Version 0.2 

Version 0.2 is obsolete.

### Version 0.1 

The initial version is 0.1 which can erase, write, and verify the first ROM 
block and supports SD Cards.
