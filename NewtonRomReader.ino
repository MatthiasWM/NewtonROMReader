
// FIXME: change all outputs to high imp with pullups when not using a port/bus.
// FIXME: remember if the user inserted the ROM board or the SD Card and don't ask unless we need changes
// FIXME: dump ROM to SD Card

#include <RingBuf.h>
#include <SdFatConfig.h>
#include <sdios.h>
#include <BufferedPrint.h>
#include <FreeStack.h>
#include <MinimumSerial.h>
#include <SdFat.h>

#define htonl(x) ( ((x)<<24 & 0xFF000000UL) | \
                   ((x)<< 8 & 0x00FF0000UL) | \
                   ((x)>> 8 & 0x0000FF00UL) | \
                   ((x)>>24 & 0x000000FFUL) )

#if SPI_DRIVER_SELECT != 2
#error
#endif

#define SD_FAT_TYPE 0
const uint8_t SD_CS_PIN = 53;
const uint8_t SOFT_MISO_PIN = 50; // DO
const uint8_t SOFT_MOSI_PIN = 51; // DI
const uint8_t SOFT_SCK_PIN  = 52;

SoftSpiDriver<SOFT_MISO_PIN, SOFT_MOSI_PIN, SOFT_SCK_PIN> softSpi;
#if ENABLE_DEDICATED_SPI
#define SD_CONFIG SdSpiConfig(SD_CS_PIN, DEDICATED_SPI, SD_SCK_MHZ(0), &softSpi)
#else  // ENABLE_DEDICATED_SPI
#define SD_CONFIG SdSpiConfig(SD_CS_PIN, SHARED_SPI, SD_SCK_MHZ(0), &softSpi)
#endif  // ENABLE_DEDICATED_SPI

SdFat sd;
File file;

int gScope = 1;

uint32_t gCurrentAddress = 0;

const int eggSD_DO = 50;
const int eggSD_DI = 51;
const int eggSD_CLK = 52;
const int eggSD_CS = 53;

const int eggRESET = A6;
const int eggROM_CS_0 = 9;
const int eggROM_CS_1 = 7;
const int eggROM_IO_RD = 66; //A12;
const int eggROM_IO_WR = 68; //A14;
const int eggROM_IO_INT = 11;
const int eggROM_IO_RDY = 13;
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

const uint32_t gAdrressLut[] = {
  eggA2,  eggA2,  eggA2,  eggA3,  eggA4,  eggA5,  eggA6,  eggA7, 
  eggA8,  eggA9,  eggA10, eggA11, eggA12, eggA13, eggA14, eggA15, 
  eggA16, eggA17, eggA18, eggA19, eggA20, eggA21, eggA22, eggA23, 
  eggA24
};

const int eggD0  = 12;
const int eggD1  = 10;
const int eggD2  = 8;
const int eggD3  = 6;
const int eggD4  = 4;
const int eggD5  = 2;
const int eggD6  = A1;
const int eggD7  = A3;
const int eggD8  = A4;
const int eggD9  = A5;
const int eggD10 = A7;
const int eggD11 = 15;
const int eggD12 = 17;
const int eggD13 = 19;
const int eggD14 = 21;
const int eggD15 = A9;
const int eggD16 = A11;
const int eggD17 = 67; //A13;
const int eggD18 = 69; //A15;
const int eggD19 = 23;
const int eggD20 = 25;
const int eggD21 = 27;
const int eggD22 = 29;
const int eggD23 = 31;
const int eggD24 = 33;
const int eggD25 = 35;
const int eggD26 = 37;
const int eggD27 = 39;
const int eggD28 = 49;
const int eggD29 = 47;
const int eggD30 = 45;
const int eggD31 = 43;

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


void printHex32(unsigned long v)
{
  static const char hex[] = "0123456789ABCDEF";
  int i;
  for (i = 0; i < 8; i++) {
    unsigned long ix = (v >> 28) & 15;
    Serial.print(hex[ix]);
    v = v << 4;
  }
}

