

#ifndef ROM_CARD_MENU_H
#define ROM_CARD_MENU_H

#include <vector>

#include <Arduino.h>


class MenuItem {
public:
  MenuItem() = default;
  virtual ~MenuItem() = default;
  virtual const char *cmd() { return ""; }
  virtual void run() { }
  virtual void print() { }
};

extern std::vector<MenuItem*> gMenuItemList;

#endif
