
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
#include "ControllerInput.h"

extern "C" {
	void app_main(void);
}

void app_main(void)
{	
	ControllerInput CE(0x20);

	CE.setupController();

	for(;;)
	{
		printf("S%x", CE.readControllerData());
		printf("B%x\n", CE.getButton());
	}
}






























