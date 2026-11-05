object_tag = CHUNK;

spawn_corrds = get_spawn_pos();

// Generate the cart station
cart_station_inst = instance_create_layer(x + 256, y + 256, "Carts", obj_cart_station);

if (x > spawn_corrds[0]){
	cart_station_inst.flip_sprite = true;
}

instance_create_layer(x + 64, y + 192, "Carts", obj_map_cart);
instance_create_layer(x + 160, y + 192, "Carts", obj_map_cart);
instance_create_layer(x + 256, y + 192, "Carts", obj_map_cart);
instance_create_layer(x + 352, y + 192, "Carts", obj_map_cart);
instance_create_layer(x + 448, y + 192, "Carts", obj_map_cart);

instance_create_layer(x + 64, y + 384, "Carts", obj_map_cart);
instance_create_layer(x + 160, y + 384, "Carts", obj_map_cart);
instance_create_layer(x + 256, y + 384, "Carts", obj_map_cart);
instance_create_layer(x + 352, y + 384, "Carts", obj_map_cart);
instance_create_layer(x + 448, y + 384, "Carts", obj_map_cart);

global.total_carts += 10;