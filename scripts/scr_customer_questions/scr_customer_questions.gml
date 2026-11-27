/**
 * Gets the initial question for the specified customer
 * @param {String} _customer Customer type to get the question for
 */
function get_customer_init_question(_customer){
	//Gather all questions from global topics
	var _array = struct_get_names(global.topics);
	var _question = "";
	
	//Switch statement for each customer
	switch(_customer){
		case "Anxious":
			_question = "init_ac";
		break;
		
		case "Normal":
			_question = "init_nc";
		break;
		
		case "Direct":
			_question = "init_dc";
		break;
	}
	
	return _question;
}

/**
 * Gets a random question for the specified customer
 * @param {String} _customer Customer type to get the question for
 */
function get_customer_question(_customer){
	//Gather all questions from global topics
	var _array = struct_get_names(global.topics);
	var _all_questions = [];
	var _prefix = "";
	
	//Switch statement for each customer
	switch(_customer){
		case "Anxious":
			_prefix = "ac_question";
		break;
		
		case "Normal":
			_prefix = "nc_question";
		break;
		
		case "Direct":
			_prefix = "dc_question";
		break;
	}
	
	//Checks through the full topics array
	for(var i = 0; i < array_length(_array); i++){
		var _current_string = _array[i];
				
		//Actually filters all questions with specified prefix
		if (string_pos(_prefix, _current_string)){
			array_push(_all_questions, _current_string)
		}
	}
	
	//Shuffle inserted qestions
	var _shuffled = array_shuffle(_all_questions);
	
	return _shuffled[0];
}

/**
 * Gets the ignore penalty amount for the specified customer
 * @param {String} _customer Customer type to get the ignore penalty for
 */
function get_customer_ignore_penalty(_customer){
	var _penalty = 0;
	
	//Switch statement for each customer
	switch(_customer){
		case "Anxious":
			_penalty = 2;
		break;
		
		case "Normal":
			_penalty = 10;
		break;
		
		case "Direct":
			_penalty = 15;
		break;
	}
	
	return _penalty;
}

/**
 * Gets the fail penalty amount for the specified customer
 * @param {String} _customer Customer type to get the fail penalty for
 */
function get_customer_fail_penalty(_customer){
	var _penalty = 0;
	
	//Switch statement for each customer
	switch(_customer){
		case "Anxious":
			_penalty = 2;
		break;
		
		case "Normal":
			_penalty = 5;
		break;
		
		case "Direct":
			_penalty = 10;
		break;
	}
	
	return _penalty;
}