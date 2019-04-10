#include <list>

#include "Handlers/ConsoleInterface.h"

bool ConsoleInterface::isAvailable[REG_AMOUNT + 1];

static std::list<ConsoleInterface::textID> writtenTextVector;

ConsoleInterface::ConsoleInterface()
{    
    //GPIO.enable |= 0x0E0F0034; //enable all needed outputs outputs 
    gpio_set_direction(GPIO_NUM_4,  GPIO_MODE_OUTPUT);
    gpio_set_direction(GPIO_NUM_5,  GPIO_MODE_OUTPUT);
    gpio_set_direction(GPIO_NUM_16, GPIO_MODE_OUTPUT);
    gpio_set_direction(GPIO_NUM_17, GPIO_MODE_OUTPUT);
    gpio_set_direction(GPIO_NUM_18, GPIO_MODE_OUTPUT);
    gpio_set_direction(GPIO_NUM_19, GPIO_MODE_OUTPUT);
    gpio_set_direction(GPIO_NUM_25, GPIO_MODE_OUTPUT);
    gpio_set_direction(GPIO_NUM_26, GPIO_MODE_OUTPUT);

    gpio_set_direction(GPIO_NUM_32, GPIO_MODE_OUTPUT);  
    gpio_set_direction(GPIO_NUM_33, GPIO_MODE_OUTPUT); 
}

ConsoleInterface::~ConsoleInterface()
{
}

void ConsoleInterface::writeToRegister(uint8_t aReg, uint8_t aData)
{ 
    setRegister(true);    
    writeDataToGPIO(aReg);    
    clockIn();
    setRegister(false);

    writeDataToGPIO(aData);
    clockIn();
}

void ConsoleInterface::writeToGPU(uint8_t aCommand)
{    
    setRegister(true);
    writeDataToGPIO(aCommand);
    clockIn();
    setRegister(false);
}

//Depricated
void ConsoleInterface::setData(uint8_t aValue)
{
    GPIO.out &= 0x09F0FFCF; //reset data

    output = 0;
    int temp = 0;
    
    temp = (aValue & 0xC0); //select the last 2 bits
    output |= (temp << 19); //shift (25-6=19) positions

    temp = (aValue & 0x3C); //select the middle 4 bits
    output |= (temp << 14); //shift (16-4=14) positions

    temp = (aValue & 0x03); //select the first 2 bits
    output |= (temp << 4); //shift (8-4=4) positions 

    GPIO.out |= output;  
}

void ConsoleInterface::setClock(bool clk)
{    
    if (clk)
        gpio_set_level(GPIO_NUM_32, 1);
    else
        gpio_set_level(GPIO_NUM_32, 0); 
}

