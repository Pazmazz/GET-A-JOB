initialization_over = false;

// Keep track of how many carts the player is carrying
global.cart_stack = [];

// Cart related variables
total_carts = 0;
global.carts_returned = 0;
win_condition = 0;

// Boss meter related variables
init_boss_meter();
max_boss_meter = 100;

// Initialize the round count
init_round_count();

timer_seconds = 120;
alarm[0] = ROOM_SPEED;