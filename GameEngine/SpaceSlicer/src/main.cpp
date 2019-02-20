#include <stdio.h>
#include <string>
#include <iostream>

#include "esp_system.h"
#include "esp_spi_flash.h"
#include "soc\gpio_struct.h"

#include "nvs_flash.h"
#include "nvs.h"

#include "Vector2.h"

#define STORAGE_NAMESPACE "testBin"

extern "C" {
	void app_main(void);
}

extern gpio_dev_t GPIO;

esp_err_t CasIsGay(void)
{
	nvs_handle myHandle;
    esp_err_t err;

	err = nvs_flash_init();
    if (err != ESP_OK) return err;

    err = nvs_open(STORAGE_NAMESPACE, NVS_READWRITE, &myHandle);
    if (err != ESP_OK) return err;
	
	size_t blobSize;
	err = nvs_get_blob(myHandle, "testKey", NULL, &blobSize);
    if (err != ESP_OK && err != ESP_ERR_NVS_NOT_FOUND) return err;

	for(size_t i = 0; i < 10; i++)
	{
		printf("%d\n", blobSize);
	} 

	uint8_t *dammy = new uint8_t();
	size_t size = sizeof(dammy);
    err = nvs_get_blob(myHandle, "testKey", dammy, &size);
	if (err != ESP_OK) return err;

    nvs_close(myHandle);

	for(size_t i = 0; i < 10; i++)
	{
		printf("%d\n", *dammy );
	}    

	free(dammy);

   	return err;
}

void app_main(void)
{
	esp_err_t f = CasIsGay();
	printf("%s\n", esp_err_to_name(f));
}











