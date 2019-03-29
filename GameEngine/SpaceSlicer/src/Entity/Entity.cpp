#include "Entity/Entity.h"

//>-----------{ Contructors/destructor }-----------<<

Entity::Entity() {}

Entity::Entity (int aSpeed)
{
    this->_speed = aSpeed;
}

Entity::Entity (int aSpeed, Vector2 aPosition)
{
    this->_speed = aSpeed;
    this->_position = aPosition;
}

Entity::~Entity() {}

//>-----------{ Position methods }-----------<<

Vector2& Entity::getPosition ()
{
    return static_cast<Vector2&>(this->_position);
}

void Entity::setPosition (Vector2 aPosition)
{
    this->_position = aPosition;
}

//>-----------{ Collider methods }-----------<<

bool Entity::checkCollision (Entity *aCollider)
{
    if (aCollider == this)
        return false;

    int distance = this->_position.getDistance(aCollider->getPosition());

    if (distance > this->_colliderRadius + aCollider->getColliderRadius())
        return false;  

    return true;
}

int Entity::getColliderRadius ()
{
    return this->_colliderRadius;
}

void Entity::move() {}

uint8_t Entity::getType()
{
    return this->_type;
}

void Entity::updateSprites()
{
    ConsoleInterface ci;
    ci.updateObjectCoord(this->_spriteAddress[0], this->_position.getX(), this->_position.getY());
    ci.updateObjectCoord(this->_spriteAddress[1], this->_position.getX() + 8, this->_position.getY());
    ci.updateObjectCoord(this->_spriteAddress[2], this->_position.getX(), this->_position.getY() + 8);
    ci.updateObjectCoord(this->_spriteAddress[3], this->_position.getX() + 8, this->_position.getY() + 8);
}