if (global.can_start_game && !initialization_over){
	log("[Game Master] The game can be started");
	total_carts = get_cart_amount();
	win_condition = get_win_amount();
	initialization_over = true;
}

if (global.boss_anger >= 100){
	room_goto(rm_game_over_fired);
}