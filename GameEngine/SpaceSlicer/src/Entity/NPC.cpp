#include "Entity/NPC.h"

//>-----------{ Constructors/destructor }-----------<

NPC::NPC () {}

NPC::NPC (int aSpeed, Vector2 aDirction) : Entity(aSpeed)
{
    this->_direction = aDirction;
}

NPC::NPC (int aSpeed, Vector2 aDirection, Vector2 aPosition) : Entity(aSpeed, aPosition)
{
    this->_direction = aDirection;
}

NPC::~NPC () {}

//>-----------{ Movement methods }-----------<<

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