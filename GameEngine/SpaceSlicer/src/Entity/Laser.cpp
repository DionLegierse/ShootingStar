#include "Entity/Laser.h"
#include "Handlers/ConsoleInterface.h"
#include "Utils/LaserCalculator.h"

//>-----------{ Contructors/destructor }-----------<<

Laser::Laser () {}

Laser::~Laser () {}

//>-----------{ Draw functions }-----------<<

void Laser::drawLaser ()
{
    ConsoleInterface ci;

    generateLaser();

    for (LaserPart n : this->_laserParts)
    {
        ci.updateObjectCoord(n.getSpriteID(), n.getPosition());
    }
}

void Laser::generateLaser()
{
    ConsoleInterface ci;

    this->_laserPositions = LaserCalculator::calculateLaser(this->_playerOne->getPosition(),
                                                            this->_playerTwo->getPosition());

    for (Vector2 n : _laserPositions)
    {
        this->_laserParts.push_back(LaserPart(ci.createNewObject(SPR_A), n));
    }
}

void Laser::clearLaser()
{

}