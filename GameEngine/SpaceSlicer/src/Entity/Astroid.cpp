#include "Entity/Astroid.h"

//>-----------{ Contructors/destructor }-----------<<

Astroid::Astroid ()
{
    this->_type = ENT_ASTROID;
}

Astroid::Astroid (int aSpeed, Vector2 aDirection, Vector2 aPosition) : NPC (aSpeed, aDirection, aPosition)
{
    this->_colliderRadius = 2;
    this->_type = ENT_ASTROID;
}

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