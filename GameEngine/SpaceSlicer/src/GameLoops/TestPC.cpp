#include <stdio.h>
#include <cstdlib>

#include "GameLoops/TestPC.h"

TestPC::TestPC () {}
TestPC::~TestPC () {}

void TestPC::setup()
{
    ConsoleInterface ci;
    ci.freeAllObjects();
    
    this->_collision = new CollisionHandler(this);
    this->_playerOne = new Player(5, {5, 0}, 1);
    this->_playerTwo = new Player(1, {5, 40}, 2);
    this->_astroidList = new EntityList();
    // this->_bloopList = new EntityList();
    // this->_fuelList = new EntityList();

    for (int i = 0; i < 10; i++)
        this->_astroidList->insert(new Astroid(2, {rand() % 5 - 5, rand() % 5 - 3}, {100, rand() % 400}));

    ci.playSong(0);
}

void TestPC::loop()
{
    this->_playerOne->move();
    this->_playerTwo->move();

    updateNPC();
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