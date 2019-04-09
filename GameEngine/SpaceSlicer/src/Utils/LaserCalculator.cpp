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

	int limit = 0;

	if (sorted.second.getX() >= 8) {
		limit = sorted.second.getY() - 8;
	}else{
		limit = sorted.second.getY();
	}

	for(int i = sorted.first.getY() + (LaserCalculator::SPRITE_SIZE * 2);
		i < limit;
		i += LaserCalculator::SPRITE_SIZE ){

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

	int limit = 0;

	if (sorted.second.getX() >= 8) {
		limit = sorted.second.getX() - 8;
	}else{
		limit = sorted.second.getX();
	}
	
	for(int i = sorted.first.getX() + (LaserCalculator::SPRITE_SIZE * 2); 
		i < limit; 
		i += LaserCalculator::SPRITE_SIZE ){
		laserparts.push_back(Vector2(
			i,
			(int)((a * i) + b)
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

	printf("%f\n",a);

	if(std::isinf(a)){
		laserparts = getLaserCoordsByY(player1Coord, player2Coord, INFINITE_GRADIENT_ALTENATIVE, b);
	}else if(a < -1.f && !std::isinf(a)){
		laserparts = getLaserCoordsByY(player1Coord, player2Coord, a, b);
	}else if(a < 1.f){
		laserparts = getLaserCoordsByX(player1Coord, player2Coord, a, b);
	}else if(a == 1.f){
		laserparts = getLaserCoordsByX(player1Coord, player2Coord, a, b);
	}else if(a > 1.f){
		laserparts = getLaserCoordsByY(player1Coord, player2Coord, a, b);
	}

	return laserparts;
}



