#include "NPC.h"
#include "Vector2.h"

class Astroid : public NPC
{
// Constructors/destructor
public:
            Astroid(int, Vector2);
            ~Astroid();

private:
            Astroid();

// Move methods
public:
    void    move() override;
};