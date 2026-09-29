// 8>[^D] <-- it's tenna 

#region player only create

//limit player movement
global.canMove = true;
interactionDistance = 30;
interactionReleased = true;
var interactX, interactY

show_debug_message("Interaction release C: " + string(interactionReleased));

//Speed initialization for main charcter: xspd = L/R  yspd = Up/Dwn
xspd = 0;
yspd = 0;

move_spd = 1;

//animations
sprite[RIGHT] = spr_babyRight
sprite[UP] = spr_babyBack
sprite[LEFT] = spr_babyLeft
sprite[DOWN] = spr_babyDown

//charcater face during startup
face = DOWN;

//interactions
interactionRange = 32;

//npc follow
array_size = 94; // Positions stored

for (var i = array_size - 1; i >= 0; i--) {
	
	pos_x[i] = x;
	pos_y[i] = y;
}

var follower_1 = instance_create_layer(x,y, "Instances", obj_man);
	follower_1.followDist = 45;
	
var follower_2 = instance_create_layer(x,y, "Instances", obj_Mom);
	follower_2.followDist = 30;