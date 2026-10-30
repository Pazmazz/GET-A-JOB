timer_seconds -= 1;
if (timer_seconds <= 0) {
	if(global.carts_returned < global.win_condition){
		room_goto(rm_game_over_fired);
	} else {
		room_goto(rm_success);
	}
}
alarm[0] = game_get_speed(gamespeed_fps);

