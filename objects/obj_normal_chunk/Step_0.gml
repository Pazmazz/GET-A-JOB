// Check how far the player is from this chunk
var dist_from_player = get_player_dist_from_chunk(origin_x, origin_y); 

// Spawn carts on initalization
if (!carts_spawned){
	switch (count){
		case 0: break;
		case 1: 
			instance_create_layer(x + 256, y + 156, "Carts", obj_map_cart);
			carts_spawned = true;
		break;
	
		case 2:
			instance_create_layer(x + 128, y + 128, "Carts", obj_map_cart);
			instance_create_layer(x + 384, y + 384, "Carts", obj_map_cart);
			carts_spawned = true;
		break;
	
		case 3:
			instance_create_layer(x + 256, y + 320, "Carts", obj_map_cart);
			instance_create_layer(x + 384, y + 384, "Carts", obj_map_cart);
			instance_create_layer(x + 64, y + 128, "Carts", obj_map_cart);
			carts_spawned = true;
		break;
	}
}

if (dist_from_player <= 1000 && can_reload){ // Only run this block when chunk is first loaded
	first_load = true;
} else if (dist_from_player > 1000){ // Run when the player moves far enough way to unload this chunk
	loaded = false;
	stay_loaded = false;
	can_spawn_customer = false;
	sprite_index = spr_normal_chunk;
	
	// Despawn any customer that is on an unloaded chunk
	var inst = instance_place(x, y, obj_customer);
	if (inst != noone){
		instance_destroy(inst);
	}
	
	can_reload = true;
}

// When the chunk is first loaded in, initialize these variables
if (first_load){
	loaded = true;
	can_spawn_customer = true;
	sprite_index = spr_loaded_chunk_test;
	stay_loaded = true;
	can_reload = false;
	first_load = false;
}

// Keep the chunk loaded, but don't update any variables
if (stay_loaded){
	loaded = true;
	sprite_index = spr_loaded_chunk_test;
}

// Random chance to spawn a customer if the chunk is loaded in
if (loaded && can_spawn_customer){
	var chance = random(1);
	
	// 10% chance for a customer to spawn in
	if (chance > 0.9){
		var customer = spawn_customer_in_chunk();
		instance_create_layer(origin_x, origin_y, "Entity", customer);
		log("[Game Master] Customer is spawned");
	}
	
	can_spawn_customer = false;
}