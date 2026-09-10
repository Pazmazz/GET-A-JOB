// Basic movement
if (keyboard_check(ord("A"))){
	x -= walk_speed; // Move to the left
	direction = 180;
}
if (keyboard_check(ord("D"))){
	x += walk_speed; // Move to the right
	direction = 0;
}
if (keyboard_check(ord("W"))){
	y -= walk_speed; // Move up
	direction = 90;
}
if (keyboard_check(ord("S"))){
	y += walk_speed; // Move down
	direction = 270;
}

// Variables for collision line
_x1 = x;
_y1 = y;
_x2 = x + lengthdir_x(80, direction);
_y2 = y + lengthdir_y(80, direction);

hit = collision_line(_x1, _y1, _x2, _y2, obj_cart, 1, 0);

if (keyboard_check_pressed(vk_space)){
	var interactable_parent = obj_cart;
	var player = id;
	
	if (hit){
		with (hit){
			if(!attached && global.cart_stack <= 4){
				attached = true;
				player_instance = player;
				global.cart_stack++;
				offset_y = make_negative(-30 + global.cart_stack * 50);
			}
		}
	}
}