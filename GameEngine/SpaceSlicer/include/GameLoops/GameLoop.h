#pragma once
#include "Utils/EntityList.h"
#include "Entity/Player.h"
#include "Entity/Astroid.h"
#include "Entity/Laser.h"

class GameLoop
{
public:
                        GameLoop();
    virtual             ~GameLoop();

public:
    virtual void        setup() = 0;
    virtual void        loop()  = 0;

public:
    virtual void        readInput() = 0;
    virtual void        setupInput() = 0;

public:
    virtual void        updateAllSprites() = 0;

public:
    EntityList*         getAstroidList();
    EntityList*         getBloopList();

public:
    Player*             getPlayer(int);

public:
    Laser*              getLaser();

protected:
    EntityList*         _astroidList    = nullptr;
    EntityList*         _bloopList      = nullptr;

protected:
    Player*             _playerOne      = nullptr;
    Player*             _playerTwo      = nullptr;

protected:
    Laser*              _laser          = nullptr;

};