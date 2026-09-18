if (instance_exists(obj_player)){
	var dist = point_distance(x, y, obj_player.x, obj_player.y);
	if (dist < detect_range){
		log("Player exist and is close enough to be followed");
	    if (mp_grid_path(global.mp_grid, path_to_player, x, y, obj_player.x, obj_player.y, true)){
			log("Path to player found!");
	        path_start(path_to_player, walk_speed, path_action_stop, false);
	    } else {
			log("No path found");
		}
	} else {
		path_end();
	}
}

alarm[0] = 10;