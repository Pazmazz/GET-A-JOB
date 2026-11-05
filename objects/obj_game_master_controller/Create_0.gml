// Variable for keeping track of intitialization at the beginning of each round
initialization_over = false; 

// Keep track of how many carts the player is carrying
global.cart_stack = [];

// Cart related variables
total_carts = 0;
global.carts_returned = 0;
global.win_condition = 0;

// Boss meter related variables
max_boss_meter = 100;

// Initialize the round count
global.round_count++;

end_round = false;

if (global.round_count < 5){
	// 3:30 minute timer for rounds 1-4
	timer_seconds = 210; 
} else if (global.round_count >= 5 && global.round_count < 10){
	// 3 minute timer for rounds 5-9
	timer_seconds = 180; 
} else {
	// 3:30 minute timer for rounds 10 and beyond
	timer_seconds = 150; 
}
alarm[0] = ROOM_SPEED; // Begin timer