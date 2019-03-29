
#include <stdio.h>
#include <string>
#include <iostream>

#include "freertos/FreeRTOS.h"
#include "freertos/task.h"

#include "driver/gpio.h"
#include "sdkconfig.h"
#include "driver/i2c.h"

#include "esp_system.h"

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
