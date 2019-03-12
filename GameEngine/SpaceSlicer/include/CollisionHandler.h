#include "GameLoop.h"
#include "Entity.h"
#include "EntityList.h"

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
    void        checkAstroidCollision();
    void        checkBloopCollision();
    void        checkFuelCollision();

private:
    GameLoop*   _gameLoop;

private:
    EntityList* _astroidList;
    EntityList* _bloopList;
    EntityList* _fuelList;

private:
    Player*     _playerOne;
    Player*     _playerTwo;
};