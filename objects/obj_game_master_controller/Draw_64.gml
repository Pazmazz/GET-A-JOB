var total_secs = timer_seconds;
var mins = floor(total_secs / 60);
var secs = total_secs % 60;

var _timer_string = string_replace_all(string(mins), " ", "0") + ":" + string_replace_all(string_format(secs, 2, 0), " ", "0");

if (!global.debug){
	// Draw completion meter
	draw_set_colour(c_green);
	draw_text(20, 30, "Carts Returned");
	draw_healthbar(20, 50, 180, 70, (global.carts_returned / global.total_carts) * 100, c_black, c_lime, c_green, 0, true, true);
	draw_text(190, 50, string((global.carts_returned / global.total_carts) * 100) + "%");

	// Draws boss anger meter
	draw_set_colour(c_red);
	draw_text(20, 80, "Boss Anger Meter");
	draw_healthbar(20, 100, 180, 120, (global.boss_anger / max_boss_meter) * 100, c_black, c_red, c_red, 0, true, true);
	draw_text(190, 100, string((global.boss_anger / max_boss_meter) * 100) + "%");

	draw_set_colour(c_blue);
	draw_text(20, 130, "Time Remaining: " + _timer_string);
	
	draw_set_colour(c_white);
}
