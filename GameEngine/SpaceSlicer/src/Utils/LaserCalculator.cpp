#include <iostream>

#include "LaserCalculator.h"

#include "Utils/Vector2.h"

LaserCalculator::LaserCalculator()
{
}


LaserCalculator::~LaserCalculator()
{
}

const std::vector<Vector2>& LaserCalculator::calculateLaser(Vector2 player1Coord, Vector2 player2Coord)
{
	static std::vector<Vector2> laserparts;

	laserparts.clear();

	//Calculate the gradient of the line between the two points
	float a = getPlayerDistance(player1Coord, player2Coord).getGradient();
	//Calculate the Y starting position of the line between the two points;
	float b = (float)player1Coord.getY() - (a * (float)player1Coord.getX());
	
	std::pair<Vector2, Vector2> sorted = sortTwoVectorsX(player1Coord, player2Coord);
	
	//calculate the freespace margin
	unsigned freeSpace = round((sorted.second.getX() - sorted.second.getY()) / SPRITE_SIZE);

	for (unsigned i = sorted.first.getX() + SPRITE_SIZE + freeSpace ; 
		i < sorted.second.getX() - SPRITE_SIZE; 
		i += SPRITE_SIZE)
	{
		laserparts.push_back(Vector2(i, (i * a) + b));
	}

	return const_cast<std::vector<Vector2>&>(laserparts);
}

Vector2 LaserCalculator::getPlayerDistance(Vector2 player1Coord, Vector2 player2Coord)
{
	if (player1Coord.getX() <= player2Coord.getX())
	{
		return player1Coord - player2Coord;
	}
	else {
		return player2Coord - player1Coord;
	}
}

std::pair<Vector2, Vector2> LaserCalculator::sortTwoVectorsX(Vector2 a, Vector2 b)
{
	if (a.getX() < b.getX()) {
		return std::pair<Vector2, Vector2>(a, b);
	}
	else {
		return std::pair<Vector2, Vector2>(b, a);
	}
}