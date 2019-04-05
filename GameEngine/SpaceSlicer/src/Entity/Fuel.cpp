#include "Entity/Fuel.h"

//>-----------{ Contructors/destructor }-----------<<

Fuel::Fuel ()
{
    this->_type = ENT_FUEL;
}

Fuel::Fuel (int aSpeed, Vector2 aDirection) : NPC (aSpeed, aDirection)
{
    this->_type = ENT_FUEL;
}

Fuel::~Fuel () {}

//>-----------{ Movement methods }-----------<<

void Fuel::move ()
{
    
}