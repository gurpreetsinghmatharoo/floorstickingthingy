
function CheckGround(_vector2){
	var _addX = _vector2.x;
	var _addY = _vector2.y;
	
	var _x1 = bbox_left + _addX;
	var _y1 = bbox_top + _addY;
	var _x2 = bbox_right + _addX;
	var _y2 = bbox_bottom + _addY;
	
	return tilemap_get_at_pixel(global.colTiles, _x1, _y1)
		|| tilemap_get_at_pixel(global.colTiles, _x2, _y1)
		|| tilemap_get_at_pixel(global.colTiles, _x2, _y2)
		|| tilemap_get_at_pixel(global.colTiles, _x1, _y2);
}

function CheckGroundPoint(_vector2){
	var _x = _vector2.x;
	var _y = _vector2.y;
	
	return tilemap_get_at_pixel(global.colTiles, _x, _y);
}