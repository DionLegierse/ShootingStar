
class Vector2
{
public:
	Vector2();
	Vector2(int, int);
	Vector2(const Vector2 &);
	virtual ~Vector2();

public:
	Vector2 operator+(const Vector2&) 	const;
	Vector2 operator-(const Vector2&) 	const;
	Vector2 operator*(const Vector2&) 	const;
	Vector2 operator*(int) 				const;
	Vector2 operator/(const Vector2&) 	const;
	Vector2 operator/(int) 				const;

public:
	int distance;
	int angle;
	int x;
	int y;
};
