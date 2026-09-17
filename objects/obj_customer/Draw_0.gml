draw_self();

if (mp_grid_path(global.mp_grid, path_to_player, x, y, obj_player.x, obj_player.y, true)) {
	draw_path(path_to_player, x, y, false);
}