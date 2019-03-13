#include "NPC.h"

class Bloop : public NPC
{
// Constructors/destructor
public:
            Bloop(int, Vector2);
            ~Bloop();

private:
            Bloop();

// Move methods
public:
    void    move() override;
};