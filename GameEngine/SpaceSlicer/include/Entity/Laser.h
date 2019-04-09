#include "Player.h"
#include "Utils/LaserCalculator.h"

#include <vector>

class Laser
{
// Constructors/destructors
public:
            Laser();
            Laser(Player*, Player*);
            ~Laser();

// Draw function
public:
    void    drawLaser();

public:
    void    generateLaser();

// Player pointers
private:
    Player* _playerOne  =   nullptr;
    Player* _playerTwo  =   nullptr;

private:
    std::vector<uint8_t>    _partSpriteID;
    std::vector<Vector2>    _partPosition;
};