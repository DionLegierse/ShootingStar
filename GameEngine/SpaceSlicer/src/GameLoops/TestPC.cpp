#include <stdio.h>
#include <cstdlib>

#include "GameLoops/TestPC.h"

TestPC::TestPC () {}
TestPC::~TestPC () {}

void TestPC::setup()
{
    ConsoleInterface ci;
    ci.freeAllObjects();
    printf("I HAVE COMMENCED\n");
    this->_collision = new CollisionHandler(this);
    this->_playerOne = new Player(0, {5, 0}, 1);
    this->_playerTwo = new Player(0, {5, 40}, 2);
    this->_astroidList = new EntityList();
    this->_bloopList = new EntityList();
    this->_fuelList = new EntityList();

    for (int i = 0; i < 10; i++)
        this->_astroidList->insert(new Astroid(2, {rand() % 5 - 5, rand() % 5 - 3}, {100, rand() % 400}));
}

void TestPC::loop()
{
    // if (!this->_astroidList->isEmpty())
    // {
    //     updateNPC();
    //     _collision->checkAllCollision();
    // }
}

void TestPC::updateNPC()
{
    EntityLink* curAst = this->_astroidList->getFirst();

    while (curAst != nullptr)
    {
        curAst->getEntity()->move();
        printf("%p: ", curAst->getEntity());
        curAst->getEntity()->getPosition().print();
        curAst = curAst->getNext();
    }
}