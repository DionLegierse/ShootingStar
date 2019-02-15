#include "Entity.h"

//>-----------{ Contructors/destructor }-----------<<

Entity::Entity() {}

Entity::Entity (int aSpeed)
{
    this->_speed = aSpeed;
}

Entity::~Entity() {}

//>-----------{ Position methods }-----------<<

Vector2 Entity::getPosition ()
{
    return this->_position;
}

void Entity::setPosition (Vector2 aPosition)
{
    this->_position = aPosition;
}

//>-----------{ Collider methods }-----------<<

bool Entity::checkCollision (Entity *aCollider)
{
    int distance = this->_position.getDistance(aCollider->getPosition);

    if (distance > this->_colliderRadius)
        return false;

    return true;
}

