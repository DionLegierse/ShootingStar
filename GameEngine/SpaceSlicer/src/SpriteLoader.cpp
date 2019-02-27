#include "SpriteLoader.h"

SpriteLoader::SpriteLoader()
{
}

SpriteLoader::~SpriteLoader()
{
}

void SpriteLoader::setAddressAndSize(int aAddress, int aSize)
{
    address = aAddress;
    size = aSize;
}

void SpriteLoader::loadSpriteOntoFPGA()
{
    //GPIO.enable_w1ts    |= 0b0000 0110 0000 1111 0000 0000 0011 0100; //enable all outputs
    //GPIO.out_w1ts       &= 0b1111 1111 1111 0000 1111 1111 1100 0011; //reset register

    GPIO.enable_w1ts    |= 0x060F0034; //enable all needed outputs outputs
	GPIO.out_w1ts       &= 0xF9F0FFCB; //reset outputs

    int *data = new int();

	for(int i = address; i < address + size; i++)
	{	 
		if (i % 8 == 0 && i != address)
			printf("\n");
            
		spi_flash_read(0x100000 + i, data, sizeof(uint8_t) );
        GPIO.out_w1ts |= 0xF; //write enable high
        GPIO.out_w1ts |= convertToGPIO(data);        
	    GPIO.out_w1ts &= 0xF9F0FFCB; //reset outputs
	}
    
	delete data;
    printf("\n");
    printf("\n");
    printf("\n");
}

int SpriteLoader::convertToGPIO(int *aValue)
{
    int output = 0;
    int temp = 0;
    
    temp = (*aValue & 0xC0); //select the last 2 bits
    output |= (temp * 0x80000); //shift 25-6 positions

    temp = (*aValue & 0x3C); //select the middle 4 bits
    output |= (temp * 0x4000); //shift 16-4 positions

    temp = (*aValue & 0x03); //select the first 2 bits
    output |= (temp * 0xF); //shift 8-4 positions

    printf("%x\t", output);   //for debugging 
    
    return output; 
}