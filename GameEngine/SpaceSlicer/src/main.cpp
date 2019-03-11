
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

esp_err_t controllerInit()
{
    i2c_config_t conf;
	esp_err_t ret;
 
    conf.mode = I2C_MODE_MASTER;

    conf.sda_io_num = GPIO_NUM_21;
    conf.sda_pullup_en = GPIO_PULLUP_ENABLE;

    conf.scl_io_num = GPIO_NUM_22;
    conf.scl_pullup_en = GPIO_PULLUP_ENABLE;

    conf.master.clk_speed = 100000;

    ret = i2c_param_config(I2C_NUM_0, &conf);
	printf("errorConfig: %s\n", esp_err_to_name(ret) );

    ret = i2c_driver_install(I2C_NUM_0, conf.mode, 0, 0, 0);
	printf("errorInstall: %s\n", esp_err_to_name(ret) );

	return ret;
}

esp_err_t controllerInput(int address, uint8_t * data_rd)
{	
	esp_err_t ret;

	i2c_cmd_handle_t cmd = i2c_cmd_link_create();

	ret = i2c_master_start(cmd);
    ret = i2c_master_write_byte(cmd, (address << 1) | I2C_MASTER_READ, 0x1);
	ret = i2c_master_read_byte(cmd, data_rd, I2C_MASTER_ACK);
    ret = i2c_master_cmd_begin(I2C_NUM_0, cmd, portTICK_RATE_MS);	

    i2c_cmd_link_delete(cmd);

    return ret;
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

    uint8_t* data_rd = new uint8_t();

	controllerInit();
	
	while(1)
	{
		controllerInput(0x20, data_rd);	

		printf("Data: %x\t\n", *data_rd);
	}

	
	delete data_rd;
}






























