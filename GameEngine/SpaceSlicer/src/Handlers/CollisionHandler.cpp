#include "Handlers/CollisionHandler.h"

CollisionHandler::CollisionHandler() {}

CollisionHandler::CollisionHandler(GameLoop* aGameLoop)
{
    this->_gameLoop = aGameLoop;
}

CollisionHandler::~CollisionHandler() {}

void CollisionHandler::checkAllCollision()
{
    checkListCollision(LIST_ASTROID, this->_gameLoop->getPlayer(1), DEL_SECOND);
    checkListCollision(LIST_ASTROID, this->_gameLoop->getPlayer(2), DEL_SECOND);
}

void CollisionHandler::checkListCollision(uint8_t aList, Entity* aEntity, uint8_t aDelete)
{
    EntityLink* curEntity = nullptr;

    switch (aList)
    {
        case LIST_ASTROID:
            curEntity = this->_gameLoop->getAstroidList()->getFirst();
            break;
        case LIST_BLOOP:
            curEntity = this->_gameLoop->getBloopList()->getFirst();
            break;
        case LIST_FUEL:
            curEntity = this->_gameLoop->getFuelList()->getFirst();
            break;

        default:
            break;
    }

    while (curEntity != nullptr)
    {
        if (aEntity->checkCollision(curEntity->getEntity()))
        {
            aEntity->collisionEvent();
            curEntity->getEntity()->collisionEvent();

            switch (aDelete)
            {
                case 1:
                    deleteEntity(aEntity);
                    break;
                case 2:
                    deleteEntity(curEntity->getEntity());
                    break;
                case 3:
                    deleteEntity(aEntity);
                    deleteEntity(curEntity->getEntity());
                    break;

                default:
                    break;
            }
        }
        
        curEntity = curEntity->getNext();
    }
}

void CollisionHandler::deleteEntity(Entity* aEntity)
{
    switch (aEntity->getType())
    {
        case ENT_ASTROID:
            this->_gameLoop->getAstroidList()->remove(aEntity);
            break;
        case ENT_BLOOP:
            this->_gameLoop->getBloopList()->remove(aEntity);
            break;
        case ENT_FUEL:
            this->_gameLoop->getFuelList()->remove(aEntity);
            break;
        // case ENT_PLAYER:
        //     Player* play = dynamic_cast<Player*>(aEntity);
        //     if (play != nullptr)
        //     {
                
        //     }
        //     break;

        default:
            break;
    }
}