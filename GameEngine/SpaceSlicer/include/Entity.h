#pragma once
#include "Vector2.h"

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
};