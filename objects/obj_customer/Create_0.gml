path_to_player = path_add();
walk_speed = 0;
detect_range = 0;
walk_length = 100;
is_moving = false;
stuck_timer = 0;

target_x = x;
target_y = y;

alarm[0] = 1;

function random_direction(){
	var choice1 = irandom(10); // Roll a number to determine if the customer wonders in the x or y direction
	var choice2 = irandom(10); // Roll a number to determine if the customer moves in a negative or pissive direction
	
	if (choice1 <= 5){
		if (choice2 <= 5){
			target_x = x + walk_length;
			target_y = y;
		} else {
			target_x = x - walk_length;
			target_y = y;
		}
	} else {
		if (choice2 <= 5){
			target_x = x;
			target_y = y + walk_length;
		} else {
			target_x = x;
			target_y = y - walk_length;
		}
	}
	
	return [target_x, target_y];
	
	//var dir = [0, 90, 180, 270];
	//return [lengthdir_x(walk_length, irandom(array_length(dir - 1))), lengthdir_y(walk_length, irandom(array_length(dir - 1)))]
}