void printPin(int i)
{
  if (i > 44) {
    Serial.write("A");
    Serial.print(i - 43);
    return;
  }
  if (i > 12) {
    Serial.write("D");
    Serial.print(i - 13);
    return;
  }
  switch (i) {
    case 0: Serial.write("SD_DO"); break;
    case 1: Serial.write("SD_DI"); break;
    case 2: Serial.write("SD_CLK"); break;
    case 3: Serial.write("SD_CS"); break;
    case 4: Serial.write("RESET"); break;
    case 5: Serial.write("ROM_CS_0"); break;
    case 6: Serial.write("ROM_CS_1"); break;
    case 7: Serial.write("ROM_IO_RD"); break;
    case 8: Serial.write("ROM_IO_WR"); break;
    case 9: Serial.write("ROM_IO_INT"); break;
    case 10: Serial.write("ROM_IO_RDY"); break;
    case 11: Serial.write("POWER_ENABLE"); break;
    case 12: Serial.write("SCLK"); break;
  }
}


/**
   Check if there are any short circuits between any of the
   programmer pins and Vcc and Vss.
*/
void testForShortCircuits()
{
  size_t i, j;
  // make all pins inputs with a pullup
  for (i = 0; i < sizeof(eggPin); i++) {
    pinMode(eggPin[i], INPUT_PULLUP);
  }
  // now check all pins for shortcuts agains ground
  Serial.write("Testing for shorts to GND...\n");
  for (i = 0; i < sizeof(eggPin); i++) {
    if (digitalRead(eggPin[i]) == 0) {
      Serial.write("ERROR: Pin ");
      Serial.print(i);
      Serial.write(" shorts with GND\n");
    }
  }
  // no check every pin agains every other pin
  Serial.write("Testing for shorts between pins...\n");
  for (i = 0; i < sizeof(eggPin); i++) {
    digitalWrite(eggPin[i], 0);
    pinMode(eggPin[i], OUTPUT);
    for (j = i + 1; j < sizeof(eggPin); j++) {
      if (digitalRead(eggPin[j]) == 0) {
        Serial.write("ERROR: ");
        printPin(i);
        Serial.write(" shorts with ");
        printPin(j);
        Serial.write("\n");
      }
    }
    digitalWrite(eggPin[i], 1);
    pinMode(eggPin[i], INPUT_PULLUP);
  }
  Serial.write("\nDone.\n");
}


void setAddress(unsigned long a);

