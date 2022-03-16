
#include "menu.h"

#include "NewtonROMReader.h"
#include "ROMCard.h"


class EmptyMenuItem : public MenuItem
{
public:
  void print() override { printf("\n"); }
};

class HardwareTestMenuItem : public MenuItem
{
public:
  const char *cmd() override { return "h"; }
  void print() override { printf("  h:  hardware test\n"); }
  void run() override { userCheckShortCicuits(); }
};
  
// TODO: 01, 23, 123, 0123: Select multiple pages (romrex1.bin, rex23.bin, rex123.bin, all.bin)
class SelectPageMenuItem : public MenuItem
{
  int pPage;
  const char *pCommand;
  const char *pText;
public:
  SelectPageMenuItem(int inPage, const char *inCommand, const char *inText) 
  : pPage(inPage), pCommand(inCommand), pText(inText)
  { }
  const char *cmd() override { return pCommand; }
  void print() override { printf(pText); }
  void run() override { userSelectPage(pPage); }
};

class PrintMemoryMenuItem : public MenuItem
{
public:
  const char *cmd() override { return "p"; }
  void print() override { printf("  p:  print hexdump of memory block\n"); }
  void run() override { userPrintMemory(); }
};

class CheckEmptyMenuItem : public MenuItem
{
public:
  const char *cmd() override { return "c"; }
  void print() override { 
    printf("  c:  check if %s is empty\n", gPageList[gCurrentPage].pName);
  }
  void run() override { userCheckEmpty(); }
};

class EraseMenuItem : public MenuItem
{
public:
  const char *cmd() override { return "e"; }
  void print() override { 
    printf("  e:  erase %s\n", gPageList[gCurrentPage].pName);
  }
  void run() override { userErasePage(); }
};

class ReadMenuItem : public MenuItem
{
public:
  const char *cmd() override { return "r"; }
  void print() override { 
    printf("  r:  read %s to file \"%s\"\n",
           gPageList[gCurrentPage].pName,
           gPageList[gCurrentPage].pFilename);
  }
  void run() override { userReadPage(); }
};

class WriteMenuItem : public MenuItem
{
public:
  const char *cmd() override { return "w"; }
  void print() override { 
    printf("  w:  write file \"%s\" to %s\n",
           gPageList[gCurrentPage].pFilename,
           gPageList[gCurrentPage].pName);
  }
  void run() override { userWritePage(); }
};

class VerifyMenuItem : public MenuItem
{
public:
  const char *cmd() override { return "v"; }
  void print() override { 
    Page &pg = gPageList[gCurrentPage];
    printf("  v:  verify file \"%s\" to %s\n",
           pg.pFilename, pg.pName);
  }
  void run() override { run(gCurrentPage); }
  virtual void run(int inPage) {
    Page &pg = gPageList[inPage];
    printf("Verifying file \"%s\" to %s...\n",
           pg.pFilename, pg.pName);
    verifyFlash(pg);
  }
};

class TestMenuItem : public MenuItem
{
public:
  const char *cmd() override { return "t"; }
  void print() override { printf("  t:  test\n"); }
  void run() override { userTest1(); }
};

std::vector<MenuItem*> gMenuItemList = {
  new HardwareTestMenuItem(),
  new EmptyMenuItem(),
  new SelectPageMenuItem(0, "0", "  0, 1, 2, 3: Select page (rom.bin, rex1.bin, rex2.bin, rex3.bin)\n"),
  new SelectPageMenuItem(1, "1", ""),
  new SelectPageMenuItem(2, "2", ""),
  new SelectPageMenuItem(3, "3", ""),
  new SelectPageMenuItem(4, "4", ""),
  new EmptyMenuItem(),
  new PrintMemoryMenuItem(),
  new CheckEmptyMenuItem(),
  new EraseMenuItem(),
  //new ReadMenuItem(),
  new WriteMenuItem(),
  new VerifyMenuItem(),
  new EmptyMenuItem(),
  //new TestMenuItem(),
};
