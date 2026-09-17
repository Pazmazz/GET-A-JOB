//log("[Customer] Customer is " + string(distance_to_object(obj_player)) + "px away from the player");
if (instance_exists(obj_player) && distance_to_object(obj_player) < detect_range){
	log("Player exist and is close enough to be followed");
    if (mp_grid_path(global.mp_grid, path_to_player, x, y, obj_player.x, obj_player.y, true)){
		log("Path to player found!");
        path_start(path_to_player, walk_speed, path_action_stop, false);
    } else {
		log("No path found");
	}
}

alarm[0] = 10;