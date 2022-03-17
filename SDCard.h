
#ifndef SD_CARD_H
#define SD_CARD_H

#include "NewtonRomReader.h"

#define SPI_DRIVER_SELECT 2
#include <RingBuf.h>
#include <SdFatConfig.h>
#include <sdios.h>
#include <BufferedPrint.h>
#include <FreeStack.h>
#include <MinimumSerial.h>
#include <SdFat.h>

#if SPI_DRIVER_SELECT != 2
#error
// If this error is triggered, you downloaded an old version of SdFat. 
// Please download the current version (Sketch > Include Library > Manage Libraries...)
// Then enter "sdfat" in the search fiel and download or update the version by Bill Greiman.
//
// If everything still fails, edit the SPI_DRIVER_SELECT line in SdFatConfig.h
// On my machine it's at /Users/matt/Documents/Arduino/libraries/SdFat/src/SdFatConfig.h
#endif


#if ENABLE_DEDICATED_SPI
#define SD_CONFIG SdSpiConfig(SD_CS_PIN, DEDICATED_SPI, SD_SCK_MHZ(0), &softSpi)
#else  // ENABLE_DEDICATED_SPI
#error
#define SD_CONFIG SdSpiConfig(SD_CS_PIN, SHARED_SPI, SD_SCK_MHZ(0), &softSpi)
#endif  // ENABLE_DEDICATED_SPI

extern SdFat sd;
extern File file;

extern void deactivateSDBus();
extern void setupSDBus();

extern bool initSDCard();

#endif // SD_CARD_H
