/*
 * To compile this frimware for the Newton ROM Programmer
 *  - downlaod and insatll the Arduino developer environment from arduino.cc
 *  - install the SdFat library by Bill Greiman (Sketch > Include Library > Manage Libraries...)
 *  - select the correct board (Tools > Board > Arduino ARM 32 > Arduino Due (Programming Port))
 *  - connect to the Due Programming Port via USB and slect the serial port (Tools > Port)
 *  - open this .ino file in the Arduino developer environment
 *  - press Ctrl-R (Cmd-R on Mac) and the program should compile (there may be warnings, but no errors)
 *  - press Ctrl-U (Cmd-U on Mac) to upload your frimware into your Due
 *  - open the built-in Serial Monitor (Shift-Ctrl-M, Shift-Cmd-M), set the speed to 57600 baud.
 *  - you should see the ROM Programmer's menu on the serial port screen.
 */

// TODO: change all outputs to high imp with pullups when not using a port/bus.
// TODO: remember if the user inserted the ROM board or the SD Card and don't ask unless we need changes
// TODO: dump ROM to SD Card

#include "NewtonROMReader.h"
#include "ROMCard.h"
#include "SDCard.h"
#include "menu.h"
#include "otg.h"

/**
 * Wait for a complete string, terminated by \n, while keeping the OTG system alive.
 * 
 * \return the string that was typed by the user, without the trailing \n.
 */
String serialReadString()
{
  String cmd;
//  int prevState = 0;
  for (;;) {
    if (uhgogo) {
      uhServer();
    }
//    if (uhstate.state!=prevState) {
//      printf("State changed from %d to %d\n", prevState, uhstate.state);
//      prevState = uhstate.state;
//    }
    if (Serial.available()>0) {
      char s = Serial.read();
      if (s=='\n')
        return cmd;
      cmd.concat(s);
    }
  }
}

/**
 * Print the name of a pin.
 * 
 * \param[in] i is *not* the pin number, but instead the position in the eggPin array.
 */
void printPin(int i)
{
  if (i > 44) {
    printf("A%d", i-43);
    return;
  }
  if (i > 12) {
    printf("D%d", i-13);
    return;
  }
  switch (i) {
    case 0: printf("SD_DO"); break;
    case 1: printf("SD_DI"); break;
    case 2: printf("SD_CLK"); break;
    case 3: printf("SD_CS"); break;
    case 4: printf("RESET"); break;
    case 5: printf("ROM_CS_0"); break;
    case 6: printf("ROM_CS_1"); break;
    case 7: printf("ROM_IO_RD"); break;
    case 8: printf("ROM_IO_WR"); break;
    case 9: printf("ROM_IO_INT"); break;
    case 10: printf("ROM_IO_RDY"); break;
    case 11: printf("POWER_ENABLE"); break;
    case 12: printf("SCLK"); break;
  }
}

// ---- CheckShortCicuits ------------------------------------

/**
 * Check if there are any short circuits between any of the
 * programmer pins and Vss.
 */
int testForShortCircuits()
{
  int nShorts = 0;
  
  printf("Check Programmer For Short Circuits...\n\n");
  
  // set all pins to input with pullup
  deactivateROMBus();
  deactivateSDBus();
  
  // check all pins for shortcuts agains ground
  printf("Testing for shorts to GND.\n");
  for (size_t i = 0; i < sizeof(eggPin); i++) {
    if (digitalRead(eggPin[i]) == 0) {
      printf("[ERROR] : Pin ");
      printPin(i);
      printf(" shorts with GND\n");
      nShorts++;
    }
  }
  
  // now check every pin against every other pin
  printf("Testing for shorts between pins.\n");
  for (size_t i = 0; i < sizeof(eggPin); i++) {
    digitalWrite(eggPin[i], 0);
    pinMode(eggPin[i], OUTPUT);
    for (size_t j = i + 1; j < sizeof(eggPin); j++) {
      if (digitalRead(eggPin[j]) == 0) {
        printf("[ERROR] : ");
        printPin(i);
        printf(" shorts with ");
        printPin(j);
        printf("\n");
        nShorts++;
      }
    }
    digitalWrite(eggPin[i], 1);
    pinMode(eggPin[i], INPUT_PULLUP);
  }

  // Give the user the result
  if (nShorts) {
    printf("\n[ERROR] : %d short circuits found.\n", nShorts);
    printf("[ERROR] : Please fix the board before using it.\n");
  } else {
    printf("\n[OK] : no short circuits found.\n");
  }

  return nShorts;
}

