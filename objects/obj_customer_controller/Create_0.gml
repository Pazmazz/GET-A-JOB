_init_question = get_customer_init_question(_customer);
_question = get_customer_question(_customer);

function start_question_asking(){
	scr_start_dialogue(_init_question);
}

function record_init_answer(_score){
	switch(_score) {

        case "hear":
            good_answers++;
        break;

        case "reject":
            neutral_answers++;
        break;
    }
}

function calculate_ending(){
	
}

function check_progress(){
	scr_start_dialogue(_question);
}