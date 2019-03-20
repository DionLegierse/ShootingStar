#include "ConsoleInterface.h"

ConsoleInterface::ConsoleInterface()
{    
    GPIO.enable    |= 0x0E0F0034; //enable all needed outputs outputs
}

ConsoleInterface::~ConsoleInterface()
{

}

void ConsoleInterface::writeToRegister(uint8_t aReg, uint8_t aData)
{ 
    setRegister(true);
    setData(aReg);    
    clockIn();
    setRegister(false);

    setData(aData);
    clockIn();
}

void ConsoleInterface::writeToGPU(uint8_t aCommand)
{    
    setRegister(true);
    setData(aCommand);
    clockIn();
    setRegister(false);
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

    //printf("%x\t", output);   //for debugging 

    GPIO.out |= output;
}

void ConsoleInterface::setClock(bool clk)
{    
    if (clk)
        GPIO.out |= 0b100; //write clk high
    else
        GPIO.out &= 0xFFFFFFFB; //write clk low
}

void ConsoleInterface::setRegister(bool reg)
{    
    if (reg)
        GPIO.out |= 0x8000000; //write reg high
    else
        GPIO.out &= 0x7FFFFFF; //write reg lo
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

void ConsoleInterface::createNewObject(uint8_t aSprAddress, uint8_t aRegAddress)
{    
    writeToRegister(0x08, aRegAddress);
    writeToRegister(0x06, aSprAddress);
///////////SET THE X VALUES////////////
    writeToRegister(0x02, 0xFF);
    writeToRegister(0x03, 0xFF);
///////////SET THE Y VALUES////////////
    writeToRegister(0x04, 0xFF);
    writeToRegister(0x05, 0xFF);
///////////CLOCK THAT SHIT////////////
    writeToGPU(0x85);
}

void ConsoleInterface::updateObjectCoord(uint8_t aRegAddress, uint16_t aPosX, uint16_t aPosY)
{   
    uint8_t LSBX = (uint8_t)(aPosX);
    uint8_t MSBX = (uint8_t)(aPosX >> 8);

    uint8_t LSBY = (uint8_t)(aPosY);
    uint8_t MSBY = (uint8_t)(aPosY >> 8);
    
    writeToRegister(0x08, aRegAddress);
///////////SET THE X VALUES////////////
    writeToRegister(0x02, LSBX);
    writeToRegister(0x03, MSBX);
///////////SET THE Y VALUES////////////
    writeToRegister(0x04, LSBY);
    writeToRegister(0x05, MSBY);
///////////CLOCK THAT SHIT////////////
    writeToGPU(0x84);
}

void ConsoleInterface::deleteObject(uint8_t aRegAddress)
{    
    //deletes an sprite
}

void ConsoleInterface::clockIn()
{
    setClock(true);
    setClock(false);    
}