/**
 * User menu call to test board condition.
 */
void userCheckShortCicuits() {
  testForShortCircuits();
}

// ----------------------------------------------------------
// Verify the functions below.


// missing connection in Data lines: 00200000 => D21 = pin 48
// can't test all address lines without dumping the entire ROM

const  char *ascLut =
  "ABCDEFGHIJKLMNOP"
  "QRSTUVWXYZabcdef"
  "ghijklmnopqrstuv"
  "wxyz0123456789+/";


// 012345 670123 456701 234567 012345 67CCCC
void printEnc(unsigned long v)
{
  char d[7]; //, check = 0;
  d[0] = ascLut[v & 0x3f];
  v = v >> 6;
  d[1] = ascLut[v & 0x3f];
  v = v >> 6;
  d[2] = ascLut[v & 0x3f];
  v = v >> 6;
  d[3] = ascLut[v & 0x3f];
  v = v >> 6;
  d[4] = ascLut[v & 0x3f];
  v = v >> 6;
  d[5] = ascLut[v & 0x3f];
  d[6] = 0;
  printf("%s", d);
}

void writeFlash(uint32_t addr, uint32_t data)
{
  if (addr & 0x00000003) {
    printf("[INTERNAL_ERROR] : writeFlash: address must be word aligned: 0x%08lx\n", addr);
    return;
  }
  writeWord(0x0555 << 2, 0x00AA00AA);
  writeWord(0x02AA << 2, 0x00550055);
  writeWord(0x0555 << 2, 0x00A000A0);
  writeWord(addr, data);
  // FIXME: read status register
  delay(10);
  uint32_t w = readWord(addr);
  if (w != data) {
    printf("[ERROR] : readback failed at 0x%08lx: 0x%08lx!=0x%08lx\n",
           addr, data, w);
  }
}

// ---- Print Memory -----------------------------------------

/**
 * Read 512 bytes from memory and print a hex dump.
 * 
 * \param[in] addr start printing from this address
 * \return true
 */
bool printMemoryBlock(uint32_t addr) 
{
  activateControlBus();
  activateAddressBus();
  activateDataBusRead();

  for (uint32_t i=0; i<512; i+=16) {
    printf("%08lx: ", addr+i);
    uint32_t data[4];
    for (uint32_t j=0; j<4; j++) {
      data[j] = readWord(addr + i + j*4);
    }
    for (uint32_t j=0; j<4; j++) {
      printf("%08lx", data[j]);
    }
    printf(" |");
    for (uint32_t j=0; j<4; j++) {
      uint8_t c = data[j]>>24;
      printf("%c", (c<32||c>126) ? '.' : c);
      c = data[j]>>16;
      printf("%c", (c<32||c>126) ? '.' : c);
      c = data[j]>>8;
      printf("%c", (c<32||c>126) ? '.' : c);
      c = data[j];
      printf("%c", (c<32||c>126) ? '.' : c);
    }
    printf("|\n");
  }

  deactivateDataBus();
  deactivateAddressBus();
  deactivateControlBus();

  return true;
}

/**
 * Interactively print memeory blocks for current page.
 */
void userPrintMemory()
{
  uint32_t addr = gPageList[gCurrentPage].pStart;
  for (;;) {
    printMemoryBlock(addr);
    printf("Press [return] to continue, 'a'+[return] to abort.\n");
    String s = serialReadString();
    if (s.length()!=0) return;
    addr += 512;
  }
}

// ---- Test Empty -------------------------------------------

/**
 * Check if a block of memory is empty, i.e. all 0xffffffff.
 * 
 * \param[in] inStart check starting at this address
 * \param[in] inEnd check up to this address
 * 
 * \return true if the block is empty
 */
