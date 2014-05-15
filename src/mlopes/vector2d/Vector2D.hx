package mlopes.vector2d;


class Vector2D
{
	public var x(get,set) : Float;
	public var y(get,set) : Float;

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

	public function get_x():Float
	{
		return x;
	}

	public function set_x(value):Void
	{
		x = value;
	}

	public function get_y():Float
	{
		return y;
	}

	public function set_y(value):Void
	{
		y = value;
	}
}