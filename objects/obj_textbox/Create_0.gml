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
textbox_width = 240;
textbox_height = 54;
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

// Speaker
speaker_x = 400;
speaker_y = 445;

// Options
option_x = 250;
option_y = 30 * -6;
option_spacing = 50;
option_selection_indent = 24;
option_width = 300;
option_height = 40;
option_text_x = 10;

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