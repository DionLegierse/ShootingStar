#include "GameLoop.h"

GameLoop::GameLoop() {}
GameLoop::~GameLoop() {}

EntityList* GameLoop::getAstroidList() { return this->_astroidList; }
EntityList* GameLoop::getBloopList() { return this->_bloopList; }
EntityList* GameLoop::getFuelList() { return this->_fuelList; }

Player* GameLoop::getPlayer(int aNumber)
{
    if (aNumber == 1)
        return this->_playerOne;
    else if (aNumber == 2)
        return this->_playerTwo;

    return nullptr;
}