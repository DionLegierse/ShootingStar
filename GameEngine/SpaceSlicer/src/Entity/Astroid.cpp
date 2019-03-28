#include "Entity/Astroid.h"

//>-----------{ Contructors/destructor }-----------<<

Astroid::Astroid ()
{
    this->_type = ENT_ASTROID;
    createSprites();
    updateSprites();
}

Astroid::Astroid (int aSpeed, Vector2 aDirection, Vector2 aPosition) : NPC (aSpeed, aDirection, aPosition)
{
    this->_colliderRadius = 2;
    this->_type = ENT_ASTROID;
    createSprites();
    updateSprites();
}

Astroid::~Astroid () {}

void Astroid::collisionEvent()
{
    printf("%p: Astroid exploded!\n", this);
}

void Astroid::createSprites()
{
    ConsoleInterface ci;
    this->_spriteAddress[0] = ci.createNewObject(SPR_ASTROID_TL);
    this->_spriteAddress[1] = ci.createNewObject(SPR_ASTROID_TR);
    this->_spriteAddress[2] = ci.createNewObject(SPR_ASTROID_BL);
    this->_spriteAddress[3] = ci.createNewObject(SPR_ASTROID_BR);
}