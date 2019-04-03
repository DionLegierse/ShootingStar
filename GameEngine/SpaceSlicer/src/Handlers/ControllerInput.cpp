#include "Handlers/ControllerInput.h"

ControllerInput::ControllerInput(int aAddress)
{
    address = aAddress;
}

ControllerInput::~ControllerInput()
{

}

void ControllerInput::setupController()
{
    i2c_config_t conf;
 
    conf.mode = I2C_MODE_MASTER;

    conf.sda_io_num = GPIO_NUM_21;
    conf.sda_pullup_en = GPIO_PULLUP_ENABLE;

    conf.scl_io_num = GPIO_NUM_22;
    conf.scl_pullup_en = GPIO_PULLUP_ENABLE;

    conf.master.clk_speed = 25000;

    i2c_param_config(I2C_NUM_0, &conf);

    i2c_driver_install(I2C_NUM_0, conf.mode, 0, 0, 0);
}

uint8_t ControllerInput::readControllerData()
{    
    uint8_t* data_rd = new uint8_t();

	i2c_cmd_handle_t cmd = i2c_cmd_link_create();

	i2c_master_start(cmd);
    i2c_master_write_byte(cmd, (address << 1) | I2C_MASTER_READ, 0x1);
	i2c_master_read_byte(cmd, data_rd, I2C_MASTER_ACK);
    i2c_master_cmd_begin(I2C_NUM_0, cmd, portTICK_RATE_MS);	

    i2c_cmd_link_delete(cmd); 

    uint8_t temp = *data_rd;
	delete data_rd;
    return temp;
}

ControllerInput::STICK ControllerInput::getStick()
{
    uint8_t data = readControllerData() & 0xF0;

    switch (data)
    {
        case 0xE0:
            return UP;
        case 0xB0:
            return DOWN;
        case 0x70:
            return LEFT;
        case 0xD0:
            return RIGHT;
        case 0x60:
            return UPLEFT;
        case 0xC0:
            return UPRIGHT;
        case 0X30:
            return DOWNLEFT;
        case 0x90:
            return DOWNRIGHT;    
        default:
            return CENTER;
    }   
}

ControllerInput::BUTTON ControllerInput::getButton()
{
    uint8_t data = readControllerData() & 0x0F;

    switch (data)
    {
        case 0x07:
            return BTN_ONE;
        case 0x0B:
            return BTN_TWO;
        case 0x0D:
            return BTN_THREE;    
        default:
            return BTN_NOPE;
    }     
}