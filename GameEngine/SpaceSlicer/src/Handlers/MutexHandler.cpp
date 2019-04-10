#include "Handlers/MutexHandler.h"

static SemaphoreHandle_t mutex;

/**
 * @brief Initializes the Mutex
 * 
 * @return true Initialization succesful
 * @return false Initialization unsuccesful
 */
bool MutexHandler::initMutex()
{
    mutex = xQueueCreateMutex(queueQUEUE_TYPE_MUTEX);
    
    if (mutex != NULL)
        return true;
    else
        return false;
}

/**
 * @brief Takes the mutex
 * 
 */
void MutexHandler::takeMutex()
{
    xSemaphoreTake(mutex, 10);
}

/**
 * @brief Gives the mutex
 * 
 */
void MutexHandler::giveMutex()
{
    xSemaphoreGive(mutex);
}