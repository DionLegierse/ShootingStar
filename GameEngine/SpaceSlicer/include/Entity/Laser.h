#include "Player.h"
#include "Entity/LaserPart.h"

#include <vector>

class Laser
{
// Constructors/destructors
public:
            Laser();
            ~Laser();

// Draw function
public:
    void    drawLaser();

public:
    std::vector<Vector2>    getLaserPositions();

private:
    void    generateLaser();
    void    clearLaser();

// Laser variables
private:
    bool    _isEnabled = false;

// Player pointers
private:
    Player* _playerOne;
    Player* _playerTwo;

private:
    std::vector<Vector2>    _laserPositions;
    std::vector<LaserPart>  _laserParts;
};