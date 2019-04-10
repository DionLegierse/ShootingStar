#pragma once

#include <vector>

#define INFINITE_GRADIENT_ALTENATIVE (float)(148)

class Vector2;

namespace LaserCalculator
{
	std::vector<Vector2>& calculateLaser(Vector2, Vector2);

	static const unsigned SPRITE_SIZE = 8;

};

