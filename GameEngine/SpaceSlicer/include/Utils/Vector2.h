#pragma once
#include <iostream>

class Vector2
{
public:
	Vector2();
	Vector2(int, int);
	Vector2(const Vector2 &);
	virtual ~Vector2();

public:
	Vector2 operator+(const Vector2&) 	const;
	Vector2 operator+=(const Vector2&);
	Vector2 operator-(const Vector2&) 	const;
	Vector2 operator*(const Vector2&) 	const;
	Vector2 operator*(int) 				const;
	Vector2 operator/(const Vector2&) 	const;
	Vector2 operator/(int) 				const;

public:
	void setX(int);
	void setY(int);
	int getX();
	int getY();

	int getAngle(Vector2& begin, Vector2& end);
	int getDistance(Vector2& other);

	void print();

private:
	int x;
	int y;
};
