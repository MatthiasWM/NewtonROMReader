

#include "ROMCard.h"

int gCurrentPage = 0;
uint32_t gCurrentAddress = 0;

static bool sAddressPinsUndefined = true;

std::vector <Page> gPageList = {
  { 0x00000000, 0x00800000, "ROM page", "rom.bin" },
  { 0x00800000, 0x01000000, "ROM Extension 1", "rex1.bin" },
  { 0x02000000, 0x02800000, "ROM Extension 2", "rex2.bin" },
  { 0x02800000, 0x03000000, "ROM Extension 3", "rex3.bin" },
  { 0x00000000, 0x01000000, "ROM & ext1", "romrex1.bin" },
  { 0x02000000, 0x03000000, "ext2 & ext3", "rex23.bin" },
//{ 0x00000000, 0x02000000, "full card", "card.bin" },
};


void dataBus(bool active)
{
  int mode = active ? OUTPUT : INPUT_PULLUP;
//  int mode = active ? OUTPUT : INPUT;
  pinMode(eggD0, mode);
  pinMode(eggD1, mode);
  pinMode(eggD2, mode);
  pinMode(eggD3, mode);
  pinMode(eggD4, mode);
  pinMode(eggD5, mode);
  pinMode(eggD6, mode);
  pinMode(eggD7, mode);
  pinMode(eggD8, mode);
  pinMode(eggD9, mode);
  pinMode(eggD10, mode);
  pinMode(eggD11, mode);
  pinMode(eggD12, mode);
  pinMode(eggD13, mode);
  pinMode(eggD14, mode);
  pinMode(eggD15, mode);
  pinMode(eggD16, mode);
  pinMode(eggD17, mode);
  pinMode(eggD18, mode);
  pinMode(eggD19, mode);
  pinMode(eggD20, mode);
  pinMode(eggD21, mode);
  pinMode(eggD22, mode);
  pinMode(eggD23, mode);
  pinMode(eggD24, mode);
  pinMode(eggD25, mode);
  pinMode(eggD26, mode);
  pinMode(eggD27, mode);
  pinMode(eggD28, mode);
  pinMode(eggD29, mode);
  pinMode(eggD30, mode);
  pinMode(eggD31, mode);
}

void activateDataBusWrite() { dataBus(true); }
void activateDataBusRead() { dataBus(false); }
void deactivateDataBus() { dataBus(false); }

void addressBus(bool active)
{
  int mode = active ? OUTPUT : INPUT_PULLUP;
  pinMode(eggA2, mode);    // 0x00000004
  pinMode(eggA3, mode);    // 0x00000008
  pinMode(eggA4, mode);    // 0x00000010
  pinMode(eggA5, mode);    // 0x00000020
  pinMode(eggA6, mode);    // 0x00000040
  pinMode(eggA7, mode);    // 0x00000080
  pinMode(eggA8, mode);    // 0x00000100
  pinMode(eggA9, mode);    // 0x00000200
  pinMode(eggA10, mode);   // 0x00000400
  pinMode(eggA11, mode);   // 0x00000800
  pinMode(eggA12, mode);   // 0x00001000
  pinMode(eggA13, mode);   // 0x00002000
  pinMode(eggA14, mode);   // 0x00004000
  pinMode(eggA15, mode);   // 0x00008000
  pinMode(eggA16, mode);   // 0x00010000
  pinMode(eggA17, mode);   // 0x00020000
  pinMode(eggA18, mode);   // 0x00040000
  pinMode(eggA19, mode);   // 0x00080000
  pinMode(eggA20, mode);   // 0x00100000
  pinMode(eggA21, mode);   // 0x00200000
  pinMode(eggA22, mode);   // 0x00400000
  pinMode(eggA23, mode);   // 0x00800000
  pinMode(eggA24, mode);   // 0x01000000
  sAddressPinsUndefined = true;
}

void activateAddressBus() { addressBus(true); }
void deactivateAddressBus() { addressBus(false); }

/**
 * Set an address on the address bus.
 * 
 * \param[in] inAddress valid addresses are 0-32MB ind 4 byte steps
 */
