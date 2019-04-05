#pragma once

#include <cstdlib>
#include <utility>
#include <vector>

class Vector2;

class LaserCalculator
{
public:
	LaserCalculator();
	virtual ~LaserCalculator();

	static const std::vector<Vector2>& calculateLaser(Vector2, Vector2);

private:

	static Vector2 getPlayerDistance(Vector2, Vector2);
	static std::pair<Vector2, Vector2> sortTwoVectorsX(Vector2, Vector2);
	 

	static const unsigned SPRITE_SIZE = 8;
};

