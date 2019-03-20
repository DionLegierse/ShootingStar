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

//Object handling
public:
    void createNewObject(uint8_t, uint8_t);
    void updateObjectCoord(uint8_t, uint16_t, uint16_t);
    void deleteObject(uint8_t);

//gpio handling
private:
    void setClock(bool);
    void clockIn();
    
    void setRegister(bool);
    void resetOutput(bool, bool, bool);
    void setData(uint8_t);

private:
    void writeToRegister(uint8_t, uint8_t);
    void writeToGPU(uint8_t);


//delay constants
private:
};
