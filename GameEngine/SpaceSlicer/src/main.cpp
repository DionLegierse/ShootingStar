#include "esp_system.h"
#include "esp_spi_flash.h"
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"

#include "GameLoops/TestPC.h"
#include "Handlers/MutexHandler.h"

#define GAME_SPEED 8

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


	//Core 0
	xTaskCreatePinnedToCore (mainTask, "MAIN", 4096, (void*) 1, 2, &xHandleLoop, 0 );				 
	xTaskCreatePinnedToCore (drawTask, "DRAW", 4096, (void*) 1, 1, &xHandleDraw, 0);

	//Core 1
	xTaskCreatePinnedToCore (inputTask, "INPUT", 4096, (void*) 1, 3, &xHandleInput, 1);
}

void mainTask(void* vParam)
{
	test->setup();
	//printf("SETUP_MAIN\n");

	TickType_t xLastWakeTime;
	const TickType_t xFrequency = GAME_SPEED;

	xLastWakeTime = xTaskGetTickCount();

	for (;;)
	{
		vTaskDelayUntil(&xLastWakeTime, xFrequency);

		//printf("%d - ", xTaskGetTickCount());
		test->loop();
		//printf("%d\n", xTaskGetTickCount());
		//printf("MAIN\n");
	}
}

void inputTask(void* vParam)
{
	test->setupInput();
	//printf("SETUP_INPUT\n");
	
	TickType_t xLastWakeTime;
	const TickType_t xFrequency = GAME_SPEED;

	xLastWakeTime = xTaskGetTickCount();

	for (;;)
	{
		vTaskDelayUntil(&xLastWakeTime, xFrequency);

		//printf("%d - ", xTaskGetTickCount());
		test->readInput();
		//printf("%d\n", xTaskGetTickCount());
		//printf("INPUT\n");
	}
}

void drawTask(void* vParam)
{
	TickType_t xLastWakeTime;
	const TickType_t xFrequency = GAME_SPEED;

	xLastWakeTime = xTaskGetTickCount();

	for (;;)
	{
		vTaskDelayUntil(&xLastWakeTime, xFrequency);

		test->updateAllSprites();
		//printf("%d\n", xTaskGetTickCount());
		//printf("DRAW\n");
	}
}