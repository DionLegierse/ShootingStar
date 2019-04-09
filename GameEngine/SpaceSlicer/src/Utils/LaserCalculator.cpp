#include <cmath>
#include <utility>

#include "Utils/LaserCalculator.h"
#include <stdio.h>

#include "Utils/Vector2.h"

std::vector<Vector2> getLaserCoordsByY(Vector2 player1, Vector2 player2, float a, float b){
	std::pair<Vector2, Vector2> sorted;
	std::vector<Vector2> laserparts;
	
	if(player1.getY() > player2.getY()){
		sorted.first = player2;
		sorted.second = player1;
	}else{
		sorted.first = player1;
		sorted.second = player2;
	}

	for( int i = sorted.first.getY(); i < sorted.second.getY(); i += LaserCalculator::SPRITE_SIZE ){
		laserparts.push_back(Vector2(
			(int)((i - b) / a),
			i
		));
	}

	return laserparts;
}

std::vector<Vector2> getLaserCoordsByX(Vector2 player1, Vector2 player2, float a, float b){
	std::pair<Vector2, Vector2> sorted;
	std::vector<Vector2> laserparts;
	
	if(player1.getX() > player2.getX()){
		sorted.first = player2;
		sorted.second = player1;
	}else{
		sorted.first = player1;
		sorted.second = player2;
	}

	for( int i = sorted.first.getX(); i < sorted.second.getX(); i += LaserCalculator::SPRITE_SIZE ){
		laserparts.push_back(Vector2(
			(int)((a * i) + b),
			i
		));
	}

	return laserparts;
}

std::vector<Vector2>& LaserCalculator::calculateLaser(Vector2 player1Coord, Vector2 player2Coord)
{
	static std::vector<Vector2> laserparts;

	laserparts.clear();

	//Calculate the gradient of the line between the two points
	float a = player1Coord.getParallelVector(player2Coord).getGradient();
	//Calculate the Y starting position of the line between the two points;
	float b = (float)player1Coord.getY() - (a * (float)player1Coord.getX());

	if(a < 1.f){
		laserparts = getLaserCoordsByX(player1Coord, player2Coord, a, b);
	}else if(a == 1.f){
		laserparts = getLaserCoordsByX(player1Coord, player2Coord, a, b);
	}else if(a > 1.f){
		laserparts = getLaserCoordsByY(player1Coord, player2Coord, a, b);
	}

	return laserparts;
}



