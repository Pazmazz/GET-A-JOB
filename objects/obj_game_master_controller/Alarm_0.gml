timer_seconds -= 1;
if (timer_seconds <= 0) {
	room_goto(rm_game_over_fired);
}
alarm[0] = game_get_speed(gamespeed_fps);