var car_inst = other.id;
with (car_inst){
	if (!invincible){ // Mark, you truly are...
		global.boss_anger += 10;
		show_damage_number(10, c_red, obj_player);
		invincible = true;
		invincible_timer = invincible_lifetime;
		alarm[0] = ROOM_SPEED * 1.5;
	}
}

global.death_reason = "You damaged too many cars!";