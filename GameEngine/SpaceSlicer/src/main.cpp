#include <stdio.h>
#include <string>
#include <iostream>


#include "nvs_flash.h"
#include "nvs.h"

#include "esp_system.h"
#include "esp_spi_flash.h"
#include "soc\gpio_struct.h"

#include "Vector2.h"

#define STORAGE_NAMESPACE "storage"

extern "C" 
{
	void app_main(void);
}

extern gpio_dev_t GPIO;

void app_main(void)
{
	/*
	GPIO.enable_w1ts = 0b00000000000011110000000000111110;

	GPIO.out_w1ts = 0b00000000000011110000000000111110;
	*/

	nvs_flash_init();

	nvs_handle myHandle;
    esp_err_t err;

    err = nvs_open(STORAGE_NAMESPACE, NVS_READWRITE, &myHandle);

	nvs_set_u8(myHandle, "a", 16);

	uint8_t kaasValue=0;

	for(size_t i = 0; i < 100; i++)
	{
		printf("%d\n", kaasValue);
	}
	
    nvs_close(myHandle);	
}