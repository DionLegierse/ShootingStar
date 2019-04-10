#include "GameLoops/MainMenu.h"

MainMenu::MainMenu() {}

MainMenu::MainMenu(GameLoop* aMainGame)
{
    this->_mainGame = aMainGame;
}

MainMenu::~MainMenu() {}

void MainMenu::setup()
{
    ConsoleInterface ci;
    ci.freeAllObjects();
    ci.printText("iajbaaaa", Vector2(100, 100));
}

GameLoop* MainMenu::loop()
{
    if (this->_butOne != ControllerInput::BTN_NOPE ||
        this->_butTwo != ControllerInput::BTN_NOPE)
    {
        printf("AAAAAAAA\n");
        return _mainGame;
    }

    return this;
}

void MainMenu::setupInput()
{
    this->_inputOne = new ControllerInput(0x27);
    this->_inputTwo = new ControllerInput(0x20);

    this->_inputOne->setupController();
}

void MainMenu::readInput()
{
    this->_butOne = this->_inputOne->getButton();
    this->_butTwo = this->_inputTwo->getButton();
}

void MainMenu::updateAllSprites()
{

}