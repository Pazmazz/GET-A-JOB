/**
*@function Gets the amount of carts that spawned on the map
*/
function get_cart_amount(){
	var cart_num = instance_number(obj_map_cart);
	return cart_num;
}

/**
*@function Gets the minimum amount of carts that need to win the round
*/
function get_win_amount(){
	var cart_num = get_cart_amount();
	return cart_num * 0.8;
}

function create_fake_cart(cart_num){
	var offset_y = make_negative(30 + cart_num * 50); // Make the cart visually appear in front of the player
}