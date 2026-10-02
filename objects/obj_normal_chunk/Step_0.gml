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