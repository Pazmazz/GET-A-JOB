function get_customer_init_question(_customer){
	//Gather all questions from global topics
	var _array = struct_get_names(global.topics);
	var _question = "";
	
	//Switch statement for each customer
	switch(_customer){
		case "Anxious":
			_question = "ac_init";
		break;
		
		case "Normal":
			_question = "nc_init";
		break;
		
		case "Direct":
			_question = "dc_init";
		break;
	}
}

function get_customer_question(_customer){
	//Gather all questions from global topics
	var _array = struct_get_names(global.topics);
	var _all_questions = [];
	
	//Switch statement for each customer
	switch(_customer){
		case "Anxious":
			var _anxious_prefix = "ac";
			
			//Checks through the full topics array
			for(var i = 0; i < array_length(_array); i++){
				var _current_string = _array[i];
				
				//Actually filters all questions with "ac" prefix
				if (string_pos(_anxious_prefix, _current_string)){
					array_push(_all_questions, _current_string)
				}
			}
		break;
		
		case "Normal":
			var _normal_prefix = "nc";
			
			//Checks through the full topics array
			for(var i = 0; i < array_length(_array); i++){
				var _current_string = _array[i];
				
				//Actually filters all questions with "nc" prefix
				if (string_pos(_normal_prefix, _current_string)){
					array_push(_all_questions, _current_string)
				}
			}
		break;
		
		case "Direct":
			var _direct_prefix = "dc";
			
			//Checks through the full topics array
			for(var i = 0; i < array_length(_array); i++){
				var _current_string = _array[i];
				
				//Actually filters all questions with "dc" prefix
				if (string_pos(_direct_prefix, _current_string)){
					array_push(_all_questions, _current_string)
				}
			}
		break;
	}
	
	//Shuffle inserted qestions
	var _shuffled = array_shuffle(_all_questions);
	
	return _shuffled[0];
}