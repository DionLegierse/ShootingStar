#pragma once
#include "freertos/FreeRTOS.h"
#include "freertos/semphr.h"
#include <cstdint>
#include <cstdlib>

namespace MutexHandler
{
    static SemaphoreHandle_t mutex;

    bool initMutex();
    void takeMutex();
    void giveMutex();
};