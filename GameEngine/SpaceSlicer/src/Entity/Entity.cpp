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