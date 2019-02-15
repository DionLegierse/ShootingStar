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
	this->x = obj.x;
	this->y = obj.y;
}

Vector2::~Vector2()
{
}

void Vector2::setX(int aX)
{
 	x = aX;
}
void Vector2::setX(int aY)
{
 	y = aY;
}

int Vector2::getX()
{
 	return x;
}

int Vector2::getY()
{
 	return y;
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

int Vector2::getAngle(Vector2& begin, Vector2& end)
{
	int difX = end.getX() - begin.getX();
	int difY = end.getY() - begin.getY();

	return atan2( difY, difX);
}

int Vector2::getDistance(Vector2& other)
{
	int difX = other.getX - this->x;
	int difY = other.getY - this->y;

	return sqrt( pow(difX, 2 ) + pow( difY, 2 ));
}