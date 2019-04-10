#include <vector>
#include <utility>
#include <string>

#include "Entity/Entity.h"
#include "GameLoop.h"
#include "Handlers/CollisionHandler.h"
#include "Handlers/ControllerInput.h"
#include "freertos/task.h"

class MainGame : public GameLoop
{
public:
                MainGame();
    virtual     ~MainGame();

public:
    void        setup()     override;
    void        loop()      override;

private:
    enum GAMESTATE {GAME, MENU, ENDSCREEN};
    GAMESTATE _state;

private:
    GAMESTATE   gameloop();
    GAMESTATE   menuloop();
    GAMESTATE   endloop();

private:
    bool _isMenuDrawn;

public:
    void        setupInput() override;
    void        readInput() override;

public:
    void        updateAllSprites() override;

private:
    void        updateNPC();

private:
    void        updateScoreBoard();

private:
    void        getRandomNPC();

private:
    void        updateListSprites(uint8_t);
    void        updateListPositions(uint8_t);

private:
    uint16_t            _scoreboard;

private:
    CollisionHandler*   _collision  = nullptr;
    ControllerInput*    _inputPlayerOne;
    ControllerInput*    _inputPlayerTwo;

private:
    ControllerInput::STICK* _stickPlayerOne;
    ControllerInput::STICK* _stickPlayerTwo;

    ControllerInput::BUTTON*    _buttonPlayerOne;
    ControllerInput::BUTTON*    _buttonPlayerTwo;
};