void dataBus(int active)
{
  int mode = active ? OUTPUT : INPUT_PULLUP;
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

void setup()
{
  Serial.begin(57600);
  Serial.setTimeout(-1);
  //delay(5000); // give user time to start the serial terinal
  Serial.write("Setup\n");

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
  digitalWrite(eggSCLK, 1);
  pinMode(eggSCLK, OUTPUT);

  setAddress(0);
  pinMode(eggA2, OUTPUT);    // 0x00000004
  pinMode(eggA3, OUTPUT);    // 0x00000008
  pinMode(eggA4, OUTPUT);    // 0x00000010
  pinMode(eggA5, OUTPUT);    // 0x00000020
  pinMode(eggA6, OUTPUT);    // 0x00000040
  pinMode(eggA7, OUTPUT);    // 0x00000080
  pinMode(eggA8, OUTPUT);    // 0x00000100
  pinMode(eggA9, OUTPUT);    // 0x00000200
  pinMode(eggA10, OUTPUT);   // 0x00000400
  pinMode(eggA11, OUTPUT);   // 0x00000800
  pinMode(eggA12, OUTPUT);   // 0x00001000
  pinMode(eggA13, OUTPUT);   // 0x00002000
  pinMode(eggA14, OUTPUT);   // 0x00004000
  pinMode(eggA15, OUTPUT);   // 0x00008000
  pinMode(eggA16, OUTPUT);   // 0x00010000
  pinMode(eggA17, OUTPUT);   // 0x00020000
  pinMode(eggA18, OUTPUT);   // 0x00040000
  pinMode(eggA19, OUTPUT);   // 0x00080000
  pinMode(eggA20, OUTPUT);   // 0x00100000
  pinMode(eggA21, OUTPUT);   // 0x00200000
  pinMode(eggA22, OUTPUT);   // 0x00400000
  pinMode(eggA23, OUTPUT);   // 0x00800000
  pinMode(eggA24, OUTPUT);   // 0x01000000

  dataBus(0);
}

void initSDCard()
{
  if (!sd.begin(SD_CONFIG)) {
    sd.initErrorHalt();
  }
}


void setAddress(uint32_t inAddress)
{
#if 0 // slower version
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
  static bool firstCall = true;
  if (firstCall) {
    gCurrentAddress = ~inAddress;
    firstCall = false;
  }
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
  static bool firstCall = true;
  if (firstCall) {
    gCurrentAddress = ~inAddress;
    firstCall = false;
  }
  uint32_t a = inAddress;
  uint32_t m = inAddress ^ gCurrentAddress;
  a >>= 1; m >>= 1;
  a >>= 1; m >>= 1;
  for (int i=kAddrMin; i<=kAddrMax; i++) {
    if (m&1) digitalWrite(gAdrressLut[i], a & 1); 
    a >>= 1; m >>= 1;
  }
#endif
  gCurrentAddress = inAddress;
}

unsigned long readWord(unsigned long w)
{
  setAddress(w);
  return readWord();
}

unsigned long readWord()
{
  unsigned long w = 0;
  digitalWrite(eggROM_CS_0, 0); // select the chip
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
  digitalWrite(eggROM_CS_0, 1); // deselect the chip
  return w;
}

void writeWord(unsigned long a, unsigned long w)
{
  setAddress(a);
  dataBus(1);
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

  digitalWrite(eggROM_CS_0, 0); // select the chip
  digitalWrite(eggROM_IO_WR, 0); // read operation

  digitalWrite(eggROM_IO_WR, 1); // end of read operation
  digitalWrite(eggROM_CS_0, 1); // deselect the chip
  dataBus(0);
}

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
  Serial.write(d);
}

void writeFlash(uint32_t addr, uint32_t data)
{
  if (addr & 0x00000003) {
    Serial.write("writeFlash: address must be word aligned: ");
    printHex32(addr);
    Serial.write("\n");
    for (;;) ;
  }
  writeWord(0x0555 << 2, 0x00AA00AA);
  writeWord(0x02AA << 2, 0x00550055);
  writeWord(0x0555 << 2, 0x00A000A0);
  writeWord(addr, data);
  // FIXME: read status register
  delay(10);
  uint32_t w = readWord(addr);
  if (w != data) {
    printHex32(addr);
    Serial.write(": readback error: ");
    printHex32(data);
    Serial.write("!=");
    printHex32(w);
    Serial.write("\n");
    for (;;) ;
  }
}

