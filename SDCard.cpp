

#include "SDCard.h"


SdFat sd;
File file;

SoftSpiDriver<SOFT_MISO_PIN, SOFT_MOSI_PIN, SOFT_SCK_PIN> softSpi;

void activateSDBus()
{
  digitalWrite(SD_CS_PIN, 1);
  pinMode(SD_CS_PIN, OUTPUT);
  digitalWrite(SOFT_MOSI_PIN, 1);
  pinMode(SOFT_MOSI_PIN, OUTPUT);
  digitalWrite(SOFT_SCK_PIN, 1);
  pinMode(SOFT_SCK_PIN, OUTPUT);
  pinMode(SOFT_MISO_PIN, INPUT_PULLUP);
}

void deactivateSDBus()
{
  pinMode(SD_CS_PIN, INPUT_PULLUP);
  pinMode(SOFT_MOSI_PIN, INPUT_PULLUP);
  pinMode(SOFT_SCK_PIN, INPUT_PULLUP);
  pinMode(SOFT_MISO_PIN, INPUT_PULLUP);
}

void setupSDBus()
{
  deactivateSDBus();
}

#if 0
bool initSDCard()
{
  activateSDBus();
  if (!sd.begin(SD_CONFIG)) {
    sd.initErrorPrint();
    Serial.print("[ERROR] Can't access SD Card: ");
    Serial.print(sd.sdErrorCode()); // errorData()
    Serial.print(" : ");
    Serial.println(sd.sdErrorData()); // errorData()
    sd.errorPrint("SD Card error:");
    Serial.flush();
    return false;
  }
  return true;
}
#else
bool initSDCard()
{
  return sd.begin(SD_CONFIG);
}
#endif
