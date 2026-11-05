if (is_moving) exit;

if (instance_exists(obj_player)){
	var dist = point_distance(x, y, obj_player.x, obj_player.y);
	
	// If the player is in the detection range, chase them. If not, go into random wander mode
	if (dist < detect_range){
	    if (mp_grid_path(global.mp_grid, path_to_player, x, y, obj_player.x, obj_player.y, true)){
	        path_start(path_to_player, walk_speed, path_action_stop, false);
	    }
	} else {
		path_end(); // End path if one exist
		
		// Pick a number 0 through 1. 0 Means stand still. 1 means to wander.
		var choice = random(1); 
		if (choice < 0.6) {
			// Stand still
			speed = 0;
			alarm[0] = 600;
		} else {
			// Wander in a random direction
			var target_pos = random_direction();
			
			target_x = target_pos[0];
			target_y = target_pos[1];
			
			is_moving = true;
			stuck_timer = 0;
		}
	}
}

alarm[0] = 10;