#include "ConsoleInterface.h"

ConsoleInterface::ConsoleInterface()
{    
    GPIO.enable    |= 0x0E0F0034; //enable all needed outputs outputs
}

ConsoleInterface::~ConsoleInterface()
{

}

void ConsoleInterface::writeCommand(uint8_t aValue, uint8_t data)
{
    //command shit
}

void ConsoleInterface::setData(uint8_t aValue)
{
    resetOutput(true, false, false);

    int output = 0;
    int temp = 0;
    
    temp = (aValue & 0xC0); //select the last 2 bits
    output |= (temp * 0x80000); //shift (25-6=19) positions

    temp = (aValue & 0x3C); //select the middle 4 bits
    output |= (temp * 0x4000); //shift (16-4=14) positions

    temp = (aValue & 0x03); //select the first 2 bits
    output |= (temp * 0x10); //shift (8-4=4) positions

    printf("%x\t", output);   //for debugging 

    GPIO.out |= output;
}

void ConsoleInterface::setClock(bool clk)
{    
    if (clk)
        GPIO.out |= 0b100; //write clk high
    else
        GPIO.out &= 0b011; //write clk low
}

void ConsoleInterface::setRegister(bool reg)
{    
    if (reg)
        GPIO.out |= 0x8000000; //write reg high
    else
        GPIO.out &= 0x7FFFFFF; //write reg low
}

void ConsoleInterface::resetOutput(bool data, bool clk, bool reg)
{    
    if (data)
        GPIO.out &= 0xF9F0FFC0; //reset data

    if (clk)
        GPIO.out &= 0b011; //write clk low

    if (reg)
        GPIO.out &= 0x8000000; //write enable low
}

void ConsoleInterface::clockDelay() 
{        
    vTaskDelay(500/portTICK_PERIOD_MS);  
}

void ConsoleInterface::writeDelay() 
{        
    vTaskDelay(1000/portTICK_PERIOD_MS);  
}

void ConsoleInterface::createNewSprite(uint8_t aSprAddress, uint8_t aRegAddress, uint8_t aPosX, uint8_t aPosY)
{    
    //create a new sprite
}

void ConsoleInterface::updateSpriteCoord(uint8_t aSprAddress, uint8_t aPosX, uint8_t aPosY)
{    
    //update existing sprite coord
}

void ConsoleInterface::deleteSprite(uint8_t aSprAddress)
{    
    //deletes an sprite
}