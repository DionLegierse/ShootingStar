
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
#include "esp_pthread.h"

//----------------------------------------------------
#include "Handlers/ConsoleInterface.h"


extern "C" {
	void app_main(void);
}
 
void doTask(void *pvParameter)
{		
    vTaskDelay(100/portTICK_PERIOD_MS); 

	ConsoleInterface CI;

	CI.freeAllObjects();

	uint16_t value = 1908;


	uint8_t * y;
	uint8_t * x;

	x = CI.printText( value, Vector2(9, 9) );
	y = CI.printText( "cas is gay", Vector2(9, 18) );
	
	for(uint8_t i = 0; i < 8; i++)
	{
		printf( "%d\t", x[i] );
	}
	printf("\n");

	for(uint8_t i = 0; i < 8; i++)
	{
		printf( "%d\t", y[i] );
	}
	printf("\n");
}

void app_main(void)
{	
	TaskHandle_t xHandle = NULL;

	xTaskCreatePinnedToCore(&doTask, "task1", 4096, (void*) 1, 1, &xHandle, 1);
}

























