
#include <stdio.h>
#include <string>
#include <iostream>

#include "esp_system.h"
#include "esp_spi_flash.h"
#include "soc\gpio_struct.h"

#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "driver/gpio.h"
#include "sdkconfig.h"
#include "esp_task_wdt.h"

#include "nvs_flash.h"
#include "nvs.h"

//costum
#include "SpriteLoader.h"

extern "C" {
	void app_main(void);
}

extern gpio_dev_t GPIO;

void doTask(void *pvParameter)
{		
	SpriteLoader spr;
	
	vTaskDelay(1000/portTICK_PERIOD_MS);  
	spr.setAddressAndSize(0, 64);
	spr.loadSpriteOntoFPGA();

	spr.setAddressAndSize(64, 64);
	spr.loadSpriteOntoFPGA();

	spr.setAddressAndSize(128, 64);
	spr.loadSpriteOntoFPGA();

	spr.setAddressAndSize(192, 64);
	spr.loadSpriteOntoFPGA();
}

void app_main(void)
{	
	TaskHandle_t xHandle = NULL;

    GPIO.enable    |= 0x060F0034; //enable all needed outputs outputs
    xTaskCreate(&doTask, "fukcmedaddy", 4096, (void*) 1, tskIDLE_PRIORITY, &xHandle);
}






























