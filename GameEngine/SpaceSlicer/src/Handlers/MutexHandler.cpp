#include "Handlers/MutexHandler.h"

static SemaphoreHandle_t mutex;

bool MutexHandler::initMutex()
{
    mutex = xQueueCreateMutex(queueQUEUE_TYPE_MUTEX);
    
    if (mutex != NULL)
        return true;
    else
        return false;
}

void MutexHandler::takeMutex()
{
    xSemaphoreTake(mutex, 10);
}

void MutexHandler::giveMutex()
{
    xSemaphoreGive(mutex);
}