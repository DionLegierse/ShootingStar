#include "Entity/Entity.h"
#include "GameLoop.h"
#include "Handlers/CollisionHandler.h"
#include "Handlers/ControllerInput.h"
#include "freertos/task.h"

#define STATE_MAIN_MENU 0
#define STATE_MAIN_GAME 1

class MainGame : public GameLoop
{
public:
                MainGame();
                ~MainGame();

public:
    void        setup()     override;
    void        loop()      override;
    void        GameOver()  override;

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
    void        removeNPCList();

private:
    void        updateListSprites(uint8_t);
    void        updateListPositions(uint8_t);

private:
    bool        checkOverlay(uint8_t, int);

private:
    static bool         _isGamePlaying;

private:
    uint8_t*            _scoreboard = nullptr;

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