#include "Entity/Astroid.h"

//>-----------{ Contructors/destructor }-----------<<

/**
 * @brief Construct a new Astroid:: Astroid object
 * 
 */
Astroid::Astroid ()
{
    this->_type = ENT_ASTROID;
    createSprites();
}

/**
 * @brief Construct a new Astroid:: Astroid object
 * 
 * @param aSpeed Speed whith which the entity moves
 * @param aDirection Direction in which the entity moves
 * @param aPosition Starting position of the entity
 */
Astroid::Astroid (int aSpeed, Vector2 aDirection, Vector2 aPosition) : NPC (aSpeed, aDirection, aPosition)
{
    this->_colliderRadius = 8;
    this->_type = ENT_ASTROID;
    createSprites();
}

/**
 * @brief Destroy the Astroid:: Astroid object
 * 
 */
Astroid::~Astroid ()
{
    deleteSprites();
}

void Astroid::createSprites()
{
    ConsoleInterface ci;
    this->_spriteAddress[0] = ci.createNewObject(SPR_ASTROID_TL);
    this->_spriteAddress[1] = ci.createNewObject(SPR_ASTROID_TR);
    this->_spriteAddress[2] = ci.createNewObject(SPR_ASTROID_BL);
    this->_spriteAddress[3] = ci.createNewObject(SPR_ASTROID_BR);
}