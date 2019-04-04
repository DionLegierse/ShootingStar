#include "esp_system.h"
#include "esp_spi_flash.h"
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"

//-----------------------------------------------
#include "Utils/spriteLocations.h"
#include "Utils/Vector2.h"

//Register names
#define MUSIC_LSB           0
#define MUSIC_MSB           (uint8_t)0x01
#define POS_X_LSB           (uint8_t)0x02
#define POS_X_MSB           (uint8_t)0x03
#define POS_Y_LSB           (uint8_t)0x04
#define POS_Y_MSB           (uint8_t)0x05
#define SPR_MEM_LOC_LSB     (uint8_t)0x06
#define SPR_REG_LOC         (uint8_t)0x08

//Command codes
#define START_APU   (uint8_t)0x80
#define RESET_APU   (uint8_t)0x81
#define UPDATE_X    (uint8_t)0x82
#define UPDATE_Y    (uint8_t)0x83
#define UPDATE_XY   (uint8_t)0x84
#define UPDATE_SPR  (uint8_t)0x85
#define RESET_BANK  (uint8_t)0x86
#define RESET_SPR   (uint8_t)0x87

#define REG_AMOUNT  (uint8_t)255

extern gpio_dev_t GPIO;	

class ConsoleInterface
{
public:
    ConsoleInterface();
    ~ConsoleInterface();

//Object handling
public:
    int createNewObject(uint8_t);
    void updateObjectCoord(uint8_t, Vector2);
    void deleteObject(uint8_t);
    void freeAllObjects();

//music 
public:
    void playSong(uint16_t);

//text printing
public:
    uint8_t printText(char *, Vector2);

//registers
public:
    void writeToGPU(uint8_t);
    void writeToRegister(uint8_t, uint8_t);    




//gpio handling
private:
    void setData(uint8_t); //Depricated

    void setClock(bool);
    void clockIn();
    
    void setRegister(bool);
    void writeDataToGPIO(uint8_t);

//registers
private:
    uint8_t getFreeRegisterID();


//delay constants
private:
    static bool isAvailable[REG_AMOUNT + 1];
    int output = 0;
};
