#include "esp_system.h"
#include "esp_spi_flash.h"
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"

#include "spriteLocations.h"

//Register names
#define MUSIC_LSB           0
#define MUSIC_MSB           0x01
#define POS_X_LSB           0x02
#define POS_X_MSB           0x03
#define POS_Y_LSB           0x04
#define POS_Y_MSB           0x05
#define SPR_MEM_LOC_LSB     0x06
#define SPR_REG_LOC         0x08

//Command codes
#define APU_START   0x80
#define RESET_APU   0x81
#define UPDATE_X    0x82
#define UPDATE_Y    0x83
#define UPDATE_XY   0x84
#define UPDATE_SPR  0x85
#define RESET_BANK  0x86

#define REG_AMOUNT  128

extern gpio_dev_t GPIO;	

class ConsoleInterface
{
public:
    ConsoleInterface();
    ~ConsoleInterface();

//Object handling
public:
    int createNewObject(uint8_t);
    void updateObjectCoord(uint8_t, uint16_t, uint16_t);
    void deleteObject(uint8_t);
    void freeAllObjects();

//gpio handling
private:
    void setClock(bool);
    void clockIn();
    
    void setRegister(bool);
    void resetOutput(bool, bool, bool);
    void setData(uint8_t);

//registers
private:
    void writeToRegister(uint8_t, uint8_t);
    void writeToGPU(uint8_t);
    
    uint8_t getFreeRegisterID();
    void clearAllRegisters();


//delay constants
private:
    bool isAvailable[128];
};
