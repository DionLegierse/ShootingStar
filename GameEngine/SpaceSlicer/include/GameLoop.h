#pragma once
#include "Astroid.h"
#include "Bloop.h"
#include "Fuel.h"
#include "Player.h"
#include "EntityList.h"

class GameLoop
{
public:
                    GameLoop();
                    ~GameLoop();

public:
    virtual void    setup() = 0;
    virtual void    loop()  = 0;

public:
    EntityList*  getAstroidList();
    EntityList*  getBloopList();
    EntityList*  getFuelList();

public:
    Player*      getPlayer(int);

protected:
    EntityList* _astroidList    = nullptr;
    EntityList* _bloopList      = nullptr;
    EntityList* _fuelList       = nullptr;

protected:
    Player*     _playerOne      = nullptr;
    Player*     _playerTwo      = nullptr;
};