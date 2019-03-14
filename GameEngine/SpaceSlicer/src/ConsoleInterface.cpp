#include "ConsoleInterface.h"

ConsoleInterface::ConsoleInterface()
{    
    GPIO.enable    |= 0x060F0034; //enable all needed outputs outputs
}

ConsoleInterface::~ConsoleInterface()
{

}

void ConsoleInterface::writeCommand(uint8_t *aValue, uint8_t *data)
{
    setRegister(true);
    setData(aValue);
    setClock(true);
}

void ConsoleInterface::setData(uint8_t *aValue)
{
    resetOutput(true, false, false);

    int output = 0;
    int temp = 0;
    
    temp = (*aValue & 0xC0); //select the last 2 bits
    output |= (temp * 0x80000); //shift (25-6=19) positions

    temp = (*aValue & 0x3C); //select the middle 4 bits
    output |= (temp * 0x4000); //shift (16-4=14) positions

    temp = (*aValue & 0x03); //select the first 2 bits
    output |= (temp * 0x10); //shift (8-4=4) positions

    printf("%x\t", output);   //for debugging 

    GPIO.out |= output;
}

void ConsoleInterface::setClock(bool clk)
{    
    if (clk)
        GPIO.out |= 0b100; //write enable high
    else
        GPIO.out &= 0b011; //write enable high
}

//!!!!!!!!!!!!!!replace this for the new gpio output!!!!!!!!!!!!!!!!!!!!
void ConsoleInterface::setRegister(bool reg)
{    
    if (reg)
        GPIO.out |= 0x8000000; //write enable high
    else
        GPIO.out &= 0x7FFFFFF; //write enable high
}

void ConsoleInterface::resetOutput(bool data, bool clk, bool reg)
{    
    if (data)
        GPIO.out &= 0xF9F0FFC0; //reset outputs

    if (clk)
        GPIO.out &= 0b011; //write enable high


//!!!!!!!!!!!!!!replace this for the new gpio output!!!!!!!!!!!!!!!!!!!
    if (reg)
        GPIO.out &= 0x8000000; //write enable high
}

void ConsoleInterface::clockDelay() 
{        
    vTaskDelay(clkDelay/portTICK_PERIOD_MS);  
}

void ConsoleInterface::writeDelay() 
{        
    vTaskDelay(delay/portTICK_PERIOD_MS);  
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