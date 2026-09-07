draw_self();

// Debug for drawing collison lines
if(global.debug){
	var line_color = (hit != noone) ? c_lime : c_red;
	draw_set_colour(line_color);
	draw_line(_x1, _y1, _x2, _y2);

	draw_set_colour(c_white);
}