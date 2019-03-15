
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

extern "C" {
	void app_main(void);
}
 
void doTask(void *pvParameter)
{			
	ConsoleInterface CI;

	CI.setData(0x01);
	CI.clockDelay();
	CI.setData(0x80);
	CI.clockDelay();
	CI.clockDelay();

	CI.resetOutput(true, true, true);
}

void app_main(void)
{	
	TaskHandle_t xHandle = NULL;

    xTaskCreate(&doTask, "fukcmedaddy", 4096, (void*) 1, tskIDLE_PRIORITY, &xHandle);
}






























