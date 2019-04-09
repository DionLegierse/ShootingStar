#include "Entity/Laser.h"

#include "Handlers/ConsoleInterface.h"

//>-----------{ Contructors/destructor }-----------<<

Laser::Laser ()
{
    
}

Laser::Laser (Player* aPlayerOne, Player* aPlayerTwo)
{
    this->_playerOne = aPlayerOne;
    this->_playerTwo = aPlayerTwo;

    this->_score = 0;
    this->_prevScore = -1;
}

Laser::~Laser () {}

//>-----------{ Draw functions }-----------<<

void Laser::drawLaser ()
{
    ConsoleInterface ci;

    for (uint8_t s : this->_partSpriteID)
    {
        ci.deleteObject(s);
    }

    this->_partSpriteID.clear();

    for (Vector2 n : this->_partPosition)
    {
        uint8_t tempID = ci.createNewObject(SPR_LASER);
        this->_partSpriteID.push_back(tempID);
        ci.updateObjectCoord(tempID, n);
    }
}

void Laser::generateLaser()
{
    this->_partPosition.clear();
    
    if (this->_playerOne->getLaserEnabled() && this->_playerTwo->getLaserEnabled())
    {
        this->_partPosition = LaserCalculator::calculateLaser(this->_playerOne->getPosition(),
                                                            this->_playerTwo->getPosition());
    }
}

std::vector<Vector2> Laser::getLaserPositions() { return this->_partPosition; }