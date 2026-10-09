function get_player_dist_from_chunk(orig_x, orig_y){
	if (!instance_exists(obj_player)) return -1;
	
	return point_distance(orig_x, orig_y, obj_player.x, obj_player.y);
}

function spawn_customer_in_chunk(){
	var customer_table = [
		obj_anxious_customer,
		obj_normal_customer,
		obj_direct_customer
	];
	
	var p0 = binomial_probability(3, 0, 0.50);
	var p1 = binomial_probability(3, 1, 0.50);
	var p2 = binomial_probability(3, 2, 0.50);
	var p3 = binomial_probability(3, 3, 0.50);
	
	var cdf0 = p0;
	var cdf1 = cdf0 + p1;
	var cdf2 = cdf1 + p2;
	var cdf3 = cdf2 + p3;
	
	var roll = random(1);
	
	if (roll < cdf0){
		return customer_table[1];
	} else if (roll < cdf1){
		return customer_table[0];
	} else if (roll < cdf2){
		return customer_table[1];
	} else {
		return customer_table[2];
	}
}

