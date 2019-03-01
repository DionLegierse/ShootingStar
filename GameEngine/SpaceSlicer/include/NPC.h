#include "Entity.h"
#include "Vector2.h"

class NPC : public Entity
{
// Constructors/destructors
public:
            NPC(int, Vector2);
            ~NPC();

protected:
            NPC();

// Movement variables
protected:
    Vector2 _direction;
};