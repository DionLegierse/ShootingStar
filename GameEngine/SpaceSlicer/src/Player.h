#include "Entity.h"

class Player : public Entity
{
// Constructors/destructors
public:
            Player();
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

// Laser variables
private:
    bool    _isLaserEnable = false;

// Fuel variables
private:
    int     _fuel;
};