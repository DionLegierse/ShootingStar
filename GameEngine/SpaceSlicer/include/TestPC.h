#include "Entity.h"

class TestPC
{
public:
            TestPC();
            ~TestPC();

public:
    void    setup();
    void    loop();

private:
    void    addEntity(Entity*, Vector2);
    void    moveEntity(int);
    void    removeEntity(int);

private:
    void    serialPrint(int);

private:
    Entity* _entities[100];
    int     _count  = 0;
};