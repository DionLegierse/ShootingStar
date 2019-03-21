#pragma once
#include "Utils/Vector2.h"

#define ENT_ASTROID 0
#define ENT_BLOOP   1
#define ENT_FUEL    2
#define ENT_PLAYER  3


class Entity
{
// Constructors/Destructor
public:
                    Entity();
                    ~Entity();

protected:
                    Entity(int);
                    Entity(int, Vector2);

// Position methods
public:
    void            setPosition(Vector2);
    Vector2&        getPosition();

// Collision methods
public:
    bool            checkCollision(Entity*);
    int             getColliderRadius();
    virtual void    collisionEvent() = 0;

// Virtual methods
public:
    virtual void    move();

// Type methods
public:
    uint8_t         getType();

// Movement variables
protected:
    Vector2         _position;
    int             _speed;

// Collider variables
protected:
    int             _colliderRadius;
    int             _colliderTag;

// Sprite variables
private:
    int             _spriteAddr;
    int             _spriteSize;

// Entity type
protected:
    uint8_t         _type;
};