if (instance_exists(obj_player)) {
    if (mp_grid_path(global.mp_grid, my_path, x, y, obj_player.x, obj_player.y, true)) {
        path_start(my_path, walk_speed, path_action_stop, false);
    }
}