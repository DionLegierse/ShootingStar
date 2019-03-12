#include "NPC.h"

//>-----------{ Constructors/destructor }-----------<

NPC::NPC () {}

NPC::NPC (int aSpeed, Vector2 aDirction) : Entity(aSpeed)
{
    this->_direction = aDirction;
}

NPC::NPC (int aSpeed, Vector2 aDirection, Vector2 aPosition) : Entity(aSpeed, aPosition)
{
    this->_direction = aDirection;
}

NPC::~NPC () {}