function init_macros(){
	// Key Binds
	#macro MOVE_UP keyboard_check(ord("W")
	#macro MOVE_DOWN keyboard_check(ord("S")
	#macro MOVE_LEFT keyboard_check(ord("A")
	#macro MOVE_RIGHT keyboard_check(ord("D")
	#macro INTERACT_KEY keyboard_check_pressed(vk_space)
	#macro DISMOUNT_KEY keyboard_check_pressed(vk_lshift)
	
	// Shortcut macros
	#macro ROOM_SPEED game_get_speed(gamespeed_fps)
	
	// Macros for object tags
	#macro CHUNK "Chunk"
	#macro PLAYER "Player"
	#macro CART "Shopping Cart"
	#macro CUSTOMER "Customer"
	#macro CAR "Parked Car"
	#macro MOVING_CAR "Moving Car"
	#macro CAMERA "Camera"
	
	// Contants
	#macro MAX_CART_SPAWNS 20
	#macro MAX_CART_SPAWNS_IN_CHUNK 3
}