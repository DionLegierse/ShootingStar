#pragma once
#include "Entity.h"
#include "Handlers/MutexHandler.h"

class NPC : public Entity
{
// Constructors/destructors
public:
            NPC(int, Vector2);
            NPC(int, Vector2, Vector2);
            ~NPC();

protected:
            NPC();

// Move methods
public:
    void    move() override;

// Movement variables
protected:
    Vector2 _direction;
};