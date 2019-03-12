#pragma once
#include "Entity.h"

class EntityLink
{
public:
                EntityLink(Entity*, EntityLink*);
                ~EntityLink();

private:
                EntityLink();

public:
    void        setEntity(Entity*);
    Entity*     getEntity();
    void        setNext(EntityLink*);
    EntityLink* getNext();

private:
    Entity*     _entity;
    EntityLink* _nextEntity;
};