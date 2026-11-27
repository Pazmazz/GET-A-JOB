if (instance_number(obj_customer_controller) > 1) instance_destroy();

_init_question_started = false;
_question_ended = false;
_init_question = get_customer_init_question(_customer);
_question = get_customer_question(_customer);
_init_phase_active = true;
_can_proceed = true;

function start_question_asking(){
	scr_start_dialogue(_init_question);
}

function record_init_answer(_score){
	switch(_score) {
        case "hear": 
			_init_phase_active = false;
			_can_proceed = true;
			check_progress();
		break;

        case "ignore":
			_penalty = get_customer_ignore_penalty(_customer);
            global.boss_anger += _penalty;
			show_damage_number(_penalty, c_red, obj_player);
			global.death_reason = "You ignored too many customers!";
			log("[Game Master] Boss Anger Meter went up by +" + string(_penalty) + " becuase you ignored the customer");
			instance_destroy(_cust_inst);
			instance_destroy();
        break;
    }
}

function record_answer(_score){
	switch(_score) {
        case "accept":
            _can_proceed = true;
        break;

        case "reject":
			_penalty = get_customer_fail_penalty(_customer);
            global.boss_anger += _penalty;
			show_damage_number(_penalty, c_red, obj_player);
			global.death_reason = "Stupid employee, you made us look bad!";
			log("[Game Master] Boss Anger Meter went up by +" + string(_penalty) + " becuase you answered the question wrong");
			instance_destroy(_cust_inst);
			instance_destroy();
        break;
    }
	
	_question_ended = true;
}

function check_progress(){
	if (_can_proceed){
		scr_start_dialogue(_question);
		_can_proceed = false;
	}
}

function finish_customer_question() {
	log("[Game Master] Dialogue ended");
    instance_destroy(_cust_inst);
    instance_destroy();
}