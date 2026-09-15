// Cart stack number
var cart_stack_num = array_length(global.cart_stack);

// Update speed related variables in real time
var speed_multiplier = 1 - (.10 * cart_stack_num); // Markiplier...
speed_multiplier = max(speed_multiplier, 0);
current_speed = base_speed * speed_multiplier;

// Basic movement
if (MOVE_LEFT)){
	x -= current_speed; // Move to the left
	direction = 180;
}
if (MOVE_RIGHT)){
	x += current_speed; // Move to the right
	direction = 0;
}
if (MOVE_UP)){
	y -= current_speed; // Move up
	direction = 90;
}
if (MOVE_DOWN)){
	y += current_speed; // Move down
	direction = 270;
}

// Tracking player movement speed
average_speed = point_distance(previous_x, previous_y, x, y);
previous_x = x;
previous_y = y;

// Variables for collision rectangle
_x1 = x - 50;
_y1 = y - 80;
_x2 = x + 50;
_y2 = y + 20;

inst = collision_rectangle(_x1, _y1, _x2, _y2, obj_map_cart, false, false);

// Interacting with and picking up shopping cart
if (INTERACT_KEY && inst != noone){
	var player = id;
	
	if (cart_stack_num < 5){
		var new_inst = instance_create_layer(inst.x, inst.y, "Carts", obj_cart);
		instance_deactivate_object(inst);
	
		with (new_inst){
			// You can only pick up a cart if you are carrying less 
			// than 5 carts and you are not already carring it
			if(!attached && cart_stack_num < 5){ 
				log("[Game Master] Shopping cart stacked");
				attached = true;
				player_instance = player;
				array_insert(global.cart_stack, cart_stack_num - 1, id);
				offset_y = make_negative(30 + cart_stack_num * 50); // Make the cart visually appear in front of the player
			} else if (cart_stack_num >= 5){
				log("[Game Master] Shopping cart stack is too high!");
			} else {
				log("[Game Master] There are no carts to pick up");
			}
		}
	}
}

// Dismount all carts you are currently carrying
if (DISMOUNT_KEY && cart_stack_num > 0){
	for (var i = 0; i < cart_stack_num; i++){
		var old_inst = global.cart_stack[i];
		var new_inst = instance_create_layer(old_inst.x, old_inst.y, "Carts", obj_map_cart);
		with (old_inst){
			attached = false;
			instance_deactivate_object(id);
			log("[Cart] Cart despawned");
		}
	}
	array_delete(global.cart_stack, 0, 5);
}