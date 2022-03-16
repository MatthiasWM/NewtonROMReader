
#ifndef ROM_CARD_H
#define ROM_CARD_H

#include "NewtonROMReader.h"

#include <Arduino.h>

#include <vector>

#define htonl(x) ( ((x)<<24 & 0xFF000000UL) | \
                   ((x)<< 8 & 0x00FF0000UL) | \
                   ((x)>> 8 & 0x0000FF00UL) | \
                   ((x)>>24 & 0x000000FFUL) )

struct Page 
{
  uint32_t pStart;
  uint32_t pEnd;
  const char *pName;
  const char *pFilename;
};

const int eddLED = 13;

const int eggRESET = A6;
const int eggROM_CS_0 = 9;
const int eggROM_CS_1 = 7;
const int eggROM_IO_RD = 66; //A12;
const int eggROM_IO_WR = 68; //A14;
const int eggROM_IO_INT = 11;
const int eggROM_IO_RDY = 13; // Also LED!
const int eggPOWER_ENABLE = 41;
const int eggSCLK = 32;

const int eggA2  = 5;
const int eggA3  = 3;
const int eggA4  = A0;
const int eggA5  = A2;
const int eggA6  = 14;
const int eggA7  = 16;
const int eggA8  = 18;
const int eggA9  = 20;
const int eggA10 = A8;
const int eggA11 = A10;
const int eggA12 = 22;
const int eggA13 = 24;
const int eggA14 = 26;
const int eggA15 = 28;
const int eggA16 = 30;
const int eggA17 = 36;
const int eggA18 = 38;
const int eggA19 = 40;
const int eggA20 = 48;
const int eggA21 = 46;
const int eggA22 = 44;
const int eggA23 = 42;
const int eggA24 = 34;
const int kAddrMin = 2;
const int kAddrMax = 24;
const int kAddrToCSMask = 0x02000000;

const uint32_t gAdrressLut[] = {
  eggA2,  eggA2,  eggA2,  eggA3,  eggA4,  eggA5,  eggA6,  eggA7, 
  eggA8,  eggA9,  eggA10, eggA11, eggA12, eggA13, eggA14, eggA15, 
  eggA16, eggA17, eggA18, eggA19, eggA20, eggA21, eggA22, eggA23, 
  eggA24
};

const int eggD0  = 12;  // PD8
const int eggD1  = 10;  // PC29
const int eggD2  = 8;   // PC22
const int eggD3  = 6;   // PC24
const int eggD4  = 4;   // PC26
const int eggD5  = 2;   // PB25
const int eggD6  = A1;  // PA24
const int eggD7  = A3;  // PA22
const int eggD8  = A4;  // PA6
const int eggD9  = A5;  // PA4
const int eggD10 = A7;  // PA2
const int eggD11 = 15;  // PD5
const int eggD12 = 17;  // PA12
const int eggD13 = 19;  // PA10
const int eggD14 = 21;  // PB13
const int eggD15 = A9;  // PB18
const int eggD16 = A11; // PB20
const int eggD17 = 67;  // PB16  A13;
const int eggD18 = 69;  // PA0   A15;
const int eggD19 = 23;  // PD10
const int eggD20 = 25;  // PD0
const int eggD21 = 27;  // PD2
const int eggD22 = 29;  // PD6
const int eggD23 = 31;  // PA7
const int eggD24 = 33;  // PC1
const int eggD25 = 35;  // PC3
const int eggD26 = 37;  // PC5
const int eggD27 = 39;  // PC7
const int eggD28 = 49;  // PC14
const int eggD29 = 47;  // PC16
const int eggD30 = 45;  // PC18
const int eggD31 = 43;  // PA20

const unsigned char eggPin[] = {
  eggSD_DO, eggSD_DI, eggSD_CLK, eggSD_CS,
  eggRESET, eggROM_CS_0, eggROM_CS_1, eggROM_IO_RD, eggROM_IO_WR,
  eggROM_IO_INT, eggROM_IO_RDY, eggPOWER_ENABLE, eggSCLK,
  eggD0, eggD1, eggD2, eggD3, eggD4, eggD5, eggD6, eggD7,
  eggD8, eggD9, eggD10, eggD11, eggD12, eggD13, eggD14, eggD15,
  eggD16, eggD17, eggD18, eggD19, eggD20, eggD21, eggD22, eggD23,
  eggD24, eggD25, eggD26, eggD27, eggD28, eggD29, eggD30, eggD31,
  eggA2, eggA3, eggA4, eggA5, eggA6, eggA7,
  eggA8, eggA9, eggA10, eggA11, eggA12, eggA13, eggA14, eggA15,
  eggA16, eggA17, eggA18, eggA19, eggA20, eggA21, eggA22, eggA23,
  eggA24
};

extern void verifyFlash(Page &inPage);

extern void setupROMBus();
extern void deactivateROMBus();

extern void activateDataBusWrite();
extern void activateDataBusRead();
extern void deactivateDataBus();
extern void activateAddressBus();
extern void deactivateAddressBus();
extern void activateControlBus();
extern void deactivateControlBus();

extern void setAddress(uint32_t inAddress);

extern uint32_t readWord(uint32_t inAddr);
extern uint32_t readWord();
extern void writeWord(uint32_t a, uint32_t w);


extern std::vector <Page> gPageList;
extern int gCurrentPage;
extern uint32_t gCurrentAddress;

#endif // ROM_CARD_H
