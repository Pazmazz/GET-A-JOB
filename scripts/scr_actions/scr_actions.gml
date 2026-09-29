#macro TEXT new TextAction
#macro SPEAKER new SpeakerAction
#macro CHOICE new ChoiceAction
#macro OPTION new OptionAction
#macro GOTO new GotoAction

//explanation coming 20xx
function DialogueAction() constructor {
	act = function() { };
}

//Define new text to type out
function TextAction(_text) : DialogueAction() constructor {
	text = _text;
	
	function act(textbox) {
		textbox.set_text(text);
	}
}

//Sets speaker ADD ACE ATTERNY TYPE SPRITES
function SpeakerAction(_name, _sprite = undefined, _subimg = undefined, _side = undefined): DialogueAction() constructor {
	
	//Sets variables from json files to pass through GM succsesfully 
	name = _name;
	sprite = _sprite;
	subimage = _subimg;
	side = _side;
	
	//Passes variables to textbox
	function act(textbox) {
		textbox.speaker_name = name;
		
		//if the variable exists/ is set to something, it will run through here
		if (!is_undefined(sprite))
			textbox.portrait_sprite = sprite;
			
		if (!is_undefined(subimage))
			textbox.portrait_subimg = subimage;
			
		if (!is_undefined(side))
			textbox.portrait_side = side;
			
		textbox.next();
	}
}

// Define a branch in the dialogue
function ChoiceAction(_text) : DialogueAction() constructor {
	text = _text;

	// Fill this array with all the arguments after the first one
	options = [];
	for (var i = 1; i < argument_count; i++)
		array_push(options, argument[i]);

	act = function(textbox) {
		
		//pushes choice options in textbox
		textbox.set_text(text);
		textbox.options = options;
		textbox.option_count = array_length(options);
		textbox.current_option = 0;
	}
}

// Place options within the ChoiceAction
function OptionAction(_text, _topic): DialogueAction() constructor {
	text = _text;
	topic = _topic;

	act = function(textbox) {
		textbox.set_topic(topic);
	}
}

// Automatically go to a specified topic
function GotoAction(_topic): DialogueAction() constructor {
	topic = _topic;

	act = function(textbox) {
		textbox.set_topic(topic);
	}
}