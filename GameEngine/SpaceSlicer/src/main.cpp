
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
#include "SpriteLoader.h"

extern "C" {
	void app_main(void);
}

extern gpio_dev_t GPIO;

esp_err_t controllerInput()
{	
	esp_err_t ret;
	//---------------------------------------------------------------------------
    uint8_t* data_rd = new uint8_t();

	i2c_cmd_handle_t cmd = i2c_cmd_link_create();

    ret = i2c_master_stop(cmd);
		printf("errorStop: %s\t\n", esp_err_to_name(ret) );
    ret = i2c_master_write_byte(cmd, 0b0, 0x1);
		printf("errorWrite: %s\t\n", esp_err_to_name(ret) );
	ret = i2c_master_read_byte(cmd, data_rd, I2C_MASTER_NACK);
		printf("errorRead: %s\t\n", esp_err_to_name(ret) );
	ret = i2c_master_start(cmd);
		printf("errorStart: %s\t\n", esp_err_to_name(ret) );

    ret = i2c_master_cmd_begin(I2C_NUM_0, cmd, 1000 / portTICK_RATE_MS);
		printf("errorBegin: %s\t\n", esp_err_to_name(ret) );

	printf("Data: %d\t\n", *data_rd);

    i2c_cmd_link_delete(cmd);
	delete data_rd;
    return ret;
	//---------------------------------------------------------------------------
}

void doTask(void *pvParameter)
{	
	/*	
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
	*/
}

void app_main(void)
{	
	// TaskHandle_t xHandle = NULL;

    // GPIO.enable    |= 0x060F0034; //enable all needed outputs outputs
    // //xTaskCreate(&doTask, "fukcmedaddy", 4096, (void*) 1, tskIDLE_PRIORITY, &xHandle);
    // xTaskCreate(&doTask, "fukcmedaddy", 8192, (void*) 1, tskIDLE_PRIORITY, &xHandle);
	
	gpio_set_direction(GPIO_NUM_21, GPIO_MODE_INPUT_OUTPUT);
	gpio_set_direction(GPIO_NUM_22, GPIO_MODE_INPUT_OUTPUT);

	gpio_set_pull_mode(GPIO_NUM_21, GPIO_PULLUP_ONLY);
	gpio_set_pull_mode(GPIO_NUM_22, GPIO_PULLUP_ONLY);

	//---------------------------------------------------------------------------
    i2c_config_t conf;
	esp_err_t ret;
 
    conf.mode = I2C_MODE_MASTER;

    conf.sda_io_num = GPIO_NUM_18;
    conf.sda_pullup_en = GPIO_PULLUP_DISABLE;

    conf.scl_io_num = GPIO_NUM_19;
    conf.scl_pullup_en = GPIO_PULLUP_DISABLE;

    conf.master.clk_speed = 100000;

    ret = i2c_param_config(I2C_NUM_0, &conf);
	printf("errorConfig: %s\n", esp_err_to_name(ret) );

    ret = i2c_driver_install(I2C_NUM_0, conf.mode, 0, 0, 0);
	printf("errorInstall: %s\n", esp_err_to_name(ret) );
	//---------------------------------------------------------------------------
	
	ret = controllerInput();	
}






























