var cust_inst = other.id;
global.boss_anger += 5;
show_damage_number(5, c_red, obj_player);
global.death_reason = "Stupid employee, you made us look bad!";
instance_destroy(cust_inst);