void ConsoleInterface::setRegister(bool reg)
{    
    if (reg)
        gpio_set_level(GPIO_NUM_33, 1);
    else
        gpio_set_level(GPIO_NUM_33, 0);    
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

    if (temp > REG_AMOUNT)
        return -1;

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
void ConsoleInterface::updateObjectCoord(uint8_t aRegAddress, Vector2 coord)
{   
///////////SPLIT uint16_t//////////////
    uint16_t coordX = coord.getX();
    uint16_t coordY = coord.getY();

    uint8_t LSBX = (uint8_t)(coordX);
    uint8_t MSBX = (uint8_t)(coordX >> 8);

    uint8_t LSBY = (uint8_t)(coordY);
    uint8_t MSBY = (uint8_t)(coordY >> 8);
    
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
    isAvailable[aRegAddress] = true;

    writeToRegister(SPR_REG_LOC, aRegAddress);
    writeToGPU(RESET_SPR);
}

void ConsoleInterface::clockIn()
{
    setClock(true);
    setClock(false);    
}

void ConsoleInterface::playSong(uint16_t aAddress)
{    
    uint8_t LSBM = (uint8_t)(aAddress);
    uint8_t MSBM = (uint8_t)(aAddress >> 8);

	writeToGPU(RESET_APU);
	writeToRegister(MUSIC_LSB, LSBM);
	writeToRegister(MUSIC_MSB, MSBM);
	writeToGPU(START_APU);
}

uint16_t ConsoleInterface::IDcounter = 0;

uint16_t ConsoleInterface::printText(char * aText, Vector2 aPos)
{   
    ConsoleInterface::textID ID;

    uint8_t data = 0;
    uint8_t * address = new uint8_t[16];

    int cnt = 0;

    bool flag = true;

    while(*aText && flag)
    {
        data = *aText;
        data -= ASCII_A; //ascii value of a

        if (data >= 207) //value of 0
            data -= 181; //offset

        if (data < 36) //value of a space
        {
            address[cnt] = createNewObject( data );
            updateObjectCoord( address[cnt], aPos );
            cnt++;
        }

        aPos += Vector2(LETTER_OFFSET, 0);        
        aText++;

        if (cnt >= 16)
            flag = false;
    } 


    std::get<0>(ID) = ConsoleInterface::IDcounter++;
    std::get<1>(ID) = cnt;
    std::get<2>(ID) = address;

    writtenTextVector.push_back(ID);   

    return (ConsoleInterface::IDcounter - 1);
}

uint16_t ConsoleInterface::printText(uint16_t values, Vector2 aPos)
{   
    ConsoleInterface::textID ID;

    uint16_t data = 0;
    uint8_t * address = new uint8_t[8];

    uint8_t num[8];

    for(size_t i = 0; i < 8; i++)    
    {
        data = values % 10;       

        num[i] = data;

        values /= 10; 
    }   

    for(int i = 7; i > -1; i--)
    {
        address[i] = createNewObject( num[i] + 26 );
        updateObjectCoord( address[i], aPos );

        aPos += Vector2(LETTER_OFFSET, 0); 
    }  

    std::get<0>(ID) = ConsoleInterface::IDcounter++;
    std::get<1>(ID) = 8;
    std::get<2>(ID) = address;

    writtenTextVector.push_back(ID);   

    return (ConsoleInterface::IDcounter - 1);
}

void ConsoleInterface::removeText(uint16_t row)
{
    ConsoleInterface::textID toRemove;

    std::get<0>(toRemove) = MAX_ID;

    for(ConsoleInterface::textID& n : writtenTextVector)
    {
        if (std::get<0>(n) == row) {
            toRemove = n;
            writtenTextVector.remove(n);
        }
    }

    for(uint8_t i = 0; i < std::get<1>(toRemove); i++)
    {
        deleteObject(std::get<2>(toRemove)[i]);
    }

    if (std::get<0>(toRemove) != MAX_ID) {
        delete[] std::get<2>(toRemove);    
    }
}

uint8_t ConsoleInterface::getFreeRegisterID()
{
    bool flag = true;
    int cnt = 0;

    while (flag)
    {
        if (cnt >= REG_AMOUNT)
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

void ConsoleInterface::writeDataToGPIO(uint8_t aData)
{ 
    gpio_set_level(GPIO_NUM_4,  (aData >> 0) & (uint8_t)1);
    gpio_set_level(GPIO_NUM_5,  (aData >> 1) & (uint8_t)1);
    gpio_set_level(GPIO_NUM_16, (aData >> 2) & (uint8_t)1);
    gpio_set_level(GPIO_NUM_17, (aData >> 3) & (uint8_t)1);
    gpio_set_level(GPIO_NUM_18, (aData >> 4) & (uint8_t)1);
    gpio_set_level(GPIO_NUM_19, (aData >> 5) & (uint8_t)1);
    gpio_set_level(GPIO_NUM_25, (aData >> 6) & (uint8_t)1);
    gpio_set_level(GPIO_NUM_26, (aData >> 7) & (uint8_t)1);
}

void ConsoleInterface::freeAllObjects()
{
    for(uint8_t i = 0; i < REG_AMOUNT; i++)
    {
        isAvailable[i] = true;
    }

    writeToGPU(RESET_BANK);
}
