#include "Entity/Player.h"

//>-----------{ Constructors/destructors }-----------<

/**
 * @brief Construct a new Player:: Player object
 * 
 */
Player::Player ()
{
    this->_type = ENT_PLAYER;

    createSprites();
}

/**
 * @brief Construct a new Player:: Player object
 * 
 * @param aSpeed Speed with which the player moves
 * @param aPosition Starting position of the player
 * @param aIndex Index of the player (player 1, player 2)
 * @param aStick Input of the stick
 * @param aButton Input of the buttons
 */
Player::Player (int aSpeed, Vector2 aPosition, int aIndex, ControllerInput::STICK* aStick, ControllerInput::BUTTON* aButton) : Entity (aSpeed, aPosition)
{
    this->_colliderRadius = 8;
    this->_index = aIndex;
    this->_type = ENT_PLAYER;

    this->_inputStick = aStick;
    this->_inputButton = aButton;

    createSprites();
}

/**
 * @brief Destroy the Player:: Player object
 * 
 */
Player::~Player () {}


//>-----------{ Movement methods }-----------<

/**
 * @brief Move the player
 * 
 */
void Player::move ()
{
    MutexHandler::takeMutex();

    switch (*this->_inputStick)
    {
        case ControllerInput::DOWNLEFT:
            if (this->_position.getX() > _xLowBound)
                this->_position += Vector2(-this->_speed, 0);
            if (this->_position.getY() < _yUpBound)
                this->_position += Vector2(0, this->_speed);
            break;
        case ControllerInput::LEFT:
            if (this->_position.getX() > _xLowBound)
                this->_position += Vector2(-this->_speed, 0);
            break;
        case ControllerInput::UPLEFT:
            if (this->_position.getY() > _yLowBound)
                this->_position += Vector2(0, -this->_speed);
            if (this->_position.getX() > _xLowBound)
                this->_position += Vector2(-this->_speed, 0);
            break;
        case ControllerInput::UP:
            if (this->_position.getY() > _yLowBound)
                this->_position += Vector2(0, -this->_speed);
            break;
        case ControllerInput::UPRIGHT:
            if (this->_position.getX() < _xUpBound)
                this->_position += Vector2(this->_speed, 0);
            if (this->_position.getY() > _yLowBound)
                this->_position += Vector2(0, -this->_speed);
            break;
        case ControllerInput::RIGHT:
            if (this->_position.getX() < _xUpBound)
                this->_position += Vector2(this->_speed, 0);
            break;
        case ControllerInput::DOWNRIGHT:
            if (this->_position.getX() < _xUpBound)
                this->_position += Vector2(this->_speed, 0);
            if (this->_position.getY() < _yUpBound)
                this->_position += Vector2(0, this->_speed);
            break;
        case ControllerInput::DOWN:
            if (this->_position.getY() < _yUpBound)
                this->_position += Vector2(0, this->_speed);
            break;

        default:
            break;
    }

    if (*this->_inputButton == ControllerInput::BTN_TWO)
        this->_isLaserEnable = true;
    else
        this->_isLaserEnable = false;
    

    MutexHandler::giveMutex();
}

//>-----------{ Laser methods }-----------<

/**
 * @brief Gets if the laser is enabled
 * 
 * @return true Laser is enabled
 * @return false Laser is not enabled
 */
bool Player::getLaserEnabled ()
{
    return this->_isLaserEnable;
}

/**
 * @brief Gets the index of the player
 * 
 * @return int The players index
 */
int Player::getIndex() { return this->_index; }

//>-----------{ Collision methods }-----------<

void Player::createSprites()
{
    ConsoleInterface ci;
    if (this->_index == 1)
    {
        this->_spriteAddress[0] = ci.createNewObject(SPR_P1_TL);
        this->_spriteAddress[1] = ci.createNewObject(SPR_P1_TR);
        this->_spriteAddress[2] = ci.createNewObject(SPR_P1_BL);
        this->_spriteAddress[3] = ci.createNewObject(SPR_P1_BR);
    }
    else if (this->_index == 2)
    {
        this->_spriteAddress[0] = ci.createNewObject(SPR_P2_TL);
        this->_spriteAddress[1] = ci.createNewObject(SPR_P2_TR);
        this->_spriteAddress[2] = ci.createNewObject(SPR_P2_BL);
        this->_spriteAddress[3] = ci.createNewObject(SPR_P2_BR);
    }
}