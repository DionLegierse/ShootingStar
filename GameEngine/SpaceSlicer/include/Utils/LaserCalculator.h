#pragma once

#include <vector>

class Vector2;

namespace LaserCalculator
{
	std::vector<Vector2>& calculateLaser(Vector2, Vector2);

	static const unsigned SPRITE_SIZE = 8;

};

