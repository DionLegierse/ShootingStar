#pragma once
#include "NPC.h"
#include "Vector2.h"

#include <stdio.h>

class Astroid : public NPC
{
// Constructors/destructor
public:
            Astroid(int, Vector2, Vector2);
            ~Astroid();

private:
            Astroid();

// Move methods
public:
    void    move() override;

public:
    void    collisionEvent()    override;
};