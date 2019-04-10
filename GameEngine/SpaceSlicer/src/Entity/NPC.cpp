#include "Entity/NPC.h"

//>-----------{ Constructors/destructor }-----------<

/**
 * @brief Construct a new NPC::NPC object
 * 
 */
NPC::NPC () {}

/**
 * @brief Construct a new NPC::NPC object
 * 
 * @param aSpeed Speed with which the NPC moves
 * @param aDirction Direction in which the NPC moves
 */
NPC::NPC (int aSpeed, Vector2 aDirction) : Entity(aSpeed)
{
    this->_direction = aDirction;
}

/**
 * @brief Construct a new NPC::NPC object
 * 
 * @param aSpeed Speed with which the NPC moves
 * @param aDirection Direction in which the NPC moves
 * @param aPosition Starting position of the NPC
 */
NPC::NPC (int aSpeed, Vector2 aDirection, Vector2 aPosition) : Entity(aSpeed, aPosition)
{
    this->_direction = aDirection;
}

/**
 * @brief Destroy the NPC::NPC object
 * 
 */
NPC::~NPC () {}

//>-----------{ Movement methods }-----------<<

/**
 * @brief Moves the NPC
 * 
 */
void NPC::move ()
{
    MutexHandler::takeMutex();

    this->_position += this->_direction * this->_speed;
    // 512, 448
    if (this->_position.getX() > 512)
        this->_position.setX(0);
    else if (this->_position.getX() < 0)
        this->_position.setX(512);

    if (this->_position.getY() > 448)
        this->_position.setY(0);
    else if (this->_position.getY() < 0)
        this->_position.setY(448);

    MutexHandler::giveMutex();
}