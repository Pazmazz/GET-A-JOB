var dist = point_distance(x, y, obj_player.x, obj_player.y);

// If the player enters detection range during wander mode, chase the player
if (is_moving && instance_exists(obj_player) && dist < detect_range) {
    is_moving = false;
    alarm[0] = 1;
}

// While the NPC is moving during wander mode
if (is_moving) {
    var old_x = x;
    var old_y = y;

    mp_potential_step(target_x, target_y, walk_speed, true);

    var arrived = point_distance(x, y, target_x, target_y) <= walk_speed;
	
	// Start the stuck timer of the NPC hasn't moved in a while
    if (x == old_x && y == old_y){
		stuck_timer++;
	} else {
		stuck_timer = 0;
	}

	// Restart wander cycle 
    if (arrived || stuck_timer > 10) {
        is_moving = false;
        alarm[0] = 10;
    }
}