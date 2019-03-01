#include "Astroid.h"

//>-----------{ Contructors/destructor }-----------<<

Astroid::Astroid (int aSpeed, Vector2 aDirection) : NPC (aSpeed, aDirection)
{
    this->_colliderRadius = 2;
}

Astroid::Astroid () {}

Astroid::~Astroid () {}

//>-----------{ Movement methods }-----------<<

void Astroid::move ()
{
    this->_position += this->_direction * this->_speed;
}