if (instance_exists(obj_textbox) > 1) instance_destroy();

//Disable player movement
global.canMove = false;

//Pause the overworld
global.paused = true;

//depth = -999;

// Player input
confirm_key = vk_space;
up_key = vk_up;
down_key = vk_down;
max_input_delay = 5; // Frames to ignore input
input_delay = max_input_delay;

//textbot parameters
textbox_width = 1022;
textbox_height = 212;

border = 8;
line_sep = 12;

txtb_spr = spr_menu;
txtb_img = 0;
txtb_img_spd = 6/60;

// Positioning
margin = 2;
padding = 10;
width = sprite_width;
height = sprite_height;

// Text settings
text_speed = 0.8;
text_x = padding;
text_y = 1;
text_width =  textbox_width - padding * 2;

//Interview Mode
random_question_mode = false;
random_question_index = 0;

// Speaker
speaker_x = 300;
speaker_y = 405;

speaker_width_tb = 275;
speaker_height_tb = 50;


// Options
option_x = 160;
option_y = 285;

option_spacing = 100;

option_width = 300;
option_height = 40;
option_text_x = 10;

// Option animation
//option_selection_float = 0;

//// Create animation sequence
//option_sequence_id = layer_sequence_create("Instances", 0, 0, seq_option_hover);
	
option_selection_float = 10;
option_float_speed = .005;
option_float_height = 5;

// Glowing animation
option_glow = 0;
option_glow_speed = .005;

// Private properties: body text
actions = [];
current_action = -1;

text = "";
text_progress = 0;
text_length = 0;

//Private Properties: sets speaker name from custom object
speaker_name = "";
speaker_height = string_height(speaker_name);

options = [];
current_option = 0;
option_count = 0;

//show_debug_message("Textbox created");

/**
 * @funtion Sets a new conversation topic.
 * @param {String} topic The string name for the conversation topic.
 */
function set_topic(dialogue_id){
	actions = global.topics[$ dialogue_id];
	current_action = -1;
	
	next();
}

// Advances text
function next(){
	current_action++;
	if (current_action >= array_length(actions)){
		
		//add sprite invlovment later
		global.paused = false;
		global.canMove = true;
		
		//check if proceed avalibe
		if (instance_exists(obj_interview_controller)) {
			obj_interview_controller.can_proceed = true;
		}
		instance_destroy();
	} 
	
	else {
		actions[current_action].act(id);
	}
}

// Sets text that needs to be typed out
function set_text(newText){
	text = newText;
	text_length = string_length(newText);
	text_progress = 0;
}

setup = false;