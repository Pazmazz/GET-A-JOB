if (!interaction_started){
	interaction_started = true;
	instance_create_layer(0, 0, "Utility", obj_customer_controller, {_customer: "Anxious", _cust_inst: id});
}