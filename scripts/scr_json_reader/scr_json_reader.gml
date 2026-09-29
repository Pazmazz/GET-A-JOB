function scr_json_reader(_path){
	// json import testing
	
	/*
		Buffer essentially holds the json data inside of while while you 
		figure out what to do with it 
		
		As of now you are turing it into a string
		buffer_read() reads the text from the json file (held in the buffer) changes it into a string
		
		Make sure to delete the var buffer = ...
	*/
	
	var buffer = buffer_load(working_directory + _path);//loads specific json from file path 
	var json_text = buffer_read(buffer, buffer_string);
	buffer_delete(buffer);//Delete the json buffer
	
	var data = json_parse(json_text);
	var topics = variable_struct_get_names(data);
	
	//look through struct to format 
	for (var i = 0; i < array_length(topics); i++){
		
		//Gets the actual letter name of the topic 
		var topic_name = topics[i];
		var json_actions = variable_struct_get(data, topic_name);
		
		//Stores every action/data from the struct
		var actions = [];
		
		for (var j = 0; j < array_length(json_actions); j++){
			var entry = json_actions[j];
			
			switch(entry.type){
				
				//Reads + defines "speaker" from json file
				case "speaker":
					
					//Takes the set varibles from json and assigns it in gamemaker
					var _portrait = undefined;
				    var _subimg = undefined;
				    var _side = undefined; //change when you get to animating portraits
					
					//if these two exists run it through 
				    if (variable_struct_exists(entry, "portrait"))
				        _portrait = global.portraits[$ entry.portrait];

				    if (variable_struct_exists(entry, "sub_sprite"))
				        _subimg = entry.sub_sprite;

				    //if (variable_struct_exists(entry, "side"))
				    //{
				    //    _side = (entry.side == "left")
				    //        ? PORTRAIT_SIDE.LEFT
				    //        : PORTRAIT_SIDE.RIGHT;
				    //}
					
					//Passing varibles from speaker function in SPEAKER Macro
                    array_push(actions, 
						SPEAKER(
							entry.name, 
							_portrait, 
							_subimg, 
							_side
						)
					);
                break;
				
				//passed variables from text to TEXT Macro
                case "text":
                    array_push(actions, 
						TEXT(entry.content)
					);
                break;
				
				//pass variables from choice to OPTIONS
				case "choice":
					array_push(actions, CHOICE(entry.content, 
						OPTION(entry.options[0].content, entry.options[0].topic),
						OPTION(entry.options[1].content, entry.options[1].topic))
					);
				break;
            }
        }
		
		//insert everything into topics
        global.topics[$ topic_name] = actions;
		show_debug_message("[JSON] Topic " + string(topic_name) + " has been loaded");
    }
}