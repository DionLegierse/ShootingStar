#include "GameLoop.h"
#include "Handlers/ConsoleInterface.h"
#include "Handlers/ControllerInput.h"

class MainMenu : public GameLoop
{
public:
                MainMenu();
                MainMenu(GameLoop*);
                ~MainMenu();

public:
    void        setup()             override;
    GameLoop*   loop()              override;

public:
    void        readInput()         override;
    void        setupInput()        override;

public:
    void        updateAllSprites()  override;

private:
    GameLoop*           _mainGame   = nullptr;

private:
    ControllerInput*    _inputOne   = nullptr;
    ControllerInput*    _inputTwo   = nullptr;

    ControllerInput::BUTTON _butOne = ControllerInput::BTN_NOPE;
    ControllerInput::BUTTON _butTwo = ControllerInput::BTN_NOPE;
};