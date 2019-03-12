#include "Entity.h"
#include "GameLoop.h"
#include "CollisionHandler.h"

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
    CollisionHandler*   _collision;
};