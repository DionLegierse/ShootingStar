#include "esp_system.h"
#include "esp_spi_flash.h"
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"

#include "GameLoops/TestPC.h"
#include "Handlers/MutexHandler.h"

void createMainTask();
void mainTask(void*);
void inputTask(void*);
void drawTask(void*);

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
	MutexHandler::initMutex();

	TaskHandle_t xHandleLoop = NULL;
	TaskHandle_t xHandleInput = NULL;
	TaskHandle_t xHandleDraw = NULL;

	xTaskCreatePinnedToCore (mainTask,
							 "MAIN",
							 4096,
							 (void*) 1,
							 tskIDLE_PRIORITY,
							 &xHandleLoop,
							 0 );

	xTaskCreatePinnedToCore (inputTask,
				 			 "INPUT",
							 1024,
							 (void*) 1,
							 9,
							 &xHandleInput,
							 1);
	
	xTaskCreatePinnedToCore (drawTask,
							 "DRAW",
							 2048,
							 (void*) 1,
							 tskIDLE_PRIORITY,
							 &xHandleDraw,
							 0);
}

void mainTask(void* vParam)
{
	test->setup();

	TickType_t xLastWakeTime;
	const TickType_t xFrequency = 1;

	xLastWakeTime = xTaskGetTickCount();

	for (;;)
	{
		vTaskDelayUntil(&xLastWakeTime, xFrequency);
		test->loop();
	}
}

void inputTask(void* vParam)
{
	test->setupInput();

	for (;;)
		test->readInput();
}

void drawTask(void* vParam)
{
	vTaskDelay(10);

	for (;;)
		test->updateAllSprites();
}