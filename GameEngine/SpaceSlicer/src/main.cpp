#include <stdio.h>
#include <string>
#include <iostream>

#include "esp_system.h"
#include "esp_spi_flash.h"
#include "soc\gpio_struct.h"

#include "Vector2.h"

extern "C" {
	void app_main(void);
}

extern gpio_dev_t GPIO;

void app_main(void)
{
	GPIO.enable_w1ts = 0b00000000000011110000000000111110;

	GPIO.out_w1ts = 0b00000000000011110000000000111110;
}
