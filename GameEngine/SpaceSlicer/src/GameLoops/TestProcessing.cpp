#include "GameLoops/TestProcessing.h"

TestProcessing::TestProcessing () {}
TestProcessing::~TestProcessing () {}

void TestProcessing::setup()
{
    serialPrint(128);
    addEntity(new Astroid(1, {1, 0}, {16, 16}));
    addEntity(new Astroid(1, {2, 1}, {32, 32}));
}

void TestProcessing::loop()
{
    for (int i = 0; i < this->_count; i++)
        moveEntity(i);
}

void TestProcessing::addEntity(Entity* aEntity)
{
    this->_entities[this->_count++] = aEntity;
    
    serialPrint(1);
    serialPrint(aEntity->getPosition().getX() / 100);
    serialPrint(aEntity->getPosition().getX() % 100);

    serialPrint(aEntity->getPosition().getY() / 100);
    serialPrint(aEntity->getPosition().getY() % 100);
}

void TestProcessing::moveEntity(int aIndex)
{
    this->_entities[aIndex]->move();

    serialPrint(2);
    serialPrint(aIndex);
    serialPrint(this->_entities[aIndex]->getPosition().getX() / 100);
    serialPrint(this->_entities[aIndex]->getPosition().getX() % 100);

    serialPrint(this->_entities[aIndex]->getPosition().getY() / 100);
    serialPrint(this->_entities[aIndex]->getPosition().getY() % 100);
}

void TestProcessing::removeEntity(int aIndex)
{

}

void TestProcessing::serialPrint(int aByte)
{
    char byte = aByte;
    printf ("%c\n", byte);

    // char rChar = 255;
    // while (rChar == 255)
    //     rChar = getchar();
}