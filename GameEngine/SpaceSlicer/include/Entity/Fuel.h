#include "NPC.h"

class Fuel : public NPC
{
// Constructors/destructor
public:
            Fuel(int, Vector2);
            ~Fuel();

private:
            Fuel();

// Move methods
public:
    void    move() override;
};