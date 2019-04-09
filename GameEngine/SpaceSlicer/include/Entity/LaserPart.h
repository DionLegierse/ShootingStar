#include "Utils/Vector2.h"

class LaserPart
{
public:
    LaserPart();
    LaserPart(int, Vector2);
    ~LaserPart();

public:
    int     getSpriteID();
    Vector2 getPosition();

private:
    int     _spriteID;
    Vector2 _position;
};