bool checkEmpty(uint32_t inStart, uint32_t inEnd)
{
  bool aborted = false;
  bool empty = true;
  printf("Press Return to abort:\n");
  printf(".___.___.___.___.___.___.___.___.\n|");
  fflush(stdout);
  
  activateControlBus();
  activateAddressBus();
  activateDataBusRead();
  
  for (uint32_t addr = inStart; addr < inEnd; addr += 4) {
    uint32_t v = readWord(addr);
    if (v != 0xFFFFFFFF) {
      printf("\nValue mismatch at address 0x%08lx: 0x%08lx\n", addr, v);
      empty = false;
      break;
    }
    if (Serial.read() == '\n') {
      aborted = true;
      break;
    }
    if ((addr & 0x0003ffff) == 0) {
      printf(":"); 
      fflush(stdout);
    }
  }
  
  deactivateDataBus();
  deactivateAddressBus();
  deactivateControlBus();

  printf("\n");
  if (aborted)
    printf("[Aborted] : Test aborted by user.\n");
  else if (empty)
    printf("[OK] : Flash memory is empty and ready to be programmed.\n");
  else
    printf("[Warning] : Flash memory is not empty.\n");
    
  return empty;
}

// ---- Erase Flash Memory -----------------------------------

/**
 * Erase a block of memory (set it to all 0xffffffff).
 * 
 * \param[in] inStart erase process starting at this address
 * \param[in] inEnd erase up to this address
 * 
 * \return true if the erase op did not trigger an error
 */
bool eraseFlash(uint32_t inStart, uint32_t inEnd)
{
  // Status:     bit7==0 if busy
  // if bit7==1: bit5==0 if erase successful
  //             bit4==0 if programming was successful

  const int kEraseTimeout = 200;
  int err = 0;
  printf("Press Return to abort:\n");
  printf(".___.___.___.___.___.___.___.___.\n|");
  fflush(stdout);

  activateControlBus();
  activateAddressBus();
  activateDataBusRead();

  uint32_t addr;
  for (addr = inStart; addr < inEnd; addr += 0x00040000) {
    uint32_t w;
    // clear status register
    writeWord(0x0555 << 2, 0x00710071);
    // Erase a sector (sector size id 0x00040000):
    writeWord(0x0555 << 2, 0x00AA00AA);
    writeWord(0x02AA << 2, 0x00550055);
    writeWord(0x0555 << 2, 0x00800080);
    writeWord(0x0555 << 2, 0x00AA00AA);
    writeWord(0x02AA << 2, 0x00550055);
    writeWord(addr, 0x00300030);
    int i;
    for (i = 0; i < kEraseTimeout; i++) {
      // read status register
      writeWord(0x0555 << 2, 0x00700070);
      w = readWord(0);
      if ((w & 0x00800080) == 0x00800080)
        break;
      delay(10); // Typical erase time: 62 * 10us = .6 seconds
    }
    if (i == kEraseTimeout) { // operation timed out
      err = 1; // timeout
      break;
    }
    if ((w & 0x00200020) != 0x00000000) {
      err = 3; // erase operation failed
      break;
    }
    if (Serial.read() == '\n') {
      err = 2; // aborted
      break;
    }
    printf(":");
    fflush(stdout);
  }

  deactivateDataBus();
  deactivateAddressBus();
  deactivateControlBus();

  printf("\n");
  if (err==0) 
    printf("[OK] : Flash memory is erased and ready to be programmed.\n");
  else if (err==1)
    printf("[ERROR] : Timeout error at address 0x%08lx.\n", addr);
  else if (err==2)
    printf("[Aborted] : Operation aborted by user.\n");
  else if (err==3)
    printf("[ERROR] : Erase operation failed at address 0x%08lx.\n", addr);
    
  return (err==0);
}

// ---- Program ROM File -------------------------------------

/**
 * Program the contents of a file on SD Card or an OTG Drive to a block of Flash memory .
 * 
 * \param[in] inStart programming process starting at this address
 * \param[in] inEnd program up to this address or until the end of file
 * \param[in] inFilename write contents to this file
 * 
 * \return true if the write op did not trigger an error or warning
 */
