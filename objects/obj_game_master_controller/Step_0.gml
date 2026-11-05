// Once all chunks are ready, begin the game
if (global.can_start_game && !initialization_over){
	log("[Game Master] The game can be started");
	global.win_condition = get_win_amount();
	initialization_over = true;
}

// If the BAM reaches 100%, GAME OVER
if (global.boss_anger >= 100){
  	room_goto(rm_game_over_fired);
}

// If you get in all the carts before the timer runs out, you WIN!
if (global.carts_returned >= global.total_carts && initialization_over){
	room_goto(rm_success);
}