#pragma once
#include "EntityLink.h"

class EntityList
{
public:
                EntityList();
                ~EntityList();

public:
    void        insert(Entity*);
    void        removeFirst();
    void        removeLink(EntityLink*);
    EntityLink* getFirst();
    bool        isEmpty();

private:
    EntityLink* _firstLink  = nullptr;
};