#include <stdio.h>
#include <cstdlib>

#include "GameLoops/MainGame.h"
#include "Entity/Bloop.h"
#include "Utils/Profiler.h"

MainGame::MainGame () {
    this->_state = GAMESTATE::MENU;
    this->_isMenuDrawn = false;
}

MainGame::~MainGame () {}

void MainGame::setup()
{
    ConsoleInterface ci;
    ci.freeAllObjects();
    
    this->_collision = new CollisionHandler(this);
    this->_playerOne = new Player(1, Vector2(16, 128), 1, this->_stickPlayerOne, this->_buttonPlayerOne);
    this->_playerTwo = new Player(1, Vector2(16, 256), 2, this->_stickPlayerTwo, this->_buttonPlayerTwo);
    this->_astroidList = new EntityList();
    this->_bloopList = new EntityList();
    this->_laser = new Laser(this->_playerOne, this->_playerTwo);

    ci.playSong(0);
}

void MainGame::loop()
{
    switch (this->_state)
    {
        case GAMESTATE::MENU:
            this->_state = this->menuloop();
            break;
        case GAMESTATE::GAME:
            this->_state = this->gameloop();
            break;
        case GAMESTATE::ENDSCREEN:
            this->_state = this->endloop();
            break;
        default:
            break;
    }
}

MainGame::GAMESTATE MainGame::gameloop(){
    this->_playerOne->move();
    this->_playerTwo->move();

    getRandomNPC();

    updateNPC();
    this->_collision->checkAllCollision();

    this->_laser->generateLaser();

    return GAMESTATE::GAME;
}

MainGame::GAMESTATE MainGame::menuloop(){
    MutexHandler::takeMutex();
    ControllerInput controllerBlue(BLUE_CONTROLLER);
    ControllerInput::BUTTON pressed = controllerBlue.getButton();
    MutexHandler::giveMutex();

    ConsoleInterface ci;
    
    if (pressed == ControllerInput::BUTTON::BTN_THREE) {
        this->_isMenuDrawn = false;

        return GAMESTATE::GAME;
    }else{
        this->_isMenuDrawn = true;
        return GAMESTATE::MENU;
    }
}

MainGame::GAMESTATE MainGame::endloop(){
    return GAMESTATE::ENDSCREEN;
}

void MainGame::setupInput()
{
    this->_inputPlayerOne = new ControllerInput(0x27);
    this->_inputPlayerTwo = new ControllerInput(0x20);

    this->_inputPlayerOne->setupController();

    this->_stickPlayerOne = new ControllerInput::STICK;
    this->_stickPlayerTwo = new ControllerInput::STICK;

    this->_buttonPlayerOne = new ControllerInput::BUTTON;
    this->_buttonPlayerTwo = new ControllerInput::BUTTON;
}

void MainGame::readInput()
{
    *this->_stickPlayerOne = this->_inputPlayerOne->getStick();
    *this->_stickPlayerTwo = this->_inputPlayerTwo->getStick();

    *this->_buttonPlayerOne = this->_inputPlayerOne->getButton();
    *this->_buttonPlayerTwo = this->_inputPlayerTwo->getButton();
}

void MainGame::updateNPC()
{
    updateListPositions(LIST_ASTROID);
    updateListPositions(LIST_BLOOP);
}

void MainGame::updateAllSprites()
{
    this->_laser->drawLaser();

    this->_playerOne->updateSprites();
    this->_playerTwo->updateSprites();

    updateListSprites(LIST_ASTROID);
    updateListSprites(LIST_BLOOP);

    updateScoreBoard();
}

void MainGame::updateScoreBoard()
{
    ConsoleInterface ci;

    if (this->_laser->_score != this->_laser->_prevScore)
    {
        ci.removeText(this->_scoreboard);    

        this->_scoreboard = ci.printText(this->_laser->_score, Vector2(440, 0));

        this->_laser->_prevScore = this->_laser->_score;
    }
}

void MainGame::getRandomNPC()
{
    int chance = rand() % 10000;

    if (chance <= 100)
    {
        this->_astroidList->insert(new Astroid(2, Vector2(-1, 0), Vector2(500, rand() % 424 + 8)));
    }

    if (chance <= 50)
    {
        this->_bloopList->insert(new Bloop(2, Vector2(-1, 0), Vector2(500, rand() % 424 + 8)));
    }
}

void MainGame::updateListSprites(uint8_t aList)
{
    EntityLink* curEntity = nullptr;

    if (aList == LIST_ASTROID)
        curEntity = this->_astroidList->getFirst();
    else if (aList == LIST_BLOOP)
        curEntity = this->_bloopList->getFirst();

    while (curEntity != nullptr)
    {
        curEntity->getEntity()->updateSprites();
        curEntity = curEntity->getNext();
    }
}

void MainGame::updateListPositions(uint8_t aList)
{
    EntityLink* curEntity = nullptr;

    if (aList == LIST_ASTROID)
        curEntity = this->_astroidList->getFirst();
    else if (aList == LIST_BLOOP)
        curEntity = this->_bloopList->getFirst();

    while (curEntity != nullptr)
    {
        curEntity->getEntity()->move();

        if (curEntity->getEntity()->getPosition().getX() <= 0)
        {
            if (aList == LIST_ASTROID)
                this->_astroidList->remove(curEntity->getEntity());
            else if (aList == LIST_BLOOP)
                this->_bloopList->remove(curEntity->getEntity());
        }

        curEntity = curEntity->getNext();
    }
}

