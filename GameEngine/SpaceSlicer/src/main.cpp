
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

	uint8_t x = CI.printText( "123456789123456789123456789", {0, 0} );
	printf("%d\n", x);	
}

void doI2C(void *pvParameter)
{
	printf("doI2C");
}

void app_main(void)
{	
	TaskHandle_t xHandle = NULL;

	xTaskCreatePinnedToCore(&doTask, "task1", 4096, (void*) 1, 10, &xHandle, 1);
	xTaskCreatePinnedToCore(&doI2C, "I2C", 4096, (void*) 1, 5, &xHandle, 0);
}




s

























