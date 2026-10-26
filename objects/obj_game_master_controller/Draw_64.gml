if (!global.debug){
	// Draw completion meter
	draw_set_colour(c_green);
	draw_text(20, 30, "Carts Returned");
	draw_healthbar(20, 50, 180, 70, (global.carts_returned / total_carts) * 100, c_black, c_black, c_lime, 0, true, true);
	draw_text(190, 50, string((global.carts_returned / total_carts) * 100) + "%");

	// Draws boss anger meter
	draw_set_colour(c_red);
	draw_text(20, 80, "Boss Anger Meter");
	draw_healthbar(20, 100, 180, 120, (global.boss_anger / max_boss_meter) * 100, c_black, c_red, c_red, 0, true, true);
	draw_text(190, 100, string((global.boss_anger / max_boss_meter) * 100) + "%");

	draw_set_colour(c_white);
}
