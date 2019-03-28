
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
	ControllerInput CE(0x27);

	CI.setupController();
	CE.setupController();

	for(;;)
	{
		if (CI.getInput(UP))
			printf("up1\n");

		if (CI.getInput(DOWN))
			printf("down1\n");

		if (CI.getInput(LEFT))
			printf("left1\n");

		if (CI.getInput(RIGHT))
			printf("right1\n");

		if (CI.getInput(BUTTON_ONE))
			printf("buttonone1\n");

		if (CI.getInput(BUTTON_TWO))
			printf("buttontwo1\n");

		if (CI.getInput(BUTTON_THREE))
			printf("buttonthrees1\n");

			
		if (CE.getInput(UP))
			printf("up2\n");

		if (CE.getInput(DOWN))
			printf("down2\n");

		if (CE.getInput(LEFT))
			printf("left2\n");

		if (CE.getInput(RIGHT))
			printf("right2\n");

		if (CE.getInput(BUTTON_ONE))
			printf("buttonone2\n");

		if (CE.getInput(BUTTON_TWO))
			printf("buttontwo2\n");

		if (CE.getInput(BUTTON_THREE))
			printf("buttonthrees2\n");
	}
}






























