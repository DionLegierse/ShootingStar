#include "Handlers/CollisionHandler.h"

CollisionHandler::CollisionHandler() {}

CollisionHandler::CollisionHandler(GameLoop* aGameLoop)
{
    this->_gameLoop = aGameLoop;

    this->_astroidList  = aGameLoop->getAstroidList();
    this->_bloopList    = aGameLoop->getBloopList();
    this->_fuelList     = aGameLoop->getFuelList();

    this->_playerOne    = aGameLoop->getPlayer(1);
    this->_playerTwo    = aGameLoop->getPlayer(2);
}

CollisionHandler::~CollisionHandler() {}

void CollisionHandler::checkAllCollision()
{
    checkAstroidCollision();
}

void CollisionHandler::checkAstroidCollision()
{
    EntityLink* curAst = this->_gameLoop->getAstroidList()->getFirst();

    while (curAst != nullptr)
    {
        if (curAst->getEntity()->checkCollision(this->_gameLoop->getPlayer(1)))
        {
            curAst->getEntity()->collisionEvent();
            this->_gameLoop->getPlayer(1)->collisionEvent();
            this->_gameLoop->getAstroidList()->removeLink(curAst);
            return;
        }
        
        curAst = curAst->getNext();
    }
}