void setAddress(uint32_t inAddress)
{
#if 1 // slower version
  uint32_t a = inAddress;
  a >>= 1;
  a >>= 1;
  digitalWrite(eggA2, a & 1); a >>= 1;
  digitalWrite(eggA3, a & 1); a >>= 1;
  digitalWrite(eggA4, a & 1); a >>= 1;
  digitalWrite(eggA5, a & 1); a >>= 1;
  digitalWrite(eggA6, a & 1); a >>= 1;
  digitalWrite(eggA7, a & 1); a >>= 1;
  digitalWrite(eggA8, a & 1); a >>= 1;
  digitalWrite(eggA9, a & 1); a >>= 1;
  digitalWrite(eggA10, a & 1); a >>= 1;
  digitalWrite(eggA11, a & 1); a >>= 1;
  digitalWrite(eggA12, a & 1); a >>= 1;
  digitalWrite(eggA13, a & 1); a >>= 1;
  digitalWrite(eggA14, a & 1); a >>= 1;
  digitalWrite(eggA15, a & 1); a >>= 1;
  digitalWrite(eggA16, a & 1); a >>= 1;
  digitalWrite(eggA17, a & 1); a >>= 1;
  digitalWrite(eggA18, a & 1); a >>= 1;
  digitalWrite(eggA19, a & 1); a >>= 1;
  digitalWrite(eggA20, a & 1); a >>= 1;
  digitalWrite(eggA21, a & 1); a >>= 1;
  digitalWrite(eggA22, a & 1); a >>= 1;
  digitalWrite(eggA23, a & 1); a >>= 1;
  digitalWrite(eggA24, a & 1); a >>= 1;
#elif 0 // faster version
  if (sAddressPinsUndefined)
    gCurrentAddress = ~inAddress;
  uint32_t a = inAddress;
  uint32_t m = inAddress ^ gCurrentAddress;
  a >>= 1; m >>= 1;
  a >>= 1; m >>= 1;
  if (m&1) digitalWrite(eggA2, a & 1); a >>= 1; m >>= 1;
  if (m&1) digitalWrite(eggA3, a & 1); a >>= 1; m >>= 1;
  if (m&1) digitalWrite(eggA4, a & 1); a >>= 1; m >>= 1;
  if (m&1) digitalWrite(eggA5, a & 1); a >>= 1; m >>= 1;
  if (m&1) digitalWrite(eggA6, a & 1); a >>= 1; m >>= 1;
  if (m&1) digitalWrite(eggA7, a & 1); a >>= 1; m >>= 1;
  if (m&1) digitalWrite(eggA8, a & 1); a >>= 1; m >>= 1;
  if (m&1) digitalWrite(eggA9, a & 1); a >>= 1; m >>= 1;
  if (m&1) digitalWrite(eggA10, a & 1); a >>= 1; m >>= 1;
  if (m&1) digitalWrite(eggA11, a & 1); a >>= 1; m >>= 1;
  if (m&1) digitalWrite(eggA12, a & 1); a >>= 1; m >>= 1;
  if (m&1) digitalWrite(eggA13, a & 1); a >>= 1; m >>= 1;
  if (m&1) digitalWrite(eggA14, a & 1); a >>= 1; m >>= 1;
  if (m&1) digitalWrite(eggA15, a & 1); a >>= 1; m >>= 1;
  if (m&1) digitalWrite(eggA16, a & 1); a >>= 1; m >>= 1;
  if (m&1) digitalWrite(eggA17, a & 1); a >>= 1; m >>= 1;
  if (m&1) digitalWrite(eggA18, a & 1); a >>= 1; m >>= 1;
  if (m&1) digitalWrite(eggA19, a & 1); a >>= 1; m >>= 1;
  if (m&1) digitalWrite(eggA20, a & 1); a >>= 1; m >>= 1;
  if (m&1) digitalWrite(eggA21, a & 1); a >>= 1; m >>= 1;
  if (m&1) digitalWrite(eggA22, a & 1); a >>= 1; m >>= 1;
  if (m&1) digitalWrite(eggA23, a & 1); a >>= 1; m >>= 1;
  if (m&1) digitalWrite(eggA24, a & 1); a >>= 1; m >>= 1;
#else
  // make sure that all address pins are refreshed
  if (sAddressPinsUndefined)
    gCurrentAddress = ~inAddress;

  // update only the pins that changed
  uint32_t a = inAddress;
  uint32_t m = inAddress ^ gCurrentAddress;
  a >>= 1; m >>= 1;
  a >>= 1; m >>= 1;
  for (int i=kAddrMin; i<=kAddrMax; i++) {
    if (m&1) digitalWrite(gAdrressLut[i], a & 1); 
    a >>= 1; m >>= 1;
  }
#endif
  // set the global address, so we can optimize pin update
  // also, gCurrentAddress is used to determine the corresponding CS
  gCurrentAddress = inAddress;
}

