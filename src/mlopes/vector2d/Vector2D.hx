package mlopes.vector2d;


class Vector2D
{
	public var x:Float;
	public var y:Float;

	public function new(initialX:Float, initialY:Float){
		x = initialX;
		y = initialY;
	}

	public function add(vector:Vector2D):Void
	{
		x = x + vector.x;
		y = y + vector.y;
	}

	public function subtract(vector:Vector2D):Void
	{
		x = x - vector.x;
		y = y - vector.y;
	}

	public function multiply(multiplier:Float):Void
	{
		x = x * multiplier;
		y = y * multiplier;
	}

	public function divide(divisor:Float):Void
	{
		x = x / divisor;
		y = y / divisor;
	}

	public function dot_product(vector:Vector2D):Float
	{
		 return (x * vector.x) + (y * vector.y);
	}

	public function angle_between(vector:Vector2D):Float
	{
		return Math.acos(dot_product(vector) / (magnitude() * vector.magnitude()));
	}

	public function magnitude():Float
	{
		return Math.sqrt(((x * x) + (y * y)));
	}

	public function normalise():Void
	{
		var vectorMagnitude:Float = magnitude();
		if(vectorMagnitude != 0) {
			divide(vectorMagnitude);
		}
	}

	public function normalize(arguments):Void
	{
		normalise();
	}
}