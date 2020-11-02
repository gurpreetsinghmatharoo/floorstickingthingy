/// @description 
draw_self();

var _l = 50;

draw_set_color(c_red);
draw_arrow(x, y, x + movementVector.x * _l, y + movementVector.y * _l, 24);

draw_set_color(c_blue);
draw_arrow(x, y, x + gravityVector.x * _l, y + gravityVector.y * _l, 10);
draw_set_color(c_white);