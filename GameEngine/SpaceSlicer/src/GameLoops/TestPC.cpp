#include <stdio.h>
#include <cstdlib>

#include "GameLoops/TestPC.h"
#include "Utils/Profiler.h"

TestPC::TestPC () {}
TestPC::~TestPC () {}

void TestPC::setup()
{
    ConsoleInterface ci;
    ci.freeAllObjects();
    ci.printText("incompetendo", Vector2(0,0));
    
    this->_collision = new CollisionHandler(this);
    this->_playerOne = new Player(1, Vector2(5, 0), 1, this->_stickPlayerOne);
    this->_playerTwo = new Player(1, Vector2(5, 40), 2, this->_stickPlayerTwo);
    this->_astroidList = new EntityList();
    this->_bloopList = new EntityList();

    // this->_laser = new Laser();

    for (int i = 0; i < 10; i++)
        this->_astroidList->insert(new Astroid(2, Vector2(-1, 0), Vector2(480, i * 40)));

    ci.playSong(0);
}

GameLoop* TestPC::loop()
{
    Profiler profile("Loop");
    this->_playerOne->move();
    this->_playerTwo->move();

    // this->_laser->drawLaser();

    updateNPC();
    this->_collision->checkAllCollision();

    return this;
}

void TestPC::setupInput()
{
    this->_inputPlayerOne = new ControllerInput(0x27);
    this->_inputPlayerTwo = new ControllerInput(0x20);

    this->_inputPlayerOne->setupController();

    this->_stickPlayerOne = new ControllerInput::STICK;
    this->_stickPlayerTwo = new ControllerInput::STICK;
}

void TestPC::readInput()
{
    *this->_stickPlayerOne = this->_inputPlayerOne->getStick();
    *this->_stickPlayerTwo = this->_inputPlayerTwo->getStick();
}

void TestPC::updateNPC()
{
    EntityLink* curAst = this->_astroidList->getFirst();

    while (curAst != nullptr)
    {
        curAst->getEntity()->move();
        curAst = curAst->getNext();
    }
}

void TestPC::updateAllSprites()
{

    this->_playerOne->updateSprites();
    this->_playerTwo->updateSprites();

    EntityLink* curEntity = this->_astroidList->getFirst();

    while (curEntity != nullptr)
    {
        curEntity->getEntity()->updateSprites();
        curEntity = curEntity->getNext();
    }
}