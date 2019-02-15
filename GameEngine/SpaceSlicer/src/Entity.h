#include "Vector2.h"

class Entity
{
// Constructors/Destructor
public:
            Entity();
            ~Entity();

protected:
            Entity(int);

// Position methods
public:
    void    setPosition(Vector2);
    Vector2 getPosition();

// Collision methods
public:
    bool    checkCollision(Entity*);

// Virtual methods
public:
    virtual void    move();

// Movement variables
private:
    Vector2 _position;
    int     _speed;

// Collider variables
private:
    int     _colliderRadius;
    int     _colliderTag;

// Sprite variables
private:
    int     _spriteAddr;
    int     _spriteSize;
};