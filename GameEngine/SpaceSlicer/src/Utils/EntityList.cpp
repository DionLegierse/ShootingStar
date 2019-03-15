#include "Utils/EntityList.h"

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

void EntityList::removeLink(EntityLink* aLink)
{
    EntityLink* curLink = this->_firstLink;
    EntityLink* prevLink = nullptr;

    while (curLink != nullptr)
    {
        if (curLink == aLink)
        {
            if (curLink == this->_firstLink)
                this->_firstLink = curLink->getNext();
            else
                prevLink->setNext(curLink->getNext());

            delete curLink;            
        }

        prevLink = curLink;
        curLink = curLink->getNext();
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