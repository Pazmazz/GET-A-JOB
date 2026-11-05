draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_alpha(image_alpha);
draw_set_color(c_black);
draw_text(x+1, y, text);
draw_text(x-1, y, text);
draw_text(x, y+1, text);
draw_text(x, y-1, text);
draw_set_color(color);
draw_text(x, y, text);
draw_set_alpha(1.0);

// Reset variables
draw_set_halign(fa_left); 
draw_set_valign(fa_top);
draw_set_colour(c_white);