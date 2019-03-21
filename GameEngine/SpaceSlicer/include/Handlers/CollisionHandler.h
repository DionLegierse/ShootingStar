#include "GameLoops/GameLoop.h"
#include "Entity/Entity.h"
#include "Utils/EntityList.h"

#define DEL_NONE        0
#define DEL_FIRST       1
#define DEL_SECOND      2
#define DEL_BOTH        3

#define LIST_ASTROID    0
#define LIST_BLOOP      1
#define LIST_FUEL       2

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
    void        checkListCollision(uint8_t, Entity*, uint8_t);
    void        deleteEntity(Entity*);

private:
    GameLoop*   _gameLoop;
};