#include "Entity/Entity.h"

//>-----------{ Contructors/destructor }-----------<<

/**
 * @brief Construct a new Entity:: Entity object
 * 
 */
Entity::Entity() {}

/**
 * @brief Construct a new Entity:: Entity object
 * 
 * @param aSpeed The speed with which the entity moves
 */
Entity::Entity (int aSpeed)
{
    this->_speed = aSpeed;
}

/**
 * @brief Construct a new Entity:: Entity object
 * 
 * @param aSpeed The speed with which the entity moves
 * @param aPosition The starting position of the entity
 */
Entity::Entity (int aSpeed, Vector2 aPosition)
{
    this->_speed = aSpeed;
    this->_position = aPosition;
}

/**
 * @brief Destroy the Entity:: Entity object
 * 
 */
Entity::~Entity() {}

//>-----------{ Position methods }-----------<<

/**
 * @brief Gets the current position of the entity
 * 
 * @return Vector2& The current position
 */
Vector2& Entity::getPosition ()
{
    return static_cast<Vector2&>(this->_position);
}

/**
 * @brief Sets the current position of the entity
 * 
 * @param aPosition Position to be set
 */
void Entity::setPosition (Vector2 aPosition)
{
    this->_position = aPosition;
}

//>-----------{ Collider methods }-----------<<

/**
 * @brief Checks if the entity collides with another entity
 * 
 * @param aCollider Other entity to check with
 * @return true Entities collide
 * @return false Entities don't collide
 */
bool Entity::checkCollision (Entity *aCollider)
{
    if (aCollider == this)
        return false;

    MutexHandler::takeMutex();
    int distance = this->_position.getDistance(aCollider->getPosition());
    MutexHandler::giveMutex();

    if (distance > this->_colliderRadius + aCollider->getColliderRadius())
        return false;  

    return true;
}

/**
 * @brief Gets the radius of the entity's collider
 * 
 * @return int The collider radius
 */
int Entity::getColliderRadius ()
{
    return this->_colliderRadius;
}

/**
 * @brief Gets the entity type
 * 
 * @return uint8_t ID of the entity type
 */
uint8_t Entity::getType()
{
    return this->_type;
}

/**
 * @brief Updates the sprite positions of this entity
 * 
 */
void Entity::updateSprites()
{
    ConsoleInterface ci;
    Vector2 tempX(8, 0);
    Vector2 tempY(0, 8);
    Vector2 tempXY(8, 8);

    MutexHandler::takeMutex();

    ci.updateObjectCoord(this->_spriteAddress[0], this->_position);
    ci.updateObjectCoord(this->_spriteAddress[1], this->_position + tempX);
    ci.updateObjectCoord(this->_spriteAddress[2], this->_position + tempY);
    ci.updateObjectCoord(this->_spriteAddress[3], this->_position + tempXY);

    MutexHandler::giveMutex();
}

/**
 * @brief Deletes all the sprites of this entity
 * 
 */
void Entity::deleteSprites()
{
    ConsoleInterface ci;
    
    for (int i = 0; i < 4; i++)
    {
        ci.deleteObject(this->_spriteAddress[i]);
    }
}