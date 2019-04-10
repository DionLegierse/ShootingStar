#include <stdio.h>
#include <cstdlib>

#include "GameLoops/MainGame.h"
#include "Entity/Bloop.h"
#include "Utils/Profiler.h"

/**
 * @brief Construct a new Main Game:: Main Game object
 * 
 */
MainGame::MainGame () {}

/**
 * @brief Destroy the Main Game:: Main Game object
 * 
 */
MainGame::~MainGame () {}

bool MainGame::_isGamePlaying = false;

/**
 * @brief Setup the main game
 *
 */

void MainGame::setup()
{
    ConsoleInterface ci;
    ci.freeAllObjects();
    ci.printText("spaceslicer", Vector2(0,0));
    
    this->_collision = new CollisionHandler(this);
    this->_playerOne = new Player(1, Vector2(16, 128), 1, this->_stickPlayerOne, this->_buttonPlayerOne);
    this->_playerTwo = new Player(1, Vector2(16, 256), 2, this->_stickPlayerTwo, this->_buttonPlayerTwo);
    this->_astroidList = new EntityList();
    this->_bloopList = new EntityList();
    this->_laser = new Laser(this->_playerOne, this->_playerTwo);

    ci.playSong(0);
}

/**
 * @brief Looping function of the main game
 *
 */

void MainGame::loop()
{
    if (MainGame::_isGamePlaying)
    {
        this->_playerOne->move();
        this->_playerTwo->move();

        getRandomNPC();

        updateNPC();
        this->_collision->checkAllCollision();

        this->_laser->generateLaser();

        if (this->_laser->_score < 0)
            GameOver();
    }
    else
    {
        if (*this->_buttonPlayerOne != ControllerInput::BTN_NOPE ||
            *this->_buttonPlayerTwo != ControllerInput::BTN_NOPE)
        {
            this->_playerOne->setPosition(Vector2(16, 128));
            this->_playerTwo->setPosition(Vector2(16, 256));
            MainGame::_isGamePlaying = true;
        }
    }
    
}

/**
 * @brief Game over screen
 *
 */

void MainGame::GameOver()
{
    ConsoleInterface ci;

    removeNPCList();
    MainGame::_isGamePlaying = false;

    uint8_t* gameOver = ci.printText("game over", Vector2(216, 0));
    
    vTaskDelay(1000);

    ci.removeText(gameOver);

    this->_laser->_score = 0;
}

/**
 * @brief Setup the input settings
 *
 */

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

/**
 * @brief Loop for the input
 *
 */

void MainGame::readInput()
{
    *this->_stickPlayerOne = this->_inputPlayerOne->getStick();
    *this->_stickPlayerTwo = this->_inputPlayerTwo->getStick();

    *this->_buttonPlayerOne = this->_inputPlayerOne->getButton();
    *this->_buttonPlayerTwo = this->_inputPlayerTwo->getButton();
}

/**
 * @brief Update all npc positions
 *
 */

void MainGame::updateNPC()
{
    updateListPositions(LIST_ASTROID);
    updateListPositions(LIST_BLOOP);
}

/**
 * @brief Loop for sprite drawing
 *
 */

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
        if (this->_scoreboard != nullptr)
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
        int yPos;

        do
        {
            yPos = rand() % 424 + 8;
        } while (checkOverlay(LIST_BLOOP, yPos));
        
        this->_astroidList->insert(new Astroid(2, Vector2(-1, 0), Vector2(500, yPos)));
    }

    if (chance <= 50)
    {
        int yPos;

        do
        {
            yPos = rand() % 424 + 8;
        } while (checkOverlay(LIST_ASTROID, yPos));
        
        this->_bloopList->insert(new Bloop(2, Vector2(-1, 0), Vector2(500, yPos)));
    }
}

void MainGame::removeNPCList()
{
    EntityLink* curAstroid = this->_astroidList->getFirst();
    EntityLink* curBloop = this->_bloopList->getFirst();

    while (curAstroid != nullptr)
    {
        this->_astroidList->remove(curAstroid->getEntity());
        curAstroid = this->_astroidList->getFirst();
    }

    while (curBloop != nullptr)
    {
        this->_bloopList->remove(curBloop->getEntity());
        curBloop = this->_bloopList->getFirst();
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

bool MainGame::checkOverlay(uint8_t aList, int aYPos)
{
    EntityLink* curLink = nullptr;

    if (aList == LIST_ASTROID)
        curLink = this->_astroidList->getFirst();
    else if (aList == LIST_BLOOP)
        curLink = this->_bloopList->getFirst();

    while (curLink != nullptr)
    {
        if (aYPos > curLink->getEntity()->getPosition().getY() - 16 &&
            aYPos < curLink->getEntity()->getPosition().getY() + 16)
            return true;
        
        curLink = curLink->getNext();
    }

    return false;
}