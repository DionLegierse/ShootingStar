#include "Utils/EntityLink.h"

/**
 * @brief Construct a new Entity Link:: Entity Link object
 * 
 */
EntityLink::EntityLink() {}

/**
 * @brief Construct a new Entity Link:: Entity Link object
 * 
 * @param aEntity The entity object
 * @param aNext The next link
 */
EntityLink::EntityLink(Entity* aEntity, EntityLink* aNext)
{
    this->_entity       = aEntity;
    this->_nextEntity   = aNext;
}

/**
 * @brief Destroy the Entity Link:: Entity Link object
 * 
 */
EntityLink::~EntityLink()
{
    delete this->_entity;
}

/**
 * @brief Sets the entity object
 * 
 * @param aEntity The entity object to be set
 */
void EntityLink::setEntity(Entity* aEntity) { this->_entity = aEntity; }

/**
 * @brief Gets the entity object
 * 
 * @return Entity* The entity object of this link
 */
Entity* EntityLink::getEntity() { return this->_entity; }

/**
 * @brief Sets the next link
 * 
 * @param aNext The link to be set
 */
void EntityLink::setNext(EntityLink* aNext) { this->_nextEntity = aNext; }

/**
 * @brief Gets the next link
 * 
 * @return EntityLink* The next link of this link
 */
EntityLink* EntityLink::getNext() { return this->_nextEntity; }