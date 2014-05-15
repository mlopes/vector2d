package mlopes.vector2d;


class Vector2D
{
	public var x(get,set) : Int;
	public var y(get,set) : Int;

	public function new(initialX:Int, initialY){
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

	public function multiply(multiplier:Int):Void
	{
		x = x * multiplier;
		y = y * multiplier;
	}

	public function divide(divisor:Int):Void
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
		var vectorMagnitude:Float = mag;
		if(vectorMagnitude != 0) {
			divide(vectorMagnitude);
		}
	}

	public function normalize(arguments):Void
	{
		normalise();
	}

	public function get_x():Int
	{
		return x;
	}

	public function set_x(value):Void
	{
		x = value;
	}

	public function get_y():Int
	{
		return y;
	}

	public function set_y(value):Void
	{
		y = value;
	}
}