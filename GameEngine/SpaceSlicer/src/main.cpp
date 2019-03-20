
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

#include "driver/i2c.h"

#include "nvs_flash.h"
#include "nvs.h"

//costum
#include "ConsoleInterface.h"
#include <cmath>

extern "C" {
	void app_main(void);
}
 
void doTask(void *pvParameter)
{		
    vTaskDelay(100/portTICK_PERIOD_MS); 

	ConsoleInterface CI;

	const uint8_t spr1 = 0; 
	const uint8_t spr2 = 1;

	for(size_t i = 0; i < 17; i++)
	{
		CI.createNewObject(spr1, i);
	}
	
	
	
	for (;;)
		for (uint16_t x = 0; x < 512; x++)
		{
			CI.updateObjectCoord(0, x+0, x+0);
			CI.updateObjectCoord(1, x, x+16);
			CI.updateObjectCoord(2, x, x+24);
			CI.updateObjectCoord(3, x, x+32);
			
			CI.updateObjectCoord(4, x+8, x+0);
			CI.updateObjectCoord(5, x+8, x+16);
			
			CI.updateObjectCoord(6, x+16, x+0);
			CI.updateObjectCoord(7, x+16, x+8);
			CI.updateObjectCoord(8, x+16, x+16);
			CI.updateObjectCoord(9, x+16, x+24);
			CI.updateObjectCoord(10, x+16, x+32);
			
			CI.updateObjectCoord(11, x+24, x+16);
			CI.updateObjectCoord(12, x+24, x+32);

			CI.updateObjectCoord(13, x+32, x+0);
			CI.updateObjectCoord(14, x+32, x+8);
			CI.updateObjectCoord(15, x+32, x+16);
			CI.updateObjectCoord(16, x+32, x+32);
			
			vTaskDelay(1/portTICK_PERIOD_MS);  
		}
}

void app_main(void)
{	
	TaskHandle_t xHandle = NULL;

    xTaskCreate(&doTask, "fukcmedaddy", 4096, (void*) 1, tskIDLE_PRIORITY, &xHandle);
}






























