
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

//aaaaaaaaaaaaaaaaaaaaaaaaaaa
#include "ConsoleInterface.h"

extern "C" {
	void app_main(void);
}
 
void doTask(void *pvParameter)
{		
    vTaskDelay(100/portTICK_PERIOD_MS); 

	ConsoleInterface CI;

	uint8_t player1[4];
	uint8_t player2[4];

	CI.freeAllObjects();
	CI.playSong(0);

	player1[0] = CI.createNewObject(SPR_P1_TL);
	player1[1] = CI.createNewObject(SPR_P1_TR);
	player1[2] = CI.createNewObject(SPR_P1_BL);
	player1[3] = CI.createNewObject(SPR_P1_BR);

	for (;;)
		for(uint16_t x = 0; x < 512; x++)
		{		
			CI.updateObjectCoord(player1[0], x, x);
		}	
}

void app_main(void)
{	
	TaskHandle_t xHandle = NULL;

    xTaskCreate(&doTask, "fukcmedaddy", 4096, (void*) 1, tskIDLE_PRIORITY, &xHandle);
}






























