#pragma once
#include "Entity.h"
#include "Handlers/ControllerInput.h"
#include "Handlers/MutexHandler.h"

#include <stdio.h>

class Player : public Entity
{
// Constructors/destructors
public:
            Player();
            Player(int, Vector2, int, ControllerInput::STICK*, ControllerInput::BUTTON*);
            ~Player();

// Movement methods
public:
    void    move() override;

// Laser methods
public:
    void    laserEnable();
    bool    getLaserEnabled();

// Collision methods
public:
    void    collisionEvent()    override;

// Sprite methods
private:
    void    createSprites()     override;

// Laser variables
private:
    bool    _isLaserEnable = false;

private:
    int     _index;

private:
    const int _xUpBound         = 496;
    const int _xLowBound        = 0;
    const int _yUpBound         = 432;
    const int _yLowBound        = 0;

private:
    ControllerInput::STICK*     _inputStick     = nullptr;
    ControllerInput::BUTTON*    _inputButton    = nullptr;
};