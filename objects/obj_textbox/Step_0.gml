var confirm = keyboard_check_pressed(confirm_key);

//Tells how far you've gotten in reading line of text
text_progress = min(text_progress + text_speed, text_length);

//Allows for non skipping dialouge
if (input_delay > 0){
	input_delay--;
	exit;
}

//allows option movement after text is done being written
if (text_progress == text_length){
	
	//if options are present allow for movement
	if (option_count > 0) {
		var up = keyboard_check_pressed(up_key);
		var down = keyboard_check_pressed(down_key);
		
		// Cycle through available options
		var change = down - up;
		if (change != 0) {
			current_option += change;
		
			// Wrap to first and last option
			if (current_option < 0)
				current_option = option_count - 1;
			else if (current_option >= option_count)
				current_option = 0;
		}
		
		// Select an option
		if (confirm) {
			var option = options[current_option];
			options = [];
			option_count = 0;
			
			//sets the topic/ selection to which ever was pressed
			option.act(id);
		}
	} 
	
	//Moves on to the next line of text
	else if (confirm){
		next();
	}
} 

//finishes typing text immediently 
else if (confirm || keyboard_check_pressed(ord("X"))){
	text_progress = text_length;
}
	