bool programFlash(uint32_t inStart, uint32_t inEnd, String inFilename)
{
  const int kWriteTimeout = 100;
  int err = 0;
  bool useSD = true;
  FIL fd;

  if (initSDCard()==false) {
    if (uhstate.state!=UHSTAT_READY) {
      printf("[ERROR] : No SD card found, no USB drive found.\n");
      return false;
    }
    useSD = false;
  }

  if (useSD) {
    if (!file.open(inFilename.c_str(), O_RDONLY)) {
      printf("[ERROR] : Can't open file \"%s\" on SD card.\n", inFilename.c_str());
      return false;
    }
  } else {
    if (f_open(&fd, inFilename.c_str(), FA_READ) != 0) {
      printf("[ERROR] : Can't open file \"%s\" on USB drive.\n", inFilename.c_str());
      return false;
    }
  }
  
  printf("Press Return to abort:\n");
  printf(".___.___.___.___.___.___.___.___.\n|");
  fflush(stdout);
  
  activateControlBus();
  activateAddressBus();
  activateDataBusRead();

  const uint32_t nWords = 256;
  uint32_t addr;
  for (addr = inStart; addr < inEnd; addr += (4*nWords)) {
    // write sequence to prepare Flash for programming
    writeWord(0x0555 << 2, 0x00AA00AA);
    writeWord(0x02AA << 2, 0x00550055);
    writeWord(addr, 0x00250025); // addr should be SA
    writeWord(addr, ((nWords-1)<<16)|(nWords-1)); // addr should be SA, arg is number of words to write minus one
    // write buffer
    for (uint32_t j=0; j<nWords; j++) {
      uint32_t vFile = 0xffffffff;
      if (useSD) {
        int n = file.read(&vFile, 4);
        vFile = htonl(vFile);
        if (n==0) err = 4;
      } else {
        UINT n = 0;
        f_read (&fd, &vFile, 4, &n);
        vFile = htonl(vFile);
        if (n==0) err = 4;
      }
      writeWord(addr+(j<<2), vFile);
    }
    // confirm write
    writeWord(addr, 0x00290029); // addr should be SA
    // wait for operation to complete
    int t;
    uint32_t w;
    for (t = 0; t < kWriteTimeout; t++) {
      // read status register
      writeWord(0x0555 << 2, 0x00700070);
      w = readWord(0);
      if ((w & 0x00800080) == 0x00800080)
        break;
      delay(1); // There should be little to no delay needed.
    }
    if (t == kWriteTimeout) {
      err = 2; // timeout
      break;
    }
    if ((w & 0x00100010) != 0x00000000) {
      err = 3; // write operation failed
      break;
    }
    if (Serial.read() == '\n') {
      err = 1; // aborted
      break;
    }
    if (err==4)
      break;
    if ((addr & 0x0003ffff) == 0) {
      printf(":");
      fflush(stdout);
    }
  }

  deactivateDataBus();
  deactivateAddressBus();
  deactivateControlBus();

  if (useSD) {
    file.close();
    sd.end();
  } else {
    f_close(&fd);
  }

  printf("\n");
  if (err==0)
    printf("[OK] : Successfully programmed Flash memory with file contents.\n");
  else if (err==1)
    printf("[Aborted] : Operation aborted by user. Flash memory partially written.\n");
  else if (err==2)
    printf("[ERROR] : Write operation timed out at address 0x%08lx.\n", addr);
  else if (err==3)
    printf("[ERROR] : Write operation failed at address 0x%08lx.\n", addr);
  else if (err==4)
    printf("[Warning] : Successfully programmed Flash to end of file at address 0x%08lx.\n"
           "            Remaining memory unchanged.\n", addr);
    
  return (err==0);
}

// ---- Program ROM File -------------------------------------

/**
 * Verify a block of Flash memeory to a file on SD Card or an OTG Drive.
 * 
 * \param[in] inStart verification process starting at this address
 * \param[in] inEnd verify up to this address or until the end of file
 * \param[in] inFilename compare to this file
 * 
 * \return true if the erase op did not trigger an error
 */