void loop_obsolete()
{
  Serial.write("Main\n");

//  unsigned long addr = 0;
#if 0
  // write in ASCII format
  //  while (addr<0x800000) {
  while (addr < 128) {
    setAddress(addr);
    unsigned long w = readWord();
    printHex32(addr);
    Serial.write(" ");
    printHex32(w);
    Serial.write("\n");
    addr += 4;
  }
  // write entire ROM in uuencode with line checksum format
#elif 0
  // read status register
  writeWord(0x0555 << 2, 0x00700070);
  unsigned long w = readWord(0x0000);
  printHex32(w);
  Serial.write("\n");
  // 7: Device REady
  // 6: Erase Suspend Status
  // 5: Erase Status
  // 4: Program Statsu
  // 3: Write Buffer Abort Status
  // 2: Program Suspend Status
  // 1: Sector Lock Status
  // 0: Continuity Check
#elif 0
  writeWord(0x0555 << 2, 0x000000AA);
  writeWord(0x02AA << 2, 0x00000055);
  writeWord(0x0555 << 2, 0x000000A0);
  writeWord(0, 0xFFFFFFFe);
  unsigned long w = readWord(0);
  Serial.write("Readback: ");
  printHex32(w);
  Serial.write("\n");
#elif 1
  // Write ROM file to Flash
  if (!file.open("ROM", O_RDONLY)) {
    sd.errorHalt(F("open failed"));
  }
  file.rewind();
  for (int i = 0; i < 8 * 1024 * 1024; i += 4) {
    uint32_t v = 0, vv;
    file.read(&v, 4);
    vv = htonl(v);
    if ((i & 0x0000ffff) == 0) {
      printHex32(i);
      Serial.write(" ");
      printHex32(vv);
      Serial.write("\n");
    }
    writeFlash(i, vv);
  }
  file.close();
  Serial.write("DONE\n");
#elif 1
  // Erase a sector:
  writeWord(0x0555 << 2, 0x00AA00AA);
  writeWord(0x02AA << 2, 0x00550055);
  writeWord(0x0555 << 2, 0x00800080);
  writeWord(0x0555 << 2, 0x00AA00AA);
  writeWord(0x02AA << 2, 0x00550055);
  writeWord(0, 0x00300030);
  delay(300);
  for (int i = 0; i < 64; i += 4) {
    uint32_t w = readWord(i);
    printHex32(w);
    Serial.write("\n");
  }
#else
  //  while (addr<0x800000) {
  while (addr < 128) {
    int i;
    unsigned long w;
    for (i = 0; i < 8; i++) {
      setAddress(addr);
      w = readWord();
      printEnc(w);
      addr += 4;
    }
    Serial.write("\n");
  }
#endif
  for (;;)
  {
  }
}

// ---- Ask User Configuration -------------------------------

// insertXX: 1=insert, 0=remove, -1=don't care
bool checkConfiguration(int insertSD, int insertROM)
{
  if (insertSD == 0)
    Serial.write("<<< Please remove the SD card from the programmer.   <<<\n");
  else if (insertSD == 1)
    Serial.write(">>> Please INSERT the SD card into the programmer.   >>>\n");
  if (insertROM == 0)
    Serial.write("<<< Please remove the ROM board from the programmer. <<<\n");
  else if (insertROM == 1)
    Serial.write(">>> Please INSERT the ROM board into the programmer. >>>\n");
  Serial.write("Type 'ok' to continue.\n\n");
  String s = Serial.readStringUntil('\n');
  if (s.equals("ok"))
    return true;
  Serial.write("Aborted!\n\n");
  return false;
}

// ---- CheckShortCicuits ------------------------------------

void userCheckShortCicuits()
{
  Serial.write("Check Programmer For Short Circuits\n\n");
  if (checkConfiguration(0, 0) == false)
    return;
  testForShortCircuits();
}

// ---- Test Empty -------------------------------------------

void checkEmpty()
{
  bool aborted = false;
  Serial.write("Checking (press Return to abort)...\n");
  Serial.write(".___.___.___.___.___.___.___.___.\n|");
  dataBus(0);
  uint32_t i;
  for (i = 0; i < 0x00800000; i += 4) {
    uint32_t v = readWord(i);
    if (v != 0xFFFFFFFF) {
      Serial.write("\nValue mismatch at address ");
      printHex32(i);
      Serial.write(": ");
      printHex32(v);
      Serial.write("\n");
      break;
    }
    if (Serial.read() == '\n') {
      aborted = true;
      break;
    }
    if ((i & 0x0003ffff) == 0)
      Serial.write(":");
  }
  Serial.write("\n");
  if (aborted)
    Serial.write("Test aborted.\n");
  else if (i == 0x00800000)
    Serial.write("Flash memeory is empty and ready to be programmed.\n");
  else
    Serial.write("Flash memeory is not empty.\n");
  dataBus(0);
}

