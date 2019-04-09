#include "Entity/Laser.h"

LaserPart::LaserPart() {}

LaserPart::LaserPart(int aSpriteID, Vector2 aPosition)
{
    this->_spriteID = aSpriteID;
    this->_position = aPosition;
}

LaserPart::~LaserPart() {}

int LaserPart::getSpriteID() { return this->_spriteID; }
Vector2 LaserPart::getPosition() { return this->_position; }