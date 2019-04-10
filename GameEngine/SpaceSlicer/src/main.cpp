#include "esp_system.h"
#include "esp_spi_flash.h"
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"

#include "GameLoops/MainGame.h"
#include "GameLoops/MainMenu.h"
#include "Handlers/MutexHandler.h"

#define GAME_SPEED 8

void createMainTask();
void mainTask(void*);
void inputTask(void*);
void drawTask(void*);

GameLoop* currentLoop = nullptr;
GameLoop* nextLoop = nullptr;

<<<<<<< HEAD
GameLoop* test;
GameLoop* mainMenu;
=======
GameLoop* test = new MainGame();
// GameLoop* mainMenu = new MainMenu(test);
>>>>>>> 32aeff9b2345e52ddcc1566ea7202776e233f720


extern "C" {
	void app_main(void);
}

void app_main(void)
{
	test = new TestPC();
	mainMenu = new MainMenu(test);
	currentLoop = mainMenu;
	createMainTask();
}

void createMainTask()
{
	

	MutexHandler::initMutex();

	TaskHandle_t xHandleLoop = NULL;
	TaskHandle_t xHandleInput = NULL;
	TaskHandle_t xHandleDraw = NULL;


	//Core 0
	xTaskCreatePinnedToCore (mainTask, "MAIN", 8192, (void*) 1, 2, &xHandleLoop, 0 );				 
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
		
		nextLoop = currentLoop->loop();
		printf("aaaaaaaaaaaaaaaaaaaaaaaaaaaa");
		vTaskDelayUntil(&xLastWakeTime, xFrequency);
		currentLoop = nextLoop;
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
