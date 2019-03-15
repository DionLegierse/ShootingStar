#include "GameLoops/GameLoop.h"
#include "Entity/Entity.h"
#include "Utils/EntityList.h"

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
    EntityList* _astroidList    = nullptr;
    EntityList* _bloopList      = nullptr;
    EntityList* _fuelList       = nullptr;

private:
    Player*     _playerOne      = nullptr;
    Player*     _playerTwo      = nullptr;
};