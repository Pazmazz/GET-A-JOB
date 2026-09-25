if (instance_exists(obj_player)){
	var dist = point_distance(x, y, obj_player.x, obj_player.y);
	
	// If the player is in the detection range, chase them. If not, go into random wander mode
	if (dist < detect_range){
		log("Player exist and is close enough to be followed");
	    if (mp_grid_path(global.mp_grid, path_to_player, x, y, obj_player.x, obj_player.y, true)){
			log("Path to player found!");
	        path_start(path_to_player, walk_speed, path_action_stop, false);
	    } else {
			log("No path found");
		}
	} else {
		path_end(); // End path if there is one
		
		// Pick a number 0 through 1. 0 Means stand still. 1 means to wander.
		var choice = random(1); 
		if (choice < 0.6) {
			// Stand still
			log("[Game Master] Customer standing still");
			speed = 0;
			alarm[0] = 600;
		} else {
			// Wander in a random direction
			target_x = random_range(x - 100, x + 100);
			target_y = random_range(y - 100, y + 100);
			log("[Game Master] Customer moving to " + string(target_x) + ", " + string(target_y));
	
			mp_potential_step(target_x, target_y, walk_speed, true);
			alarm[0] = 600;
		}
	}
}

alarm[0] = 10;