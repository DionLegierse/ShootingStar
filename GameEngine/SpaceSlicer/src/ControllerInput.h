
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

public:
    void setupController();
    uint8_t readControllerData();

public:
    bool getInput(BUTTON);
    bool getUp();
    bool getDown();
    bool getLeft();
    bool getRight();
    bool getButton();

public: 
    enum BUTTON {UP, DOWN, LEFT, RIGHT, BUTTON_ONE, BUTTON_TWO, BUTTON_THREE};

private:
    int address = 0;
};
