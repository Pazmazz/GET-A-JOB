if (invincible) { // Stop it. Don't say it. Don't think it.
	invincible_timer--
    
	if (invincible_timer mod 2 == 0) {
        image_alpha = 0.5;
    } else {
        image_alpha = 1;
    }
	
	if (invincible_timer <= 0) invincible = false;
} else {
    image_alpha = 1;
}