bool verifyFlash(uint32_t inStart, uint32_t inEnd, String inFilename)
{
  int err = 0;
  bool useSD = true;
  FIL fd;

  if (initSDCard()==false) {
    if (uhstate.state!=UHSTAT_READY) {
      printf("[ERROR] : No SD card found, no USB drive found.\n");
      return false;
    }
    useSD = false;
  }

  if (useSD) {
    if (!file.open(inFilename.c_str(), O_RDONLY)) {
      printf("[ERROR] : Can't open file \"%s\" on SD card.\n", inFilename.c_str());
      return false;
    }
  } else {
    if (f_open(&fd, inFilename.c_str(), FA_READ) != 0) {
      printf("[ERROR] : Can't open file \"%s\" on USB drive.\n", inFilename.c_str());
      return false;
    }
  }
  
  printf("Press Return to abort:\n");
  printf(".___.___.___.___.___.___.___.___.\n|");
  fflush(stdout);
  
  activateControlBus();
  activateAddressBus();
  activateDataBusRead();
  
  uint32_t addr, vFile, vFlash;
  for (addr = inStart; addr < inEnd; addr += 4) {
    vFile = vFlash = 0xffffffff;
    if (useSD) {
      int n = file.read(&vFile, 4);
      vFile = htonl(vFile);
      if (n==0) {
        err = 3;
        break;
      }
    } else {
      UINT n = 0;
      f_read (&fd, &vFile, 4, &n);
      vFile = htonl(vFile);
      if (n==0) {
        err = 3;
        break;
      }
    }
    vFlash = readWord(addr);
    if (vFlash != vFile) {
      err = 2;
      break;
    }
    if (Serial.read() == '\n') {
      err = 1;
      break;
    }
    if ((addr & 0x0003ffff) == 0) {
      printf(":");
      fflush(stdout);
    }
  }
  
  deactivateDataBus();
  deactivateAddressBus();
  deactivateControlBus();

  if (useSD) {
    file.close();
    sd.end();
  } else {
    f_close(&fd);
  }

  printf("\n");
  if (err==0)
    printf("[OK] : Flash memory and file contents are the same.\n");
  else if (err==1)
    printf("[Aborted] : Operation aborted by user.\n");
  else if (err==2)
    printf("[ERROR] : Contents differs at address 0x%08lx (0x%08lx!=0x%08lx).\n", addr, vFlash, vFile);
  else if (err==3)
    printf("[Warning] : Contents is the same up to end of file at address 0x%08lx.\n"
           "            Remaining memory unchecked.\n", addr);
    
  return (err==0);
}

void verifyFlash(Page &inPage)
{
  verifyFlash(inPage.pStart, inPage.pEnd, inPage.pFilename);
}

// ---- Test 1 -----------------------------------------------

void userTest1()
{
  writeFlash(0x01000000, 0xbaadcafe);
  writeFlash(0x01800000, 0x2b00b1e5);
}

// -----------------------------------------------------------

void userCheckEmpty(int inPage)
{
  if (inPage==-1) 
  inPage = gCurrentPage;
  Page &pg = gPageList[inPage];
  printf("Checking if \"%s\" is empty...\n", gPageList[gCurrentPage].pName);
  checkEmpty(pg.pStart, pg.pEnd);
}

void userErasePage(int inPage)
{
  if (inPage==-1) 
  inPage = gCurrentPage;
  Page &pg = gPageList[inPage];

  printf("Erasing \"%s\"...\n", gPageList[gCurrentPage].pName);
  eraseFlash(pg.pStart, pg.pEnd);
}

void userWritePage(int inPage)
{
  if (inPage==-1) 
  inPage = gCurrentPage;
  Page &pg = gPageList[inPage];

  printf("Writing file \"%s\" to \"%s\" page...\n",
         gPageList[gCurrentPage].pFilename,
         gPageList[gCurrentPage].pName);
  programFlash(pg.pStart, pg.pEnd, pg.pFilename);
}

void userSelectPage(int inPage)
{
  gCurrentPage = inPage;
}

void userReadPage(int) {
  // FIXME: write this!
}

// ---- Setup ------------------------------------------------

/**
 * Initialize all relevant pins in the system.
 */
void setup()
{
  // make sure that all pins are pulled-up inputs, so we have no power flowing
  // even if there are shorts on the board.
  setupROMBus();
  setupSDBus();

  // set up the serial communication
  Serial.begin(57600);
  while (!Serial) {
    yield();
  }

  // Start the OTG driver, so we can read from a USB stick as well as from an SD Card
  //uhstate.verbose = 1;   // set verbose= 1
  uhgogo = 1;      // auto start server
}

// ---- Main Loop --------------------------------------------

/**
 * Show the main menu, grab the user's selection, and run the
 * corresponding subroutine.
 */
void loop()
{
  printf("\n\n");
  printf("==============================\n");
  printf("  Newton ROM Programmer V0.3\n");
  printf("==============================\n\n");
  
  for (auto &menuitem : gMenuItemList) {
    menuitem->print();
  }
  
  printf("Current page is \"%s\" (\"%s\").\n",
         gPageList[gCurrentPage].pName,
         gPageList[gCurrentPage].pFilename);
  
  printf("\n> ");
  fflush(stdout);
  String s = serialReadString();
  printf("%s\n\n", s.c_str());
  
  for (auto &menuitem : gMenuItemList) {
    if (s.equals(menuitem->cmd())) {
      menuitem->run();
      break;
    }
  }
}