void activateControlBus()
{
  digitalWrite(eggRESET, 1);
  pinMode(eggRESET, OUTPUT); // inv
  digitalWrite(eggROM_CS_0, 1);
  pinMode(eggROM_CS_0, OUTPUT); // inv
  digitalWrite(eggROM_CS_1, 1);
  pinMode(eggROM_CS_1, OUTPUT); // inv
  digitalWrite(eggROM_IO_RD, 1);
  pinMode(eggROM_IO_RD, OUTPUT);
  digitalWrite(eggROM_IO_WR, 1);
  pinMode(eggROM_IO_WR, OUTPUT);
  pinMode(eggROM_IO_INT, INPUT);
  pinMode(eggROM_IO_RDY, INPUT);
  digitalWrite(eggPOWER_ENABLE, 1);
  pinMode(eggPOWER_ENABLE, OUTPUT);
}

void deactivateControlBus()
{
  pinMode(eggRESET, INPUT_PULLUP);
  pinMode(eggROM_CS_0, INPUT_PULLUP);
  pinMode(eggROM_CS_1, INPUT_PULLUP);
  pinMode(eggROM_IO_RD, INPUT_PULLUP);
  pinMode(eggROM_IO_WR, INPUT_PULLUP);
  pinMode(eggROM_IO_INT, INPUT_PULLUP);
  pinMode(eggROM_IO_RDY, INPUT_PULLUP);
  pinMode(eggPOWER_ENABLE, INPUT_PULLUP);
}

void deactivateROMBus()
{
  deactivateDataBus();
  deactivateAddressBus();
  deactivateControlBus();
}

void setupROMBus()
{
  deactivateROMBus();
}

uint32_t readWord(uint32_t inAddr)
{
  setAddress(inAddr);
  return readWord();
}

