#include "GameLoops/GameLoop.h"

/**
 * @brief Construct a new Game Loop:: Game Loop object
 * 
 */
GameLoop::GameLoop() {}

/**
 * @brief Destroy the Game Loop:: Game Loop object
 * 
 */
GameLoop::~GameLoop() {}

/**
 * @brief Gets the list of the astroids
 * 
 * @return EntityList* List of the astroids
 */
EntityList* GameLoop::getAstroidList() { return this->_astroidList; }

/**
 * @brief Gets the list of the bloops
 * 
 * @return EntityList* List of the bloops
 */
EntityList* GameLoop::getBloopList() { return this->_bloopList; }

/**
 * @brief Gets a certain player
 * 
 * @param aNumber Index of requested player
 * @return Player* The requested player
 */
Player* GameLoop::getPlayer(int aNumber)
{
    if (aNumber == 1)
        return this->_playerOne;
    else if (aNumber == 2)
        return this->_playerTwo;
        
    return nullptr;
}

/**
 * @brief Gets the laser object
 * 
 * @return Laser* The laser object
 */
Laser* GameLoop::getLaser() { return this->_laser; }