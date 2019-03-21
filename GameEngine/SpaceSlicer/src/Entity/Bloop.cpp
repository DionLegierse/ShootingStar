#include "Entity/Bloop.h"

//>-----------{ Contructors/destructor }-----------<<

Bloop::Bloop ()
{
    this->_type = ENT_BLOOP;
}

Bloop::Bloop (int aSpeed, Vector2 aDirection) : NPC (aSpeed, aDirection)
{
    this->_type = ENT_BLOOP;
}

Bloop::~Bloop () {}

//>-----------{ Movement methods }-----------<<

void Bloop::move ()
{
    
}