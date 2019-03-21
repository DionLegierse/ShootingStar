#include <stdio.h>

#include "GameLoops/TestPC.h"

TestPC::TestPC () {}
TestPC::~TestPC () {}

void TestPC::setup()
{
    printf("I HAVE COMMENCED\n");
    this->_collision = new CollisionHandler(this);
    this->_playerOne = new Player(0, {5, 0}, 1);
    this->_playerTwo = new Player(0, {5, 10}, 2);
    this->_astroidList = new EntityList();
    this->_bloopList = new EntityList();
    this->_fuelList = new EntityList();

    this->_astroidList->insert(new Astroid(1, {-1, 0}, {18, 0}));
}

void TestPC::loop()
{
    if (!this->_astroidList->isEmpty())
    {
        if (this->_astroidList->getFirst()->getEntity()->getPosition().getX() > -10)
            updateNPC();
        _collision->checkAllCollision();
    }
}

void TestPC::updateNPC()
{
    EntityLink* curAst = this->_astroidList->getFirst();

    while (curAst != nullptr)
    {
        curAst->getEntity()->move();
        curAst->getEntity()->getPosition().print();
        curAst = curAst->getNext();
    }
}