void userCheckEmpty()
{
  Serial.write("Check if Flash memory is empty\n\n");
  if (checkConfiguration(-1, 1) == false)
    return;
  checkEmpty();
}

// ---- Erase Flash Memory -----------------------------------

void eraseFlash()
{
  // Status:     bit7==0 if busy
  // if bit7==1: bit5==0 if erase successful
  //             bit4==0 if programming was successful

  bool aborted = false;
  bool err = false;
  Serial.write("Erasing...\n");
  Serial.write(".___.___.___.___.___.___.___.___.\n|");

  uint32_t addr = 0;
  int i = 0;
  for (addr = 0; addr < 0x00800000; addr += 0x00040000) {
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
    for (i = 0; i < 200; i++) {
      delay(10); // Typical erase time: 62 * 10us = .6 seconds
      // read status register
      writeWord(0x0555 << 2, 0x00700070);
      w = readWord(0);
      if ((w & 0x00800080) == 0x00800080)
        break;
    }
    if (i == 100) // operation timed out
      break;
    // FIXME: if i==100 we timed out
#if 0
    delay(1);
    writeWord(0x0555 << 2, 0x00700070);
    w = readWord(0);
    Serial.write("Sector at ");
    printHex32(addr);
    Serial.write(" cleared after ");
    Serial.print(i);
    Serial.write(" iterations, status is ");
    printHex32(w);
    Serial.write("\n");
#else
    delay(1);
    writeWord(0x0555 << 2, 0x00700070);
    w = readWord(0);
    if ((w & 0x008f008f) == 0x00800080) {
      Serial.write("x");
    } else {
      Serial.write("E");
      err = true;
      break;
    }
#endif
    if (Serial.read() == '\n') {
      aborted = true;
      break;
    }
  }
  Serial.write("\n");
  if (aborted)
    Serial.write("Erase operation aborted.\n");
  else if (err)
    Serial.write("Error erasing a sector.\n"); // FIXME: need more information
  else if (i == 100)
    Serial.write("Erase operation timed out.\n");
  else
    Serial.write("Flash memeory is erased and ready to be programmed.\n");
}

void userEraseFlash()
{
  Serial.write("Erase Flash memory\n\n");
  if (checkConfiguration(-1, 1) == false)
    return;
  eraseFlash();
}

// ---- Program ROM File -------------------------------------

void programROM()
{
  bool aborted = false;
  Serial.write("Copying...\n");
  Serial.write(".___.___.___.___.___.___.___.___.\n|");
  // FIXME: add decent error handling
  // FIXME: this can be MUCH faster
  initSDCard();
  // Write ROM file to Flash
  if (!file.open("ROM", O_RDONLY)) {
    sd.errorHalt(F("open failed"));
  }
  file.rewind();
#if 0 // program the Flash word by word
  for (int i = 0; i < 8 * 1024 * 1024; i += 4) {
    uint32_t v = 0, vv;
    file.read(&v, 4);
    vv = htonl(v);
    if ((i & 0x0003ffff) == 0)
      Serial.write("+");
    writeFlash(i, vv);
    if (Serial.read() == '\n') {
      aborted = true;
      break;
    }
  }
#else // program the flash in chunks of 512 bytes per chip
  uint32_t nWords = 256;
  for (uint32_t i = 0; i < 0x00800000; i += (4*nWords)) {
    // write sequence to prepare Flash for programming
    writeWord(0x0555 << 2, 0x00AA00AA);
    writeWord(0x02AA << 2, 0x00550055);
    writeWord(i, 0x00250025); // i should be SA
    writeWord(i, ((nWords-1)<<16)|(nWords-1)); // i should be SA, number of words to write
    // write buffer
    for (uint32_t j=0; j<nWords; j++) {
      uint32_t v = 0, vv;
      file.read(&v, 4);
      vv = htonl(v);
      writeWord(i+(j<<2), vv);
    }
    // confirm write
    writeWord(i, 0x00290029); // i should be SA
    // wait for operation to complete
    int t;
    uint32_t w;
    for (t = 0; t < 100; t++) {
      // read status register
      writeWord(0x0555 << 2, 0x00700070);
      w = readWord(0);
      if ((w & 0x00800080) == 0x00800080)
        break;
      delay(1); // There should be little to no delay needed.
    }
    //Serial.write("Block programmed in ");
    //Serial.print(t);
    //Serial.write("us.\n");
    // show progress
    if ((i & 0x0003ffff) == 0)
      Serial.write("+");
    // check if user aborts
    if (Serial.read() == '\n') {
      aborted = true;
      break;
    }
  }
#endif
  file.close();
  Serial.write("\n");
  if (aborted)
    Serial.write("Programming Flash operation aborted.\n");
  else
    Serial.write("File content copied to Flash.\n");
  sd.end();
}

