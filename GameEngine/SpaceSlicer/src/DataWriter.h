#include "esp_system.h"
#include "esp_spi_flash.h"
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"

extern gpio_dev_t GPIO;	

class DataWriter
{
public:
    DataWriter();
    ~DataWriter();

    void loadSpriteOntoFPGA(int, int);
    int writeToGPIO(int*);
};
