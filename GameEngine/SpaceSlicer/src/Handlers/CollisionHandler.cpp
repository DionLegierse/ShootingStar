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
    checkListCollision(LIST_BLOOP, this->_gameLoop->getPlayer(1), DEL_SECOND);
    checkListCollision(LIST_ASTROID, this->_gameLoop->getPlayer(2), DEL_SECOND);
    checkListCollision(LIST_BLOOP, this->_gameLoop->getPlayer(2), DEL_SECOND);

    // checkListLists(LIST_ASTROID);
    // checkListLists(LIST_BLOOP);
}

void CollisionHandler::checkListLists(uint8_t aList)
{
    EntityLink* curEntity = getList(aList);
    
    while (curEntity != nullptr)
    {
        checkListCollision(LIST_ASTROID, curEntity->getEntity(), DEL_BOTH);
        checkListCollision(LIST_BLOOP, curEntity->getEntity(), DEL_BOTH);
        curEntity = curEntity->getNext();
    }
}

void CollisionHandler::checkListCollision(uint8_t aList, Entity* aEntity, uint8_t aDelete)
{
    EntityLink* curEntity = getList(aList);

    while (curEntity != nullptr)
    {
        if (aEntity->checkCollision(curEntity->getEntity()))
        {
            aEntity->collisionEvent();
            curEntity->getEntity()->collisionEvent();

            switch (aDelete)
            {
                case DEL_FIRST:
                    deleteEntity(aEntity);
                    break;
                case DEL_SECOND:
                    deleteEntity(curEntity->getEntity());
                    break;
                case DEL_BOTH:
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

        default:
            break;
    }
}

EntityLink* CollisionHandler::getList(uint8_t aList)
{
    switch (aList)
    {
        case LIST_ASTROID:
            return this->_gameLoop->getAstroidList()->getFirst();
        case LIST_BLOOP:
            return this->_gameLoop->getBloopList()->getFirst();

        default:
            return nullptr;
    }
}