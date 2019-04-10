#pragma once
#include "freertos/FreeRTOS.h"
#include "freertos/semphr.h"
#include <cstdint>
#include <cstdlib>

namespace MutexHandler
{
    bool initMutex();
    void takeMutex();
    void giveMutex();
};