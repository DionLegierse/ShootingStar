#include <stdio.h>

#include "TestPC.h"

TestPC::TestPC () {}
TestPC::~TestPC () {}

void TestPC::setup()
{
    printf("I HAVE COMMENCED\n");
    this->_collision = new CollisionHandler(this);
    this->_playerOne = new Player();
    this->_astroidList = new EntityList();

    this->_astroidList->insert(new Astroid(1, {-1, 0}, {18, 0}));
}

void TestPC::loop()
{
    updateNPC();
    _collision->checkAllCollision();
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