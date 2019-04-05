#include <stdio.h>
#include <string>
#include <iostream>

#include "esp_system.h"
#include "esp_spi_flash.h"
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"

#include "GameLoops/TestPC.h"

void createMainTask();
void mainTask(void*);
void inputTask(void*);

TestPC *test = new TestPC();

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

	xTaskCreatePinnedToCore (mainTask,
							 "MAIN",
							 4096,
							 (void*) 1,
							 tskIDLE_PRIORITY,
							 &xHandle,
							 0 );

	xTaskCreatePinnedToCore (inputTask,
				 			 "INPUT",
							 4096,
							 (void*) 1,
							 10,
							 &xHandle,
							 1);
}

void mainTask(void* vParam)
{
	test->setup();

	for (;;)
		test->loop();
}

void inputTask(void* vParam)
{
	test->setupInput();

	for (;;)
		test->readInput();
}