void userProgramROM()
{
  Serial.write("Programming ROM File\n\n");
  if (checkConfiguration(1, 1) == false)
    return;
  programROM();
}

// ---- Program ROM File -------------------------------------

void verifyROM()
{
  bool aborted = false;
  Serial.write("Verifying...\n");
  Serial.write(".___.___.___.___.___.___.___.___.\n|");
  // FIXME: add decent error handling
  // FIXME: this can be MUCH faster
  initSDCard();
  // Compare ROM file and Flash
  if (!file.open("ROM", O_RDONLY)) {
    sd.errorHalt(F("open failed")); // FIXME: fall back to Menu!
  }
  file.rewind();
  for (int i = 0; i < 8 * 1024 * 1024; i += 4) {
    uint32_t v = 0, vv, f;
    file.read(&v, 4);
    vv = htonl(v);
    if ((i & 0x0003ffff) == 0)
      Serial.write(":");
    f = readWord(i);
    if (f!=vv) {
      Serial.write("\nROM file and Flash are not identical at address ");
      printHex32(i);
      Serial.write(".\nFile: ");
      printHex32(vv);
      Serial.write(", Flash: ");
      printHex32(f);
      Serial.write(".\n");
      aborted = true;
      break;
    }
    if (Serial.read() == '\n') {
      aborted = true;
      break;
    }
  }
  file.close();
  Serial.write("\n");
  if (aborted)
    Serial.write("Verifying Flash operation aborted.\n");
  else
    Serial.write("File content verified to Flash.\n");
}

void userVerifyROM()
{
  Serial.write("Verifying ROM File\n\n");
  if (checkConfiguration(1, 1) == false)
    return;
  verifyROM();
}
// ---- Main Loop --------------------------------------------

/**
   Show the main menu, grab the user's selection, and run the
   corresponding subroutine.
*/
void loop()
{
  Serial.write("\n\n");
  Serial.write("==============================\n");
  Serial.write("  Newton ROM Programmer V0.1\n");
  Serial.write("==============================\n\n");
  switch (gScope) {
    case 1:  Serial.write("  Scope: 8MB ROM (0x00000000-0x00800000)\n"); break;
    default: Serial.write("  Scope: invalid\n");
  }
  Serial.write("  1: set scope to 8MB ROM\n");
  Serial.write("\n");
  Serial.write("  s:  check board for short circuits\n");
  Serial.write("  e:  check if Flash is empty\n");
  //Serial.write("  q: quick check empty\n");
  Serial.write("  c:  erase Flash memory\n");
  Serial.write("  r:  program \"ROM\" file to flash\n");
  Serial.write("  vr: verify \"ROM\" file in flash\n");
  Serial.write("\n> ");
  String s = Serial.readStringUntil('\n');
  Serial.print(s);
  Serial.write("\n\n");
  if (s.equals("s")) userCheckShortCicuits();
  else if (s.equals("e")) userCheckEmpty();
  else if (s.equals("c")) userEraseFlash();
  else if (s.equals("r")) userProgramROM();
  else if (s.equals("vr")) userVerifyROM();
}
