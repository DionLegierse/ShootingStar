#include "Utils/EntityLink.h"

EntityLink::EntityLink() {}

EntityLink::EntityLink(Entity* aEntity, EntityLink* aNext)
{
    this->_entity       = aEntity;
    this->_nextEntity   = aNext;
}

EntityLink::~EntityLink() {}

void EntityLink::setEntity(Entity* aEntity) { this->_entity = aEntity; }
Entity* EntityLink::getEntity() { return this->_entity; }

void EntityLink::setNext(EntityLink* aNext) { this->_nextEntity = aNext; }
EntityLink* EntityLink::getNext() { return this->_nextEntity; }