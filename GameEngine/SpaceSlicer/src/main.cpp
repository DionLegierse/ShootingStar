#include <stdio.h>
#include <string>
#include <iostream>

#include "esp_system.h"
#include "esp_spi_flash.h"
#include "Vector2.h"
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"

#include "TestPC.h"

void createMainTask();
void mainTask(void*);

extern "C" {
	void app_main(void);
}

void app_main(void)
{
	createMainTask();
}

void createMainTask()
{
	TaskHandle_t xHandle = NULL;
	xTaskCreate (mainTask,
                "MAIN",
                 4096,
                 (void*) 1,
                 tskIDLE_PRIORITY,
                 &xHandle );
}

void mainTask(void* vParam)
{
	TestPC *test = new TestPC();

	test->setup();

	for (;;)
		test->loop();
}