function get_all_questions(_boss){
	
	//Gather all questions from global topics
	var _array = struct_get_names(global.topics);
	var _all_questions = [];
	var _serious_questions = [];
	var _general_questions = [];
	
	//Switch statement for each boss
	switch(_boss){
		
		case "Boss 1":
			var _b1_gen_prefix = "b1";
			
			//Checks through the full topics array
			for(var i = 0; i < array_length(_array); i++){
				var _current_string = _array[i];
				
				//Actually filters all questions with "b1" prefix
				if (string_pos(_b1_gen_prefix, _current_string)){
					array_push(_all_questions,_current_string)
				}
			}
			
			//Filters all joke questions
			var _b1_g_prefix = "b1g_";
			
			for(var i = 0; i < array_length(_all_questions); i++){
				var _current_string = _all_questions[i];
				
				//Actually filters all questions with "b1j " prefix
				if (string_pos(_b1_g_prefix, _current_string)){
					array_push(_general_questions,_current_string)
				}
			}
			
			//Filters all serious questions
			var _b1_s_prefix = "b1s_";
			
			for(var i = 0; i < array_length(_all_questions); i++){
				var _current_string = _all_questions[i];
				
				//Actually filters all questions with "b1s " prefix
				if (string_pos(_b1_s_prefix, _current_string)){
					array_push(_serious_questions,_current_string)
				}
			}
			
		
		break
		
		case "Boss 2":
			var _b2_gen_prefix = "b2";
			
			//Checks through the full topics array
			for(var i = 0; i < array_length(_array); i++){
				var _current_string = _array[i];
				
				//Actually filters all questions with "b1" prefix
				if (string_pos(_b2_gen_prefix, _current_string)){
					array_push(_all_questions,_current_string)
				}
			}
			
			//Filters all general questions
			var _b2_g_prefix = "b2g_";
			
			for(var i = 0; i < array_length(_all_questions); i++){
				var _current_string = _all_questions[i];
				
				//Actually filters all questions with "b1j " prefix
				if (string_pos(_b2_g_prefix, _current_string)){
					array_push(_general_questions,_current_string)
				}
			}
			
			//Filters all serious questions
			var _b2_s_prefix = "b2s_";
			
			for(var i = 0; i < array_length(_all_questions); i++){
				var _current_string = _all_questions[i];
				
				//Actually filters all questions with "b1s " prefix
				if (string_pos(_b2_s_prefix, _current_string)){
					array_push(_serious_questions,_current_string)
				}
			}
		
		break
		
		case "Boss 3":
			var _b3_gen_prefix = "b3";
			
			//Checks through the full topics array
			for(var i = 0; i < array_length(_array); i++){
				var _current_string = _array[i];
				
				//Actually filters all questions with "b1" prefix
				if (string_pos(_b3_gen_prefix, _current_string)){
					array_push(_all_questions,_current_string)
				}
			}
			
			//Filters all general questions
			var _b3_g_prefix = "b3g_";
			
			for(var i = 0; i < array_length(_all_questions); i++){
				var _current_string = _all_questions[i];
				
				//Actually filters all questions with "b1j " prefix
				if (string_pos(_b3_g_prefix, _current_string)){
					array_push(_general_questions,_current_string)
				}
			}
			
			//Filters all serious questions
			var _b3_s_prefix = "b3s_";
			
			for(var i = 0; i < array_length(_all_questions); i++){
				var _current_string = _all_questions[i];
				
				//Actually filters all questions with "b1s " prefix
				if (string_pos(_b3_s_prefix, _current_string)){
					array_push(_serious_questions,_current_string)
				}
			}
		
		break
		
		case "Boss 4":
			var _b4_gen_prefix = "b4";
			
			//Checks through the full topics array
			for(var i = 0; i < array_length(_array); i++){
				var _current_string = _array[i];
				
				//Actually filters all questions with "b1" prefix
				if (string_pos(_b4_gen_prefix, _current_string)){
					array_push(_all_questions,_current_string)
				}
			}
			
			//Filters all joke questions
			var _b4_g_prefix = "b4g_";
			
			for(var i = 0; i < array_length(_all_questions); i++){
				var _current_string = _all_questions[i];
				
				//Actually filters all questions with "b1j " prefix
				if (string_pos(_b4_g_prefix, _current_string)){
					array_push(_general_questions,_current_string)
				}
			}
			
			//Filters all serious questions
			var _b4_s_prefix = "b4s_";
			
			for(var i = 0; i < array_length(_all_questions); i++){
				var _current_string = _all_questions[i];
				
				//Actually filters all questions with "b1s " prefix
				if (string_pos(_b4_s_prefix, _current_string)){
					array_push(_serious_questions,_current_string)
				}
			}
				
		break
		
		
		
	}
	
	//Put the serious and gerenal questions into an array
	var _general_questions_array = get_random_general_questions(_general_questions);
	var _serious_questions_array = get_random_serious_questions(_serious_questions);
	

	//make structs out of arrays
	return {
		_final_general_questions: _general_questions_array,
		_final_serious_questions: _serious_questions_array
	};
	
}

function print_test()
{
    show_debug_message("Testing global.topics");

    if (!variable_global_exists("topics"))
    {
        show_debug_message("ERROR: global.topics does not exist!");
        return;
    }

    show_debug_message(
        "Number of topics: " + string(array_length(variable_struct_get_names(global.topics)))
    );

    for (var i = 0; i < array_length(global.topics); i++)
    {
        show_debug_message(
            "Topic " + string(i) + ": " + string(global.topics[i])
        );
    }
}


function get_random_general_questions(_general_questions){
	
	//shuffle inserted qestions
	var _shuffled = array_shuffle(_general_questions);
	
	//create an array of 15 spaces for radomized general questions
	var _question_number = 5;
	var _new_array = array_create(_question_number);
	
	//push 15 randomized q's into new quations array
	for (var i = 0; i < _question_number; i++){
		_new_array[i] = _shuffled[i];
	}
	
	return _new_array;
}

function get_random_serious_questions(_serious_questions){
	
	//shuffle inserted qestions
	var _shuffled = array_shuffle(_serious_questions);
	
	//create an array of 1 spaces for radomized serious questions
	var _question_number = 1;
	var _new_array = array_create(_question_number);
	
	//push 1 randomized q(s) into new quations array
	for (var i = 0; i < _question_number; i++){
		_new_array[i] = _shuffled[i];
	}
	
	return _new_array;
}