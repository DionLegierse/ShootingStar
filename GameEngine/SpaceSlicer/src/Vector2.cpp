#include <cmath>
#include "Vector2.h"

Vector2::Vector2()
{
	this->x = 0;
	this->y = 0;
}

Vector2::Vector2(int x, int y)
{
	this->x = x;
	this->y = y;
}

Vector2::Vector2(const Vector2& obj)
{
	distance = obj.distance;
	angle = obj.angle;
	this->x = obj.x;
	this->y = obj.y;
}

Vector2::~Vector2()
{
}

Vector2 Vector2::operator+(const Vector2& v) const
{
	Vector2 coord;
	coord.x = this->x + v.x;
	coord.y = this->y + v.y;
	return coord;
}

Vector2 Vector2::operator-(const Vector2& v) const
{
	Vector2 coord;
	coord.x = this->x - v.x;
	coord.y = this->y - v.y;
	return coord;
}

Vector2 Vector2::operator*(const Vector2& v) const
{
	Vector2 coord;
	coord.x = this->x * v.x;
	coord.y = this->y * v.y;
	return coord;
}

Vector2 Vector2::operator*(int v) const
{
	Vector2 coord;
	coord.x = this->x * v;
	coord.y = this->y * v;
	return coord;
}

Vector2 Vector2::operator/(const Vector2& v) const
{
	Vector2 coord;
	coord.x = this->x / v.x;
	coord.y = this->y / v.y;
	return coord;
}

Vector2 Vector2::operator/(int v) const
{
	Vector2 coord;
	coord.x = this->x / v;
	coord.y = this->y / v;
	return coord;
}
