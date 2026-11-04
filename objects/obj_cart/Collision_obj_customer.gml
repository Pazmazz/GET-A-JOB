var cust_inst = other.id;
global.boss_anger += 20;
show_damage_number(20, c_red, obj_player);
global.death_reason = "You ran over too many customers!";
instance_destroy(cust_inst);