uint32_t readWord()
{
  register uint32_t w = 0;
  
  if (gCurrentAddress & kAddrToCSMask)
    digitalWrite(eggROM_CS_1, 0); // select the upper half of the Flash chips
  else
    digitalWrite(eggROM_CS_0, 0); // select the lower half of the Flash chips
    
#if 0 // universal
  digitalWrite(eggROM_IO_RD, 0); // read operation
  w = w << 1; if (digitalRead(eggD31)) w += 1;
  w = w << 1; if (digitalRead(eggD30)) w += 1;
  w = w << 1; if (digitalRead(eggD29)) w += 1;
  w = w << 1; if (digitalRead(eggD28)) w += 1;
  w = w << 1; if (digitalRead(eggD27)) w += 1;
  w = w << 1; if (digitalRead(eggD26)) w += 1;
  w = w << 1; if (digitalRead(eggD25)) w += 1;
  w = w << 1; if (digitalRead(eggD24)) w += 1;
  w = w << 1; if (digitalRead(eggD23)) w += 1;
  w = w << 1; if (digitalRead(eggD22)) w += 1;
  w = w << 1; if (digitalRead(eggD21)) w += 1;
  w = w << 1; if (digitalRead(eggD20)) w += 1;
  w = w << 1; if (digitalRead(eggD19)) w += 1;
  w = w << 1; if (digitalRead(eggD18)) w += 1;
  w = w << 1; if (digitalRead(eggD17)) w += 1;
  w = w << 1; if (digitalRead(eggD16)) w += 1;
  w = w << 1; if (digitalRead(eggD15)) w += 1;
  w = w << 1; if (digitalRead(eggD14)) w += 1;
  w = w << 1; if (digitalRead(eggD13)) w += 1;
  w = w << 1; if (digitalRead(eggD12)) w += 1;
  w = w << 1; if (digitalRead(eggD11)) w += 1;
  w = w << 1; if (digitalRead(eggD10)) w += 1;
  w = w << 1; if (digitalRead(eggD9)) w += 1;
  w = w << 1; if (digitalRead(eggD8)) w += 1;
  w = w << 1; if (digitalRead(eggD7)) w += 1;
  w = w << 1; if (digitalRead(eggD6)) w += 1;
  w = w << 1; if (digitalRead(eggD5)) w += 1;
  w = w << 1; if (digitalRead(eggD4)) w += 1;
  w = w << 1; if (digitalRead(eggD3)) w += 1;
  w = w << 1; if (digitalRead(eggD2)) w += 1;
  w = w << 1; if (digitalRead(eggD1)) w += 1;
  w = w << 1; if (digitalRead(eggD0)) w += 1;
  digitalWrite(eggROM_IO_RD, 1); // end of read operation
#else // Due specific (saving about 40% of time on "Verify")
  PIOB->PIO_CODR = PIO_CODR_P15; // digitalWrite(eggROM_IO_RD, 0); // read operation
  asm(" nop\n nop\n nop\n"); // I don't know why I need a delay here, but it will read faulty data without it
  asm(" nop\n nop\n nop\n");
  uint32_t portA = PIOA->PIO_PDSR;
  uint32_t portB = PIOB->PIO_PDSR;
  uint32_t portC = PIOC->PIO_PDSR;
  uint32_t portD = PIOD->PIO_PDSR;
  PIOB->PIO_SODR = PIO_SODR_P15; // digitalWrite(eggROM_IO_RD, 1); // PB15, end of read operation 
  if (portA & PIO_PDSR_P0)  w |= PIO_PDSR_P18; // const int eggD18 = 69;  // PA0   A15;
  if (portA & PIO_PDSR_P2)  w |= PIO_PDSR_P10; // const int eggD10 = A7;  // PA2
  if (portA & PIO_PDSR_P4)  w |= PIO_PDSR_P9;  // const int eggD9  = A5;  // PA4
  if (portA & PIO_PDSR_P6)  w |= PIO_PDSR_P8;  // const int eggD8  = A4;  // PA6
  if (portA & PIO_PDSR_P7)  w |= PIO_PDSR_P23; // const int eggD23 = 31;  // PA7
  if (portA & PIO_PDSR_P10) w |= PIO_PDSR_P13; // const int eggD13 = 19;  // PA10
  if (portA & PIO_PDSR_P12) w |= PIO_PDSR_P12; // const int eggD12 = 17;  // PA12
  if (portA & PIO_PDSR_P14) w |= PIO_PDSR_P19; // const int eggD19 = 23;  // PA14
  if (portA & PIO_PDSR_P20) w |= PIO_PDSR_P31; // const int eggD31 = 43;  // PA20
  if (portA & PIO_PDSR_P22) w |= PIO_PDSR_P7;  // const int eggD7  = A3;  // PA22
  if (portA & PIO_PDSR_P24) w |= PIO_PDSR_P6;  // const int eggD6  = A1;  // PA24

  if (portB & PIO_PDSR_P13) w |= PIO_PDSR_P14; // const int eggD14 = 21;  // PB13
  if (portB & PIO_PDSR_P16) w |= PIO_PDSR_P17; // const int eggD17 = 67;  // PB16  A13;
  if (portB & PIO_PDSR_P18) w |= PIO_PDSR_P15; // const int eggD15 = A9;  // PB18
  if (portB & PIO_PDSR_P20) w |= PIO_PDSR_P16; // const int eggD16 = A11; // PB20
  if (portB & PIO_PDSR_P25) w |= PIO_PDSR_P5;  // const int eggD5  = 2;   // PB25

  if (portC & PIO_PDSR_P1)  w |= PIO_PDSR_P24; // const int eggD24 = 33;  // PC1
  if (portC & PIO_PDSR_P3)  w |= PIO_PDSR_P25; // const int eggD25 = 35;  // PC3
  if (portC & PIO_PDSR_P5)  w |= PIO_PDSR_P26; // const int eggD26 = 37;  // PC5
  if (portC & PIO_PDSR_P7)  w |= PIO_PDSR_P27; // const int eggD27 = 39;  // PC7
  if (portC & PIO_PDSR_P14) w |= PIO_PDSR_P28; // const int eggD28 = 49;  // PC14
  if (portC & PIO_PDSR_P16) w |= PIO_PDSR_P29; // const int eggD29 = 47;  // PC16
  if (portC & PIO_PDSR_P18) w |= PIO_PDSR_P30; // const int eggD30 = 45;  // PC18
  if (portC & PIO_PDSR_P22) w |= PIO_PDSR_P2;  // const int eggD2  = 8;   // PC22
  if (portC & PIO_PDSR_P24) w |= PIO_PDSR_P3;  // const int eggD3  = 6;   // PC24
  if (portC & PIO_PDSR_P26) w |= PIO_PDSR_P4;  // const int eggD4  = 4;   // PC26
  if (portC & PIO_PDSR_P29) w |= PIO_PDSR_P1;  // const int eggD1  = 10;  // PC29

  if (portD & PIO_PDSR_P0)  w |= PIO_PDSR_P20; // const int eggD20 = 25;  // PD0
  if (portD & PIO_PDSR_P2)  w |= PIO_PDSR_P21; // const int eggD21 = 27;  // PD2
  if (portD & PIO_PDSR_P5)  w |= PIO_PDSR_P11; // const int eggD11 = 15;  // PD5
  if (portD & PIO_PDSR_P6)  w |= PIO_PDSR_P22; // const int eggD22 = 29;  // PD6
  if (portD & PIO_PDSR_P8)  w |= PIO_PDSR_P0;  // const int eggD0  = 12;  // PD8
#endif
  
  if (gCurrentAddress & kAddrToCSMask)
    digitalWrite(eggROM_CS_1, 1); // deselect the upper half of the Flash chips
  else
    digitalWrite(eggROM_CS_0, 1); // deselect the lower half of the Flash chips
    
  return w;
}

