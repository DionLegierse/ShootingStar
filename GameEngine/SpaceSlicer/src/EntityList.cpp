#include "EntityList.h"

EntityList::EntityList() {}
EntityList::~EntityList() {}

void EntityList::insert(Entity* aEntity)
{
    this->_firstLink = new EntityLink(aEntity, this->_firstLink);
}

void EntityList::removeFirst()
{
    if (this->_firstLink != nullptr)
    {
        EntityLink* tempLink = this->_firstLink;
        this->_firstLink = tempLink->getNext();
        delete tempLink;
    }
}

EntityLink* EntityList::getFirst()
{
    return this->_firstLink;
}

bool EntityList::isEmpty()
{
    if (this->_firstLink == nullptr)
        return true;

    return false;
}