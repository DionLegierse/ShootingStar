#include "Entity/Astroid.h"

//>-----------{ Contructors/destructor }-----------<<

Astroid::Astroid ()
{
    this->_type = ENT_ASTROID;
    createSprites();
}

Astroid::Astroid (int aSpeed, Vector2 aDirection, Vector2 aPosition) : NPC (aSpeed, aDirection, aPosition)
{
    this->_colliderRadius = 8;
    this->_type = ENT_ASTROID;
    createSprites();
}

Astroid::~Astroid ()
{
    deleteSprites();
}

void Astroid::collisionEvent()
{
    
}

void Astroid::createSprites()
{
    ConsoleInterface ci;
    this->_spriteAddress[0] = ci.createNewObject(SPR_ASTROID_TL);
    this->_spriteAddress[1] = ci.createNewObject(SPR_ASTROID_TR);
    this->_spriteAddress[2] = ci.createNewObject(SPR_ASTROID_BL);
    this->_spriteAddress[3] = ci.createNewObject(SPR_ASTROID_BR);
}