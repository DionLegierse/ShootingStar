
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

#include "nvs_flash.h"
#include "nvs.h"

//costum
#include "ControllerInput.h"

extern "C" 
{
	void app_main(void);
}

extern gpio_dev_t GPIO;

void app_main(void)
{	
	ControllerInput CI(0x20);

	CI.setupController();

	for(;;)
	{
		if (CI.getUp())
			printf("up\n");

		if (CI.getDown())
			printf("down\n");

		if (CI.getLeft())
			printf("left\n");

		if (CI.getRight())
			printf("right\n");
	}
}






























