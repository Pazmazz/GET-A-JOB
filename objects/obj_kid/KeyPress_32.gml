if (!interactionReleased) exit;

interactionReleased = false;

show_debug_message("Interaction release KP: " + string(interactionReleased));

if (place_meeting(x, y, obj_interact_test)){
	with(obj_interact_test)
	{
		scr_start_dialogue(dialogue_id);
	}
	
}

//var dialogue_parent = obj_dialogue;
//var looting_parent = obj_looting;
//var piece = obj_piece;
//var fake_obj = obj_fake_bush;
//var player = id;

//with(dialogue_parent){
//	if(collision_line(player.x, player.y, player.interactX, 
//		player.interactY, self, 1, false))
//	{
//	    player.image_speed = 0;
//		player.image_index = 0;
//		interactedAmount++;
//		start_dialogue(self.dialogue);
//	}
//}

//with(looting_parent){
//	if(collision_line(player.x, player.y, player.interactX, 
//		player.interactY, self, 1, false))
//	{
//	    player.image_speed = 0;
//		player.image_index = 0;
//		interactedAmount++;
//		canLoot = true;
//	}
//}

//with(piece){
//	if(collision_line(player.x, player.y, player.interactX, 
//		player.interactY, self, 1, false))
//	{
//	    global.pieces++;
//		piece_got_text(global.pieces);
//		collected = true;
//	}
//}

//with(fake_obj){
//	if(collision_line(player.x, player.y, player.interactX, 
//		player.interactY, self, 1, false))
//	{
//	    interacted = true;
//	}
//}