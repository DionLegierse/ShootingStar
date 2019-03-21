#include "Entity.h"

#include <stdio.h>

class Player : public Entity
{
// Constructors/destructors
public:
            Player();
            Player(int, Vector2, int);
            ~Player();

// Movement methods
public:
    void    move() override;

// Laser methods
public:
    void    laserEnable();
    bool    getLaserEnabled();

// Fuel methods
public:
    int     getFuel();
    void    setFuel(int);

// Collision methods
public:
    void    collisionEvent()    override;

// Laser variables
private:
    bool    _isLaserEnable = false;

// Fuel variables
private:
    int     _fuel;

private:
    int     _index;
};