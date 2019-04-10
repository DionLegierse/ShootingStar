#include "Utils/EntityList.h"

/**
 * @brief Construct a new Entity List:: Entity List object
 * 
 */
EntityList::EntityList() {}

/**
 * @brief Destroy the Entity List:: Entity List object
 * 
 */
EntityList::~EntityList() {}

/**
 * @brief Adds a new link to the list
 * 
 * @param aEntity The entity to be added to the link
 */
void EntityList::insert(Entity* aEntity)
{
    this->_firstLink = new EntityLink(aEntity, this->_firstLink);
}

/**
 * @brief Removes a link from the list
 * 
 * @param aEntity The entity's link to be removed
 */
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
        curLink = curLink->getNext();
    }
}

/**
 * @brief Gets the first link of the list
 * 
 * @return EntityLink* The first link of this list
 */
EntityLink* EntityList::getFirst()
{
    return this->_firstLink;
}

/**
 * @brief Checks if the list is empty
 * 
 * @return true The list is empty
 * @return false The list is not empty
 */
bool EntityList::isEmpty()
{
    if (this->_firstLink == nullptr)
        return true;

    return false;
}