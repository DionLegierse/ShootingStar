#include <stdio.h>

#include "TestPC.h"
#include "Astroid.h"

TestPC::TestPC () {}
TestPC::~TestPC () {}

void TestPC::setup()
{
    serialPrint(128);
    addEntity(new Astroid(1, {1, 0}), {16, 16});
    addEntity(new Astroid(1, {2, 1}), {32, 32});
}

void TestPC::loop()
{
    for (int i = 0; i < this->_count; i++)
        moveEntity(i);
}

void TestPC::addEntity(Entity* aEntity, Vector2 aPosition)
{
    this->_entities[this->_count++] = aEntity;
    aEntity->setPosition(aPosition);
    
    serialPrint(1);
    serialPrint(aEntity->getPosition().getX() / 100);
    serialPrint(aEntity->getPosition().getX() % 100);

    serialPrint(aEntity->getPosition().getY() / 100);
    serialPrint(aEntity->getPosition().getY() % 100);
}

void TestPC::moveEntity(int aIndex)
{
    this->_entities[aIndex]->move();

    serialPrint(2);
    serialPrint(aIndex);
    serialPrint(this->_entities[aIndex]->getPosition().getX() / 100);
    serialPrint(this->_entities[aIndex]->getPosition().getX() % 100);

    serialPrint(this->_entities[aIndex]->getPosition().getY() / 100);
    serialPrint(this->_entities[aIndex]->getPosition().getY() % 100);
}

void TestPC::removeEntity(int aIndex)
{

}

void TestPC::serialPrint(int aByte)
{
    char byte = aByte;
    printf ("%c\n", byte);

    // char rChar = 255;
    // while (rChar == 255)
    //     rChar = getchar();
}