//
// Copyright 2022 by Matthias Melcher (info@messagepad.org)
//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with this program.  If not, see <http://www.gnu.org/licenses/>.

#ifndef NEWTON_ROM_READER_H
#define NEWTON_ROM_READER_H

#include <Arduino.h>

const uint8_t SD_CS_PIN = 53;
const uint8_t SOFT_MISO_PIN = 50; // DO
const uint8_t SOFT_MOSI_PIN = 51; // DI
const uint8_t SOFT_SCK_PIN  = 52;

const int eggSD_DO = 50;
const int eggSD_DI = 51;
const int eggSD_CLK = 52;
const int eggSD_CS = 53;

#if 0

// General Constansts
constexpr int kAddrMin = 2;
constexpr int kAddrMax = 24;
constexpr int kPinMin = 1;
constexpr int kPinMax = 72;

// SD Card interface
constexpr int kPinSD_DO = 50;
constexpr int kPinSD_DI = 51;
constexpr int kPinSD_CLK = 52;
constexpr int kPinSD_CS = 53;

// ROM Board Controll Bus
constexpr int kPinRESET = A6;
constexpr int kPinROM_CS_0 = 9;
constexpr int kPinROM_CS_1 = 7;
constexpr int kPinROM_IO_RD = 66; //A12;
constexpr int kPinROM_IO_WR = 68; //A14;
constexpr int kPinROM_IO_INT = 11;
constexpr int kPinROM_IO_RDY = 13;
constexpr int kPinPOWER_ENABLE = 41;
constexpr int kPinSCLK = 32;

// ROM Board Address Bus
constexpr int kPinA2  = 5;
constexpr int kPinA3  = 3;
constexpr int kPinA4  = A0;
constexpr int kPinA5  = A2;
constexpr int kPinA6  = 14;
constexpr int kPinA7  = 16;
constexpr int kPinA8  = 18;
constexpr int kPinA9  = 20;
constexpr int kPinA10 = A8;
constexpr int kPinA11 = A10;
constexpr int kPinA12 = 22;
constexpr int kPinA13 = 24;
constexpr int kPinA14 = 26;
constexpr int kPinA15 = 28;
constexpr int kPinA16 = 30;
constexpr int kPinA17 = 36;
constexpr int kPinA18 = 38;
constexpr int kPinA19 = 40;
constexpr int kPinA20 = 48;
constexpr int kPinA21 = 46;
constexpr int kPinA22 = 44;
constexpr int kPinA23 = 42;
constexpr int kPinA24 = 34;

// ROM Board Data Bus
constexpr int kPinD0  = 12;
constexpr int kPinD1  = 10;
constexpr int kPinD2  = 8;
constexpr int kPinD3  = 6;
constexpr int kPinD4  = 4;
constexpr int kPinD5  = 2;
constexpr int kPinD6  = A1;
constexpr int kPinD7  = A3;
constexpr int kPinD8  = A4;
constexpr int kPinD9  = A5;
constexpr int kPinD10 = A7;
constexpr int kPinD11 = 15;
constexpr int kPinD12 = 17;
constexpr int kPinD13 = 19;
constexpr int kPinD14 = 21;
constexpr int kPinD15 = A9;
constexpr int kPinD16 = A11;
constexpr int kPinD17 = 67; //A13;
constexpr int kPinD18 = 69; //A15;
constexpr int kPinD19 = 23;
constexpr int kPinD20 = 25;
constexpr int kPinD21 = 27;
constexpr int kPinD22 = 29;
constexpr int kPinD23 = 31;
constexpr int kPinD24 = 33;
constexpr int kPinD25 = 35;
constexpr int kPinD26 = 37;
constexpr int kPinD27 = 39;
constexpr int kPinD28 = 49;
constexpr int kPinD29 = 47;
constexpr int kPinD30 = 45;
constexpr int kPinD31 = 43;

// Other Pin Names
constexpr int kPinVCC = -1;
constexpr int kPin5VCC = -1;
constexpr int kPin12VCC = -1;
constexpr int kPinGND = -1;
constexpr int kPinUnconnected = -1;

// Indexed Address Bus Pins. Don't use A0 and A1, or addresses above A24.
constexpr int gAdrressLut[] = {
  kPinA2,  kPinA2,  kPinA2,  kPinA3,  kPinA4,  kPinA5,  kPinA6,  kPinA7, 
  kPinA8,  kPinA9,  kPinA10, kPinA11, kPinA12, kPinA13, kPinA14, kPinA15, 
  kPinA16, kPinA17, kPinA18, kPinA19, kPinA20, kPinA21, kPinA22, kPinA23, 
  kPinA24
};

constexpr int kDataLut[] = {
  kPinD0, kPinD1, kPinD2, kPinD3, kPinD4, kPinD5, kPinD6, kPinD7,
  kPinD8, kPinD9, kPinD10, kPinD11, kPinD12, kPinD13, kPinD14, kPinD15,
  kPinD16, kPinD17, kPinD18, kPinD19, kPinD20, kPinD21, kPinD22, kPinD23,
  kPinD24, kPinD25, kPinD26, kPinD27, kPinD28, kPinD29, kPinD30, kPinD31
};

// SO-DIMM pin lookup table
constexpr int kPinLut[] = {
  kPinUnconnected,
  kPinROM_IO_RDY, kPinD0, kPinROM_IO_INT, kPinD1, kPinROM_CS_0, kPinD2, kPinROM_CS_1, kPinD3, kPinA2, kPinD4,
  kPinA3, kPinD5, kPinA4, kPinD6, kPinA5, kPinD7, kPinVCC, kPinGND, kPin5VCC, kPinD8,
  kPin12VCC, kPinD9, kPinRESET, kPinD10, kPinA6, kPinD11, kPinA7, kPinD12, kPinA8, kPinD13,
  kPinA9, kPinD14, kPinA10, kPinD15, kPinVCC, kPinGND, kPinA11, kPinD16, kPinROM_IO_RD, kPinD17,
  kPinROM_IO_WR, kPinD18, kPinA12, kPinD19, kPinA13, kPinD20, kPinA14, kPinD21, kPinA15, kPinD22,
  kPinA16, kPinD23, kPinVCC, kPinGND, kPinSCLK, kPinD24, kPinA24, kPinD25, kPinA17, kPinD26,
  kPinA18, kPinD27, kPinA19, kPinD28, kPinA20, kPinD29, kPinA21, kPinD30, kPinA22, kPinD31,
  kPinA23, kPinPOWER_ENABLE
};

#endif

extern void userCheckShortCicuits();
extern void userCheckEmptyROM();
extern void userEraseROM();
extern void userProgramROM();
extern void userVerifyROM();
extern void userCheckEmptyREx();
extern void userEraseREx();
extern void userProgramREx();
extern void userVerifyREx();
extern void userTest1();
extern void userPrintMemory();

extern void userSelectPage(int inPage);
extern void userCheckEmpty(int inPage = -1);
extern void userErasePage(int inPage = -1);
extern void userReadPage(int inPage = -1);
extern void userWritePage(int inPage = -1);
extern bool checkConfiguration(int insertSD, int insertROM);


#endif // NEWTON_ROM_READER_H
