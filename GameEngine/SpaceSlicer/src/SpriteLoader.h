#include "esp_system.h"
#include "esp_spi_flash.h"

extern gpio_dev_t GPIO;	

class SpriteLoader
{
public:
    SpriteLoader();
    ~SpriteLoader();

    void loadSpriteOntoFPGA();
    void setAddressAndSize(int, int);
    int convertToGPIO(int);

private:
    int address = 0;
    int size = 0;
};
