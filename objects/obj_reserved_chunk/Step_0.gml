if (!chunk_objects_created){
	switch(reserve_chunk_type){
		case "Parking":
			instance_create_layer(x + 256, y + 128, "Cars", obj_car);
			instance_create_layer(x + 256, y + 384, "Cars", obj_car);
			chunk_objects_created = true;
		break;
		
		case "Return":
			instance_create_layer(x, y, "Cars", obj_cart_return);
			chunk_objects_created = true;
		break;
	}
}