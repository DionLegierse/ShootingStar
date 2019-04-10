#include "Entity/Laser.h"

#include "Handlers/ConsoleInterface.h"

//>-----------{ Contructors/destructor }-----------<<

/**
 * @brief Construct a new Laser:: Laser object
 * 
 */
Laser::Laser ()
{
    
}

/**
 * @brief Construct a new Laser:: Laser object
 * 
 * @param aPlayerOne Player one
 * @param aPlayerTwo Player two
 */
Laser::Laser (Player* aPlayerOne, Player* aPlayerTwo)
{
    this->_playerOne = aPlayerOne;
    this->_playerTwo = aPlayerTwo;

    this->_score = 0;
    this->_prevScore = -1;

    this->_isLaserEnabled = false;
}

/**
 * @brief Destroy the Laser:: Laser object
 * 
 */
Laser::~Laser () {}

//>-----------{ Draw functions }-----------<<

/**
 * @brief Draws the laser
 * 
 */
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

/**
 * @brief Generates the laser
 * 
 */
void Laser::generateLaser()
{
    this->_partPosition.clear();

    if (this->_playerOne->getLaserEnabled() && this->_playerTwo->getLaserEnabled())
        this->_isLaserEnabled = true;
    else if (!this->_playerOne->getLaserEnabled() && !this->_playerTwo->getLaserEnabled())
        this->_isLaserEnabled = false;
    
    if (this->_isLaserEnabled)
    {
        std::vector<Vector2> tempLaser = LaserCalculator::calculateLaser(this->_playerOne->getPosition(),
                                                                         this->_playerTwo->getPosition()); 
        
        if (tempLaser.size() < 16)
            this->_partPosition = tempLaser;
        else
            this->_isLaserEnabled = false;        
    }
}

/**
 * @brief Gets the positions of all laser parts
 * 
 * @return std::vector<Vector2> A list of all laser parts
 */
std::vector<Vector2> Laser::getLaserPositions() { return this->_partPosition; }