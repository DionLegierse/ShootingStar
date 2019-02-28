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
    GPIO.enable_w1ts = 0b00000000000011110000000000111110; //enable all outputs
    GPIO.out_w1tc &= 0x0; //reset register

    int *data = new int();

	for(int i = address; i < address + size; i++)
	{	 
        /* 
        //Testing bs
		printf( "%x\t", *data );
        */

		if (i % 8 == 0 && i != address)
			printf("\n");
            
		spi_flash_read(0x100000 + i, data, sizeof(uint8_t) );
        GPIO.out_w1tc |= 0b00; //write enable low
        GPIO.out_w1tc |= convertToGPIO(data);
	}
    printf("\n");
    printf("\n");
    printf("\n");
    
	delete data;
    GPIO.enable_w1ts = 0x0;
}

int SpriteLoader::convertToGPIO(int *aValue)
{
    int output = 0;

    output += ((*aValue & 0xF0) * 65536);
    
    output += ((*aValue & 0x0F) * 4);

    output += 0b10; //write enable high

    printf("%x\t", output);

    return output; 
}