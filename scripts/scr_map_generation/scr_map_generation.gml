/**
*@function Get the world spawn X and Y and returns it as an array. X is array position 0 and Y is array position 1.
*/
function get_spawn_pos(){
	if (!instance_exists(obj_spawn_marker)) return;
	
	var spawn_marker_x = obj_spawn_marker.x;
	var spawn_marker_y = obj_spawn_marker.y;
	return [spawn_marker_x, spawn_marker_y]
}

/**
*@function Get and return the distance the current chunk is away from the spawn chunk.
*@param orig_x Current chunk's origin point X.
*@param orig_y Current chunk's origin point Y.
*/
function get_distance_from_spawn(orig_x, orig_y){
	var spawn_corrds_vector = get_spawn_pos();
	
	var dist = point_distance(orig_x, orig_y, spawn_corrds_vector[0], spawn_corrds_vector[1]); 
	//show_debug_message("[Calculations] Distance: " + string(dist));
	return dist;
}

/**
*@function Assigns a weight to a chunk based on the distance it is way from the spawn chunk.
*@param orig_x Current chunk's origin point X.
*@param orig_y Current chunk's origin point Y.
*/
function assign_chunk_weight(orig_x, orig_y){
	var dist = get_distance_from_spawn(orig_x, orig_y);
	var n_chunks = 2; // Amount of chunks to half the weight at
	var k = 0.693 / (512 * n_chunks); 
	var weight = exp(make_negative(k) * dist); // Use exponential decay to assign weights
	return weight;
}

/**
 * @func Return the maximum amount of carts that can spawn in a specific chunk based on its weight
 * @param {real} weight The probability weight of the chunk
 * @returns {real} Return the maximum amount of carts that can spawn
 */
function get_cart_spawn_count(weight){
	var trials = MAX_CART_SPAWNS_IN_CHUNK;
	/*Here, we roll a number ranging from 0 to 1 
	 *and we see where that number falls on the cumulative 
	 *distrition formula. That is, is adding all the probabilities 
	 *until it equals 1 and drawing "barriers" on the number line
	 *to represent probability bounderies
	 */
	var p0 = binomial_probability(trials, 0, weight);
	var p1 = binomial_probability(trials, 1, weight);
	var p2 = binomial_probability(trials, 2, weight);
	var p3 = binomial_probability(trials, 3, weight);
	
	var cdf0 = p0;
	var cdf1 = cdf0 + p1;
	var cdf2 = cdf1 + p2;
	var cdf3 = cdf2 + p3;
	
	var roll = random(1);
	
	if (roll < cdf0){
		return 0;
	} else if (roll < cdf1){
		return 1;
	} else if (roll < cdf2){
		return 2;
	} else {
		return 3;
	}
}