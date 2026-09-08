if (global.debug){
	draw_set_colour(c_red);
	draw_text(10, 10, "DEBUG mode ENABLED");
	draw_text(10, 25, "Current cart stack: " + string(global.cart_stack));
	draw_text(10, 40, "Current position(X,Y) " + string(obj_player.x) + ", " + string(obj_player.y));
	draw_text(10, 55, "Total cart amount: " + string(total_carts));
	draw_text(10, 70, "Carts returned: " + string(global.carts_returned));
	draw_text(10, 85, "Win condition: " + string(win_condition));
	draw_text(10, 100, "Current boss anger: " + string(global.boss_anger));
	if (instance_exists(obj_moving_car)) 
		draw_text(10, 115, "Moving car current position(X,Y) " + string(obj_moving_car.x) + ", " + string(obj_moving_car.y));
}