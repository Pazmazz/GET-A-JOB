// Variables for the grid
cell_size = 64;
grid_width = room_width / cell_size;
grid_height = room_height / cell_size;

global.mp_grid = mp_grid_create(0, 0, grid_width, grid_height, cell_size, cell_size);

mp_grid_add_instances(global.mp_grid, obj_obstacles, false);