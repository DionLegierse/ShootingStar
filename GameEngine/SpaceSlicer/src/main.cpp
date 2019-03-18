
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
    vTaskDelay(100/portTICK_PERIOD_MS);  //40 ns delay

	ConsoleInterface CI;

	//aanmaken register
    CI.setRegister(true);
    CI.setData(0x85);
    CI.setClock(true);

    CI.setClock(false);   
	CI.setRegister(false);
	CI.setData(0);


	for(uint8_t i = 0; i < 128; i++)
	{
		//movedieshit
		CI.setRegister(true);
		CI.setData(0x02);
		CI.setClock(true);
		CI.setClock(false);	
		CI.setRegister(false);

		//update x
		CI.setData(i);
		CI.setClock(true);
		CI.setClock(false);

		CI.setRegister(true);
		CI.setData(0x85);
		CI.setClock(true);
		CI.setClock(false);
		CI.setRegister(false);
	}	
}

void app_main(void)
{	
	TaskHandle_t xHandle = NULL;

    xTaskCreate(&doTask, "fukcmedaddy", 4096, (void*) 1, tskIDLE_PRIORITY, &xHandle);
}






























