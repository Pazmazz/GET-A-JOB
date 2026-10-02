var dist = point_distance(x, y, obj_player.x, obj_player.y);

if (is_moving && instance_exists(obj_player) && dist < detect_range) {
    is_moving = false;
    alarm[0] = 1;
}


if (is_moving) {
    var old_x = x;
    var old_y = y;

    mp_potential_step(target_x, target_y, walk_speed, true);

    var arrived = point_distance(x, y, target_x, target_y) <= walk_speed;

    if (x == old_x && y == old_y){
		stuck_timer++;
	} else {
		stuck_timer = 0;
	}

    if (arrived || stuck_timer > 10) {
        is_moving = false;
        alarm[0] = 10;
    }
}