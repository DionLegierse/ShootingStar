#pragma once
#include "NPC.h"

#include <stdio.h>

class Astroid : public NPC
{
// Constructors/destructor
public:
            Astroid(int, Vector2, Vector2);
            ~Astroid();

private:
            Astroid();

public:
    void    collisionEvent()    override;

// Sprite methods
private:
    void    createSprites()     override;
};