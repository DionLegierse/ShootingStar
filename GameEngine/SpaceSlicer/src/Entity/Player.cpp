#include "Entity/Player.h"

//>-----------{ Constructors/destructors }-----------<

Player::Player () {}

Player::~Player () {}


//>-----------{ Movement methods }-----------<

void Player::move ()
{

}

//>-----------{ Laser methods }-----------<

void Player::laserEnable ()
{

}

bool Player::getLaserEnabled ()
{
    return this->_isLaserEnable;
}

//>-----------{ Laser methods }-----------<

void Player::setFuel (int aFuel)
{
    this->_fuel = aFuel;
}

int Player::getFuel ()
{
    return this->_fuel;
}

//>-----------{ Collision methods }-----------<
void Player::collisionEvent()
{
    printf("YOU DIED!\n");
}