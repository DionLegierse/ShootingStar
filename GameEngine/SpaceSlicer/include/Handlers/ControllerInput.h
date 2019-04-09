#pragma once
#include "driver/i2c.h"

#define BLUE_CONTROLLER     (int)(0x27)
#define RED_CONTROLLER      (int)(0x20)

class ControllerInput
{
public:
    ControllerInput(int);
    ~ControllerInput();

    enum STICK {CENTER = 0, UP, DOWN, LEFT, RIGHT, UPLEFT, UPRIGHT, DOWNLEFT, DOWNRIGHT};
    enum BUTTON {BTN_NOPE = 0, BTN_ONE, BTN_TWO, BTN_THREE};

public:
    void setupController();
    uint8_t readControllerData();

public:
    STICK getStick();
    BUTTON getButton();

private:
    int address = 0;
};
