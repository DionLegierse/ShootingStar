#include "NPC.h"

//>-----------{ Constructors/destructor }-----------<

NPC::NPC () {}

NPC::NPC (int aSpeed, Vector2 aDirection) : Entity(aSpeed)
{
    this->_direction = aDirection;
}

NPC::~NPC () {}