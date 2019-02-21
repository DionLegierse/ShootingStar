
#include <stdio.h>
#include <string>
#include <iostream>

#include "esp_system.h"
#include "esp_spi_flash.h"
#include "soc\gpio_struct.h"

#include "nvs_flash.h"
#include "nvs.h"

#include "Vector2.h"

#define STORAGE_NAMESPACE "dummyNamespace"

extern "C" {
	void app_main(void);
}

extern gpio_dev_t GPIO;

esp_err_t CasIsGay(void)
{
    esp_err_t err;

	err = nvs_flash_init();

	spi_flash_init();

	uint8_t *dammy = new uint8_t();
	spi_flash_read(0x100000, dammy, sizeof(char));
	printf("%d\n", static_cast<char>(*dammy) );  
	spi_flash_read(0x100001, dammy, sizeof(char));
	printf("%d\n", static_cast<char>(*dammy) );
	spi_flash_read(0x100002, dammy, sizeof(char));
	printf("%d\n", static_cast<char>(*dammy) );
	spi_flash_read(0x100003, dammy, sizeof(char));
	printf("%d\n", static_cast<char>(*dammy) );
	spi_flash_read(0x100004, dammy, sizeof(char));
	printf("%d\n", static_cast<char>(*dammy) );
	spi_flash_read(0x100005, dammy, sizeof(char));
	printf("%d\n", static_cast<char>(*dammy) );

	free(dammy);

   	return err;
}

void app_main(void)
{
	esp_err_t f = CasIsGay();
	printf("%s\n", esp_err_to_name(f));
}






























