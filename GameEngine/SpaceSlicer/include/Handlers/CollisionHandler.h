#pragma once
#include "GameLoops/GameLoop.h"
#include "Entity/Entity.h"
#include "Utils/EntityList.h"

#define LIST_ASTROID    0
#define LIST_BLOOP      1

#define LASER_COLLIDER_DISTANCE 4

class CollisionHandler
{
public:
                CollisionHandler(GameLoop*);
                ~CollisionHandler();

private:
                CollisionHandler();

public:
    void        checkAllCollision();

private:
    void        checkListLists(uint8_t);
    void        checkListCollision(uint8_t, Player*);
    void        checkLaserCollision(uint8_t);
    void        deleteEntity(Entity*);
    EntityLink* getList(uint8_t);

private:
    GameLoop*   _gameLoop;
};