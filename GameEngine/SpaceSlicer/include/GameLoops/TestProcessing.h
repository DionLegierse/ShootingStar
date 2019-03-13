#include <stdio.h>

#include "Entity/Entity.h"
#include "Entity/Astroid.h"

class TestProcessing
{
public:
            TestProcessing();
            ~TestProcessing();

public:
    void    setup();
    void    loop();

private:
    void    addEntity(Entity*);
    void    moveEntity(int);
    void    removeEntity(int);

private:
    void    serialPrint(int);

private:
    Entity* _entities[100];
    int     _count  = 0;
};