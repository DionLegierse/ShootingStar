#include "Entity/Entity.h"
#include "GameLoop.h"
#include "Handlers/CollisionHandler.h"
#include "Handlers/ControllerInput.h"
#include "freertos/task.h"

class TestPC : public GameLoop
{
public:
            TestPC();
            ~TestPC();

public:
    void    setup()     override;
    void    loop()      override;

public:
    void    setupInput() override;
    void    readInput() override;

public:
    void    updateAllSprites() override;

private:
    void    updateNPC();

private:
    CollisionHandler*   _collision  = nullptr;
    ControllerInput*    _inputPlayerOne;
    ControllerInput*    _inputPlayerTwo;

private:
    ControllerInput::STICK* _stickPlayerOne;
    ControllerInput::STICK* _stickPlayerTwo;
};