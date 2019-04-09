#include "Entity/Player.h"

//>-----------{ Constructors/destructors }-----------<

Player::Player ()
{
    this->_type = ENT_PLAYER;

    if (this->_index == 1)
        this->_conIn = new ControllerInput(0x27);
    else if (this->_index == 2)
        this->_conIn = new ControllerInput(0x20);

    createSprites();
}

Player::Player (int aSpeed, Vector2 aPosition, int aIndex, ControllerInput::STICK* aStick) : Entity (aSpeed, aPosition)
{
    this->_colliderRadius = 8;
    this->_index = aIndex;
    this->_type = ENT_PLAYER;

    this->_inputStick = aStick;

    if (this->_index == 1)
        this->_conIn = new ControllerInput(0x27);
    else if (this->_index == 2)
        this->_conIn = new ControllerInput(0x20);

    createSprites();
}

Player::~Player () {}


//>-----------{ Movement methods }-----------<

void Player::move ()
{
    // ControllerInput::STICK stick = this->_conIn->getStick();

    MutexHandler::takeMutex();

    switch (*this->_inputStick)
    {
        case ControllerInput::DOWNLEFT:
            if (this->_position.getX() >= _xLowBound)
                this->_position += Vector2(-this->_speed, 0);
            if (this->_position.getY() <= _yUpBound)
                this->_position += Vector2(0, this->_speed);
            break;
        case ControllerInput::LEFT:
            if (this->_position.getX() >= _xLowBound)
                this->_position += Vector2(-this->_speed, 0);
            break;
        case ControllerInput::UPLEFT:
            if (this->_position.getY() >= _yLowBound)
                this->_position += Vector2(-this->_speed, 0);
            if (this->_position.getX() >= _xLowBound)
                this->_position += Vector2(0, -this->_speed);
            break;
        case ControllerInput::UP:
            printf ("Player %d up", this->_index);
            if (this->_position.getY() > _xLowBound)
                this->_position += Vector2(0, -this->_speed);
            break;
        case ControllerInput::UPRIGHT:
            if (this->_position.getX() <= _xUpBound)
                this->_position += Vector2(this->_speed, 0);
            if (this->_position.getY() >= _xLowBound)
                this->_position += Vector2(0, -this->_speed);
            break;
        case ControllerInput::RIGHT:
            if (this->_position.getX() <= _xUpBound)
                this->_position += Vector2(this->_speed, 0);
            break;
        case ControllerInput::DOWNRIGHT:
            if (this->_position.getX() <= _xUpBound)
                this->_position += Vector2(this->_speed, 0);
            if (this->_position.getY() <= _yUpBound)
                this->_position += Vector2(0, this->_speed);
            break;
        case ControllerInput::DOWN:
            if (this->_position.getY() <= _yUpBound)
                this->_position += Vector2(0, this->_speed);
            break;

        default:
            break;
    }

    MutexHandler::giveMutex();
}

//>-----------{ Laser methods }-----------<

void Player::laserEnable ()
{

}

bool Player::getLaserEnabled ()
{
    return this->_isLaserEnable;
}

//>-----------{ Collision methods }-----------<
void Player::collisionEvent()
{
    
}

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