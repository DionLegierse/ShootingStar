#include "esp_system.h"
#include "esp_spi_flash.h"
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"

extern gpio_dev_t GPIO;	

class ConsoleInterface
{
public:
    ConsoleInterface();
    ~ConsoleInterface();

    //void loadSpriteOntoFPGA();
    //void setAddressAndSize(int, int);

//gpio handling
public:
    void setClock(bool);
    void setRegister(bool);
    void resetOutput(bool, bool, bool);
    void setData(uint8_t);
    void writeCommand(uint8_t, uint8_t);

//Sprite handling
public:
    void createNewSprite(uint8_t, uint8_t, uint8_t, uint8_t);
    void updateSpriteCoord(uint8_t, uint8_t, uint8_t);
    void deleteSprite(uint8_t);

//delays
public:
    void clockDelay();
    void writeDelay();    

//delay constants
private:
};
