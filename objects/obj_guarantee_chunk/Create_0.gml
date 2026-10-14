object_tag = CHUNK;

// Generate the cart station
instance_create_layer(x, y, "Carts", obj_cart_station);

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