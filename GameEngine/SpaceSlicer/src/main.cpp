#include "esp_system.h"
#include "esp_spi_flash.h"
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"

#include "GameLoops/MainGame.h"
#include "Handlers/MutexHandler.h"

#define GAME_SPEED 8

void createMainTask();
void mainTask(void*);
void inputTask(void*);
void drawTask(void*);

GameLoop* currentLoop = nullptr;

GameLoop* test = new MainGame();


extern "C" {
	void app_main(void);
}

void app_main(void)
{
	createMainTask();
}

void createMainTask()
{
	currentLoop = test;

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
	vTaskDelay(5000);
	currentLoop->setup();

	TickType_t xLastWakeTime;
	const TickType_t xFrequency = GAME_SPEED;

	xLastWakeTime = xTaskGetTickCount();

	for (;;)
	{
		vTaskDelayUntil(&xLastWakeTime, xFrequency);
		currentLoop->loop();
	}
}

void inputTask(void* vParam)
{
	vTaskDelay(5000);
	currentLoop->setupInput();
	
	TickType_t xLastWakeTime;
	const TickType_t xFrequency = GAME_SPEED;

	xLastWakeTime = xTaskGetTickCount();

	for (;;)
	{
		vTaskDelayUntil(&xLastWakeTime, xFrequency);
		currentLoop->readInput();
	}
}

void drawTask(void* vParam)
{
	vTaskDelay(5000);
	TickType_t xLastWakeTime;
	const TickType_t xFrequency = GAME_SPEED;

	xLastWakeTime = xTaskGetTickCount();

	for (;;)
	{
		vTaskDelayUntil(&xLastWakeTime, xFrequency);

		currentLoop->updateAllSprites();
	}
}
