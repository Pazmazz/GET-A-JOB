draw_self();

// Debug for hitbox
if(global.debug){
	// Hitbox
	draw_set_color(c_lime);
    draw_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, true);

	draw_set_colour(c_white);
}