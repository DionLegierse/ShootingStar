
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
	//---------------------------------------------------------------------------
    i2c_config_t conf;
    conf.mode = I2C_MODE_MASTER;

    conf.sda_io_num = GPIO_NUM_21;
    conf.sda_pullup_en = GPIO_PULLUP_ENABLE;

    conf.scl_io_num = GPIO_NUM_22;
    conf.scl_pullup_en = GPIO_PULLUP_ENABLE;

    conf.master.clk_speed = 10;
    i2c_param_config(I2C_NUM_0, &conf);
    i2c_driver_install(I2C_NUM_0, conf.mode, 0, 0, 0);
	//---------------------------------------------------------------------------
	
	//---------------------------------------------------------------------------
    uint8_t* data_rd = (uint8_t*) malloc(512);

	i2c_cmd_handle_t cmd = i2c_cmd_link_create();

    i2c_master_start(cmd);
    i2c_master_write_byte(cmd, ( 0x07 << 1 ) | I2C_MASTER_READ, I2C_MASTER_ACK);
	i2c_master_read(cmd, data_rd, 511, I2C_MASTER_ACK);
	i2c_master_read(cmd, data_rd, 512, I2C_MASTER_NACK);
    i2c_master_stop(cmd);


    esp_err_t ret = i2c_master_cmd_begin(I2C_NUM_0, cmd, 1000 / portTICK_RATE_MS);

    if (ret != ESP_OK) 
	{
		return ret;
    }

	printf("Data: %d", *data_rd);

	delete data_rd;
    i2c_cmd_link_delete(cmd);
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
	while (1)
	{
		esp_err_t ret = controllerInput();
		printf("!!!!!!!!!!!!!!=%s=!!!!!!!!!!!!!!", esp_err_to_name(ret) );
	}
}






























