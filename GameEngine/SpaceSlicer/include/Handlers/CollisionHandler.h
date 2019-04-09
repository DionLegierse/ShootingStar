#pragma once
#include "GameLoops/GameLoop.h"
#include "Entity/Entity.h"
#include "Utils/EntityList.h"

#define DEL_NONE        0
#define DEL_FIRST       1
#define DEL_SECOND      2
#define DEL_BOTH        3

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
    void        checkListCollision(uint8_t, Entity*, uint8_t);
    void        checkLaserCollision(uint8_t);
    void        deleteEntity(Entity*);
    EntityLink* getList(uint8_t);

private:
    GameLoop*   _gameLoop;
};