#include "esp_system.h"
#include "esp_spi_flash.h"
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"

extern gpio_dev_t GPIO;	

class SpriteLoader
{
public:
    SpriteLoader();
    ~SpriteLoader();

    void loadSpriteOntoFPGA();
    void setAddressAndSize(int, int);
    int convertToGPIO(int*);

private:
    int address = 0;
    int size = 0;
    int cnt = 0;
    bool flag = true;
};
