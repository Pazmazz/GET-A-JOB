// Decrement timer one second at a time
timer_seconds -= 1;

// When the timer runs out
if (timer_seconds <= 0) {
	// If less than 80% of carts have been collected, GAME OVER
	if(global.carts_returned < global.win_condition){ 
		global.death_reason = "You took too long!";
		room_goto(rm_game_over_fired);
	
	// If more that 80% of carts have been collected, progress but get a 40% pentalty on the BAM
	} else {
		global.boss_anger += 40;
		room_goto(rm_success);
	}
}
alarm[0] = game_get_speed(gamespeed_fps);

