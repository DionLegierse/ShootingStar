#include "Utils/EntityList.h"

EntityList::EntityList() {}
EntityList::~EntityList() {}

void EntityList::insert(Entity* aEntity)
{
    this->_firstLink = new EntityLink(aEntity, this->_firstLink);
}

void EntityList::remove(Entity* aEntity)
{
    EntityLink* curLink = this->_firstLink;
    EntityLink* prevLink = nullptr;

    while (curLink != nullptr)
    {
        if (curLink->getEntity() == aEntity)
        {
            if (prevLink == nullptr)
                this->_firstLink = curLink->getNext();
            else
                prevLink->setNext(curLink->getNext());

            delete curLink;
            return;
        }

        prevLink = curLink;
        curLink->getNext();
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