#include "NPC.h"

class Bloop : public NPC
{
// Constructors/destructor
public:
            Bloop(int, Vector2, Vector2);
            ~Bloop();

private:
            Bloop();

public:
    void    collisionEvent()    override;

// Sprite methods
private:
    void    createSprites()     override;
};