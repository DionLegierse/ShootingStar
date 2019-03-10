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
    //GPIO.enable    |= 0b0000 0110 0000 1111 0000 0000 0011 0100; //enable all outputs
    //GPIO.out       &= 0b1111 1111 1111 0000 1111 1111 1100 0011; //reset register

	GPIO.out &= 0xF9F0FFCB; //reset outputs

    int *data = new int(); 

	for(int i = address; i < address + size; i++)
	{	 
		if (i % 8 == 0 && i != address)
			printf("\n");
            
		spi_flash_read(0x100000 + i, data, sizeof(uint8_t) );


        GPIO.out |= convertToGPIO(data); 
		vTaskDelay(0.1/portTICK_PERIOD_MS);  
        GPIO.out |= 0b100; //write enable high

		vTaskDelay(1/portTICK_PERIOD_MS);  

	    GPIO.out &= 0xF9F0FFCB; //reset outputs

		vTaskDelay(1/portTICK_PERIOD_MS);
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
    output |= (temp * 0x80000); //shift (25-6=19) positions

    temp = (*aValue & 0x3C); //select the middle 4 bits
    output |= (temp * 0x4000); //shift (16-4=14) positions

    temp = (*aValue & 0x03); //select the first 2 bits
    output |= (temp * 0x10); //shift (8-4=4) positions

    printf("%x\t", output);   //for debugging 
    return output; 
}