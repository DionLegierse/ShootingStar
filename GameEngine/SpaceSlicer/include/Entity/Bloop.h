#include "NPC.h"

class Bloop : public NPC
{
// Constructors/destructor
public:
            Bloop(int, Vector2, Vector2);
            ~Bloop();

private:
            Bloop();
            
// Sprite methods
private:
    void    createSprites()     override;
};