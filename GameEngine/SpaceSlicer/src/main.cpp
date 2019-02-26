
#include <stdio.h>
#include <string>
#include <iostream>

#include "esp_system.h"
#include "esp_spi_flash.h"
#include "soc\gpio_struct.h"

#include "nvs_flash.h"
#include "nvs.h"

//costum
#include "SpriteLoader.h"

#define STORAGE_NAMESPACE "dummyNamespace"

extern "C" {
	void app_main(void);
}

extern gpio_dev_t GPIO;

void app_main(void)
{
	SpriteLoader spr;

	spr.setAddressAndSize(0, 64);
	spr.loadSpriteOntoFPGA();
	
	spr.setAddressAndSize(64, 64);
	spr.loadSpriteOntoFPGA();
	
	spr.setAddressAndSize(128, 64);
	spr.loadSpriteOntoFPGA();
	
	spr.setAddressAndSize(192, 64);
	spr.loadSpriteOntoFPGA();

	
}






























