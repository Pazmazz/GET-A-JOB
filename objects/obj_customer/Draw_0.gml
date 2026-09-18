draw_self();

if (global.debug){
	if (mp_grid_path(global.mp_grid, path_to_player, x, y, obj_player.x, obj_player.y, true)) {
		draw_set_colour(c_blue);
		draw_path(path_to_player, x, y, false);
	}
	draw_set_colour(c_blue);
	draw_set_alpha(0.3);
	draw_circle(x, y, detect_range, true);
}

// Reset draw
draw_set_alpha(1);
draw_set_colour(c_white);