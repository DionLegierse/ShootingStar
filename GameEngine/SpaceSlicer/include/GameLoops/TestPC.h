#include "Entity/Entity.h"
#include "GameLoop.h"
#include "Handlers/CollisionHandler.h"

class TestPC : public GameLoop
{
public:
            TestPC();
            ~TestPC();

public:
    void    setup() override;
    void    loop()  override;

private:
    void    updateNPC();

private:
    void    updateAllSprites();

private:
    CollisionHandler*   _collision  = nullptr;
};