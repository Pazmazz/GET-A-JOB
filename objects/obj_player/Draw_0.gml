draw_self();

// Debug for drawing collison lines and hitbox
if(global.debug){
	// Collison lines
	var line_color = (hit != noone) ? c_lime : c_red;
	draw_set_colour(line_color);
	draw_line(_x1, _y1, _x2, _y2);
	
	// Hitbox
	draw_set_color(c_lime);
    draw_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, true);

	draw_set_colour(c_white);
}