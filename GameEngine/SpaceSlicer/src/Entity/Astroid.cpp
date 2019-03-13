#include "Entity/Astroid.h"

//>-----------{ Contructors/destructor }-----------<<

Astroid::Astroid (int aSpeed, Vector2 aDirection, Vector2 aPosition) : NPC (aSpeed, aDirection, aPosition)
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

void Astroid::collisionEvent()
{
    printf("Astroid exploded!\n");
}