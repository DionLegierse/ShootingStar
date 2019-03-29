#include "Entity/Player.h"

//>-----------{ Constructors/destructors }-----------<

Player::Player ()
{
    this->_type = ENT_PLAYER;

    if (this->_index == 1)
        this->_conIn = new ControllerInput(0x20);
    else if (this->_index == 2)
        this->_conIn = new ControllerInput(0x27);

    this->_conIn->setupController();

    createSprites();
    updateSprites();
}

Player::Player (int aSpeed, Vector2 aPosition, int aIndex) : Entity (aSpeed, aPosition)
{
    this->_colliderRadius = 2;
    this->_index = aIndex;
    this->_type = ENT_PLAYER;

    if (this->_index == 1)
        this->_conIn = new ControllerInput(0x20);
    else if (this->_index == 2)
        this->_conIn = new ControllerInput(0x27);

    this->_conIn->setupController();

    createSprites();
    updateSprites();
}

Player::~Player () {}


//>-----------{ Movement methods }-----------<

void Player::move ()
{
    ControllerInput::STICK stick = this->_conIn->getStick();

    switch (stick)
    {
        case ControllerInput::UP:
            this->_position += {0, -this->_speed};
            updateSprites();
            break;
        case ControllerInput::UPRIGHT:
            this->_position += {this->_speed, -this->_speed};
            updateSprites();
            break;
        case ControllerInput::RIGHT:
            this->_position += {this->_speed, 0};
            updateSprites();
            break;
        case ControllerInput::DOWNRIGHT:
            this->_position += {this->_speed, this->_speed};
            updateSprites();
            break;
        case ControllerInput::DOWN:
            this->_position += {0, this->_speed};
            updateSprites();
            break;
        case ControllerInput::DOWNLEFT:
            this->_position += {-this->_speed, this->_speed};
            updateSprites();
            break;
        case ControllerInput::LEFT:
            this->_position += {-this->_speed, 0};
            updateSprites();
            break;
        case ControllerInput::UPLEFT:
            this->_position += {-this->_speed, -this->_speed};
            updateSprites();

        default:
            break;
    }
}

//>-----------{ Laser methods }-----------<

void Player::laserEnable ()
{

}

bool Player::getLaserEnabled ()
{
    return this->_isLaserEnable;
}

//>-----------{ Laser methods }-----------<

void Player::setFuel (int aFuel)
{
    this->_fuel = aFuel;
}

int Player::getFuel ()
{
    return this->_fuel;
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