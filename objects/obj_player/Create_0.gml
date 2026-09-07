object_tag = PLAYER;

// Base movement speed 
walk_speed = 6;

// Variables for collision line
_x1 = x;
_y1 = y;
_x2 = x + lengthdir_x(80, direction);
_y2 = y + lengthdir_y(80, direction);

hit = collision_line(_x1, _y1, _x2, _y2, obj_cart, 1, 0);