#pragma once
#include "EntityLink.h"

class EntityList
{
public:
                EntityList();
                ~EntityList();

public:
    void        insert(Entity*);
    void        remove(Entity*);
    EntityLink* getFirst();
    bool        isEmpty();

private:
    EntityLink* _firstLink  = nullptr;
};