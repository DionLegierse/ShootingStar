#include "ConsoleInterface.h"

bool ConsoleInterface::isAvailable[128];

ConsoleInterface::ConsoleInterface()
{    
    //GPIO.enable |= 0x0E0F0034; //enable all needed outputs outputs 
    gpio_set_direction(GPIO_NUM_2, GPIO_MODE_OUTPUT);
    gpio_set_direction(GPIO_NUM_4, GPIO_MODE_OUTPUT);
    gpio_set_direction(GPIO_NUM_5, GPIO_MODE_OUTPUT);
    gpio_set_direction(GPIO_NUM_16, GPIO_MODE_OUTPUT);
    gpio_set_direction(GPIO_NUM_17, GPIO_MODE_OUTPUT);
    gpio_set_direction(GPIO_NUM_18, GPIO_MODE_OUTPUT);
    gpio_set_direction(GPIO_NUM_19, GPIO_MODE_OUTPUT);
    gpio_set_direction(GPIO_NUM_25, GPIO_MODE_OUTPUT);
    gpio_set_direction(GPIO_NUM_26, GPIO_MODE_OUTPUT);
    gpio_set_direction(GPIO_NUM_27, GPIO_MODE_OUTPUT);   
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
    GPIO.out &= 0xF9F0FFC4; //reset data 

    output = 0;
    int temp = 0;
    
    temp = (aValue & 0xC0); //select the last 2 bits
    output |= (temp * 0x80000); //shift (25-6=19) positions

    temp = (aValue & 0x3C); //select the middle 4 bits
    output |= (temp * 0x4000); //shift (16-4=14) positions

    temp = (aValue & 0x03); //select the first 2 bits
    output |= (temp * 0x10); //shift (8-4=4) positions 

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
    {
        GPIO.out |= 0x8000000; //write reg high

        // if (output == 0b0100000000000000000000000000)
        // {
        //     printf("AAAAAAAAAAAAAA\n");        
        //     vTaskDelay(500/portTICK_PERIOD_MS);
        //     printf("AAAAAAAAAAAAAA\n");      
        // }

        // if (output == 0b0100000000000000000000010000)
        // {
        //     printf("BBBBBBBBBBBBBB\n");        
        //     vTaskDelay(500/portTICK_PERIOD_MS);
        //     printf("BBBBBBBBBBBBBB\n");      
        // }
    }
    else
    {
        GPIO.out &= 0x7FFFFFF; //write reg low
    }    
}

void ConsoleInterface::resetOutput(bool data, bool clk, bool reg)
{    
    if (data)
        GPIO.out &= 0xF9F0FFC4; //reset data

    if (clk)
        GPIO.out &= 0b011; //write clk low

    if (reg)
        GPIO.out &= 0x8000000; //write enable low

}

/**
 * @brief Creates a new object.
 *
 * @param aSprAddress address on the fpga.
 *
 * @return
 *      Returns -1 when all the registers are used.
 *      Returns the register address, this is needed if you want to update the position
 *      of a object.
 */
int ConsoleInterface::createNewObject(uint8_t aSprAddress)
{        
///////////ASSIGN ID////////////
    uint8_t temp = getFreeRegisterID();

    writeToRegister(SPR_REG_LOC, temp);
    writeToRegister(SPR_MEM_LOC_LSB, aSprAddress);
///////////SET THE X VALUES////////////
    writeToRegister(POS_X_LSB, 0xFF);
    writeToRegister(POS_X_MSB, 0xFF);
///////////SET THE Y VALUES////////////
    writeToRegister(POS_Y_LSB, 0xFF);
    writeToRegister(POS_Y_MSB, 0xFF);
///////////CLOCK THAT SHIT/////////////
    writeToGPU(UPDATE_SPR);

    return temp;
}

/**
 * @brief Updates the position of a register.
 * 
 * @param aRegAddress The register address you got from the createNewObject function.
 * @param aPosX the X position you want to set.
 * @param aPosY the Y position you want to set.
 */
void ConsoleInterface::updateObjectCoord(uint8_t aRegAddress, uint16_t aPosX, uint16_t aPosY)
{   
///////////SPLIT uint16_t//////////////
    uint8_t LSBX = (uint8_t)(aPosX);
    uint8_t MSBX = (uint8_t)(aPosX >> 8);

    uint8_t LSBY = (uint8_t)(aPosY);
    uint8_t MSBY = (uint8_t)(aPosY >> 8);
    
    writeToRegister(SPR_REG_LOC, aRegAddress);
///////////SET THE X VALUES////////////
    writeToRegister(POS_X_LSB, LSBX);
    writeToRegister(POS_X_MSB, MSBX);
///////////SET THE Y VALUES////////////
    writeToRegister(POS_Y_LSB, LSBY);
    writeToRegister(POS_Y_MSB, MSBY);
///////////CLOCK THAT SHIT/////////////
    writeToGPU(UPDATE_XY);
}

/**
 * @brief deletes an object.
 *
 *      Function might not be needed
 */
void ConsoleInterface::deleteObject(uint8_t aRegAddress)
{    
    isAvailable[aRegAddress] = false;
}

void ConsoleInterface::clockIn()
{
    setClock(true);
    setClock(false);    
}


uint8_t ConsoleInterface::getFreeRegisterID()
{
    bool flag = true;
    int cnt = 0;

    while (flag)
    {
        if (cnt >= 128)
        {
            return -1;
        }
        else if ( isAvailable[cnt] )
        {
            isAvailable[cnt] = false;
            return cnt;
        }        
        cnt++;
    }

    return -1;
}

void ConsoleInterface::clearAllRegisters()
{ 
}

void ConsoleInterface::freeAllObjects()
{
    for(uint8_t i = 0; i < REG_AMOUNT; i++)
    {
        isAvailable[i] = true;
    }

    writeToGPU(RESET_BANK);
}