void writeWord(uint32_t a, uint32_t w)
{
  setAddress(a);
  activateDataBusWrite();
  digitalWrite(eggD0, w & 1); w = w >> 1;
  digitalWrite(eggD1, w & 1); w = w >> 1;
  digitalWrite(eggD2, w & 1); w = w >> 1;
  digitalWrite(eggD3, w & 1); w = w >> 1;
  digitalWrite(eggD4, w & 1); w = w >> 1;
  digitalWrite(eggD5, w & 1); w = w >> 1;
  digitalWrite(eggD6, w & 1); w = w >> 1;
  digitalWrite(eggD7, w & 1); w = w >> 1;
  digitalWrite(eggD8, w & 1); w = w >> 1;
  digitalWrite(eggD9, w & 1); w = w >> 1;
  digitalWrite(eggD10, w & 1); w = w >> 1;
  digitalWrite(eggD11, w & 1); w = w >> 1;
  digitalWrite(eggD12, w & 1); w = w >> 1;
  digitalWrite(eggD13, w & 1); w = w >> 1;
  digitalWrite(eggD14, w & 1); w = w >> 1;
  digitalWrite(eggD15, w & 1); w = w >> 1;
  digitalWrite(eggD16, w & 1); w = w >> 1;
  digitalWrite(eggD17, w & 1); w = w >> 1;
  digitalWrite(eggD18, w & 1); w = w >> 1;
  digitalWrite(eggD19, w & 1); w = w >> 1;
  digitalWrite(eggD20, w & 1); w = w >> 1;
  digitalWrite(eggD21, w & 1); w = w >> 1;
  digitalWrite(eggD22, w & 1); w = w >> 1;
  digitalWrite(eggD23, w & 1); w = w >> 1;
  digitalWrite(eggD24, w & 1); w = w >> 1;
  digitalWrite(eggD25, w & 1); w = w >> 1;
  digitalWrite(eggD26, w & 1); w = w >> 1;
  digitalWrite(eggD27, w & 1); w = w >> 1;
  digitalWrite(eggD28, w & 1); w = w >> 1;
  digitalWrite(eggD29, w & 1); w = w >> 1;
  digitalWrite(eggD30, w & 1); w = w >> 1;
  digitalWrite(eggD31, w & 1); w = w >> 1;

  if (gCurrentAddress & kAddrToCSMask)
    digitalWrite(eggROM_CS_1, 0); // select the upper half of the Flash chips
  else
    digitalWrite(eggROM_CS_0, 0); // select the lower half of the Flash chips
    
  digitalWrite(eggROM_IO_WR, 0); // read operation
  digitalWrite(eggROM_IO_WR, 1); // end of read operation
  
  if (gCurrentAddress & kAddrToCSMask)
    digitalWrite(eggROM_CS_1, 1); // deselect the upper half of the Flash chips
  else
    digitalWrite(eggROM_CS_0, 1); // deselect the lower half of the Flash chips
    
  activateDataBusRead();
}
