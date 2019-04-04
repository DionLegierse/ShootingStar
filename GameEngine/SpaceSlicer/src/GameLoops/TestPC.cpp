#include <stdio.h>
#include <cstdlib>

#include "GameLoops/TestPC.h"

TestPC::TestPC () {}
TestPC::~TestPC () {}

void TestPC::setup()
{
    ConsoleInterface ci;
    ci.freeAllObjects();
    ci.printText("incompetendo", Vector2(0,0));
    
    this->_collision = new CollisionHandler(this);
    this->_playerOne = new Player(1, Vector2(5, 0), 1);
    this->_playerOne->_conIn->setupController();
    this->_playerTwo = new Player(1, Vector2(5, 40), 2);
    this->_astroidList = new EntityList();
    this->_bloopList = new EntityList();

    for (int i = 0; i < 10; i++)
        this->_astroidList->insert(new Astroid(2, Vector2(-1, 0), Vector2(480, i * 40)));

    ci.playSong(0);
    updateAllSprites();
}

void TestPC::loop()
{
    this->_playerOne->move();
    this->_playerTwo->move();

    updateNPC();
    this->_collision->checkAllCollision();
    updateAllSprites();
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