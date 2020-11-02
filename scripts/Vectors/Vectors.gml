function Vector2 (_x, _y) constructor {
	x = _x;
	y = _y;
	
	static MultiplyReal = function (_val) {
		return new Vector2(_val * x, _val * y);
	}
	
	static Set = function (_vector2) {
		x = _vector2.x;
		y = _vector2.y;
	}
	
	static AddVector2 = function (_vector2) {
		return new Vector2(x + _vector2.x , y + _vector2.y);
	}
	
	static SubtractVector2 = function (_vector2) {
		return new Vector2(x - _vector2.x , y - _vector2.y);
	}
	
	static ApplyPosition = function (_inst) {
		_inst.x += x;
		_inst.y += y;
	}
	
	static GetAngle = function () {
		return point_direction(0, 0, x, y);
	}
}