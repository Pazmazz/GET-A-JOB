/**
*@function Gets the amount of carts that spawned on the map
*/
function get_cart_amount(){
	var cart_num = instance_number(obj_cart);
	return cart_num;
}

/**
*@function Gets the minimum amount of carts that need to win the round
*/
function get_win_amount(){
	var cart_num = get_cart_amount();
	return cart_num * 0.8;
}