#include "Entity/Bloop.h"

//>-----------{ Contructors/destructor }-----------<<

/**
 * @brief Construct a new Bloop:: Bloop object
 * 
 */
Bloop::Bloop ()
{
    this->_type = ENT_BLOOP;
    createSprites();
}

/**
 * @brief Construct a new Bloop:: Bloop object
 * 
 * @param aSpeed The speed with which the NPC moves
 * @param aDirection The direction in which the NPC moves
 * @param aPosition The starting position of the NPC
 */
Bloop::Bloop (int aSpeed, Vector2 aDirection, Vector2 aPosition) : NPC (aSpeed, aDirection, aPosition)
{
    this->_colliderRadius = 8;
    this->_type = ENT_BLOOP;
    createSprites();
}

/**
 * @brief Destroy the Bloop:: Bloop object
 * 
 */
Bloop::~Bloop ()
{
    deleteSprites();
}

void Bloop::createSprites()
{
    ConsoleInterface ci;
    this->_spriteAddress[0] = ci.createNewObject(SPR_BLOOP_TL);
    this->_spriteAddress[1] = ci.createNewObject(SPR_BLOOP_TR);
    this->_spriteAddress[2] = ci.createNewObject(SPR_BLOOP_BL);
    this->_spriteAddress[3] = ci.createNewObject(SPR_BLOOP_BR);
}