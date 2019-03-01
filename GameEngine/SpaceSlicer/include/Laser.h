#include "Player.h"

class Laser
{
// Constructors/destructors
public:
            Laser();
            ~Laser();

// Draw function
public:
    void    drawLaser();

// Laser variables
private:
    bool    _isEnabled = false;

// Player pointers
private:
    Player* _playerOne;
    Player* _playerTwo;
};