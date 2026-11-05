//store the controllers inatnce ID
//global.interview_controller = id;

//gather 1 serious + 15 general questions
_final_all_questions = get_all_questions(global.boss);

//get_all_questions("Boss 1");

//Initialize variables
_questions_asked = 0;
good_answers = 0;
neutral_answers = 0;
bad_answers = 0;
can_proceed = true;
//scr_start_dialogue(_final_all_questions._final_general_questions[0]);

//will record the score of good, neutral, and bad answers
function record_answer(_score) {

    switch(_score) {

        case "good":
            good_answers++;
        break;

        case "neutral":
            neutral_answers++;
        break;

        case "bad":
            bad_answers++;
        break;
    }
	
	_questions_asked++;

    show_debug_message("Good: " + string(good_answers));
    show_debug_message("Neutral: " + string(neutral_answers));
    show_debug_message("Bad: " + string(bad_answers));
	show_debug_message("Q's Asked: " + string(_questions_asked));
	show_debug_message("FPS: " + string(fps_real));
}

//Calculate the ending based on score
function calculate_ending() {

    var _ending_topic = "";

    // Check for good ending
    if (good_answers >= 4) {
        _ending_topic = "good_ending";
    }

    // Check for super failure ending
    else if (bad_answers >= 4) {
        _ending_topic = "bad_ending";
    }

    // Otherwise, give the neutral/failure ending
    else {
        _ending_topic = "neutral_ending";
    }

    //show_debug_message("INTERVIEW COMPLETE");
    //show_debug_message("Good: " + string(good_answers));
    //show_debug_message("Neutral: " + string(neutral_answers));
    //show_debug_message("Bad: " + string(bad_answers));
    //show_debug_message("Ending: " + _ending_topic);

    // Start the appropriate ending dialogue
    scr_start_dialogue(_ending_topic);
}

//Keeps interview progress
function check_interview_progress() {
	
	//Count general q's asked
	if (_questions_asked == 5) {
		if (can_proceed == true) {
			scr_start_dialogue(_final_all_questions._final_serious_questions[0]);
			can_proceed = false;
			show_debug_message(_final_all_questions);
		}
	}
	
	//End after max questions asked
	if (_questions_asked == 6) {
		calculate_ending();
	}
	
	//Move on to next question
	if (can_proceed == true) {
		scr_start_dialogue(_final_all_questions._final_general_questions[_questions_asked]);
		can_proceed = false;
		show_debug_message(_final_all_questions);
	}
}