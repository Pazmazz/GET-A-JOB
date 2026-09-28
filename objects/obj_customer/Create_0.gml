path_to_player = path_add();
walk_speed = 3;
detect_range = 300;

target_x = x;
target_y = y;

alarm[0] = 1;

function random_direction(){
	var choice = random(1);
	
	if (choice == 1){
		target_x = random_range(x - 500, x + 500);
		target_y = y;
	} else {
		target_x = x;
		target_y = random_range(y - 500, y + 500);
	}
	
	return [target_x, target_y];
}

