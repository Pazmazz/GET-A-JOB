
//if game paused then don't move
if (global.paused) exit;

//Character movements set to WASD

left_key = keyboard_check(ord("A"));
right_key = keyboard_check(ord("D"));
up_key = keyboard_check(ord("W"));
down_key = keyboard_check(ord("S"));
sprint = keyboard_check(vk_shift);
interact = keyboard_check(vk_space);

if (!keyboard_check(vk_space)) interactionReleased = true;

	
if (global.canMove == true) {
	
	//Speed for movement: Allows for character to move left and right (+1 for Right, -1 for Left), (+1 for down, -1 for up)
	xspd = (right_key - left_key) * move_spd;
	yspd = (down_key - up_key) * move_spd;

	//Sprinting
	if sprint == true{
		move_spd = 2;
	}

	else
	{
		move_spd = 1
	}

	//set sprite
	mask_index = sprite[DOWN]

	if yspd == 0 {
		if xspd > 0 {face = RIGHT}
		if xspd < 0 {face = LEFT}
	}
	if xspd > 0 && face == LEFT {face = RIGHT}
	if xspd < 0 && face == RIGHT {face = LEFT}

	if xspd == 0 {
		if yspd < 0 {face = UP}
		if yspd > 0 {face = DOWN}
	}
	if yspd > 0 && face == UP {face = DOWN}
	if yspd < 0 && face == DOWN {face = UP}

	sprite_index = sprite[face];

	//collisions
	if place_meeting(x + xspd, y, obj_wall) {
		xspd = 0;
		}
	
	if place_meeting(x,y + yspd, obj_wall) {
		yspd = 0;
		}

	//Adds x + y spd to default x and y values for player obj
	x += xspd;
	y += yspd;

	//animation 
	if (keyboard_check(vk_nokey)) {
		image_index = 0;
	}

	//update position for npc
	if (x != xprevious or y != yprevious) {
	
		for (var i = array_size - 1; i > 0; i--) {
		
			pos_x[i] = pos_x[i-1];
			pos_y[i] = pos_y[i-1];
		}
	
		pos_x[0] = x;
		pos_y[0] = y;
	}
}
//Depth: allows player to move over objects visually 
depth = -bbox_bottom;