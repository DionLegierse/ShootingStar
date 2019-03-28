#include "ControllerInput.h"

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

    conf.master.clk_speed = 5000;

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

bool ControllerInput::getInput(INPUTS but)
{
    switch (but)
    {
        case UP:
            return !(readControllerData() & 0x10);
        case DOWN:
            return !(readControllerData() & 0x40);
        case LEFT:
            return !(readControllerData() & 0x80);
        case RIGHT:
            return !(readControllerData() & 0x20);
        case BUTTON_ONE:
            return !(readControllerData() & 0x01);
        case BUTTON_TWO:
            return !(readControllerData() & 0x02);
        case BUTTON_THREE:
            return !(readControllerData() & 0x04);
        default:
            return 0;
    }    
}