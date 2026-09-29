// Draws the textbox
textbox_x = camera_get_view_x(view_camera[0])+ 30;
textbox_y = camera_get_view_y(view_camera[0]) + 140;

draw_sprite_stretched(sprite_index, 0, textbox_x, textbox_y, textbox_width, textbox_height);

//Is the textbox drawn
textbox_visible = true;

var draw_text_x = textbox_x;
var draw_text_y = textbox_y;
var textbox = obj_textbox;
var finished = text_progress == text_length;

// Portrait
//if (sprite_exists(portrait_sprite)){
//	global.can_draw_sprite = true;
//	var draw_portrait_xscale = 1;
	
//	if (portrait_side == PORTRAIT_SIDE.RIGHT){
//		draw_portrait_xscale = 1;
//		portrait_x = 600;
//	} else {
//		draw_portrait_xscale = -1;
//		portrait_x = 200;
//	}
	
//	if (global.can_draw_sprite){
//		var inst = instance_create_depth(portrait_x, portrait_y, 9999, obj_portrait);
//		with(inst){
//			updatePortrait(textbox.portrait_sprite, textbox.portrait_subimg, draw_portrait_xscale);
//		}
//	}
//}

//else {
//	global.can_draw_sprite = false;
//}

// Speaker
if (speaker_name != ""){
	draw_text_y += padding - 5;
	draw_set_halign(fa_center);
	draw_set_valign(fa_top);
	draw_set_font(TEXT_FONT);
	draw_set_color(TEXT_COLOR);
	draw_text(speaker_x, speaker_y, speaker_name);
}

// Text
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_font(TEXT_FONT);
draw_set_color(TEXT_COLOR);
type(draw_text_x + text_x, draw_text_y + text_y, text, text_progress, text_width);

// Options
if (finished && option_count > 0) {
	draw_set_valign(fa_middle);
	draw_set_color(TEXT_SELECT_COLOR);
	for (var i = 0; i < option_count; i++) {
		var opt_x = x + option_x;
		var opt_y = y + option_y - (option_count - i - 1) * option_spacing;
		
		// Selected option has an arrow beside it
		//if (i == current_option) {
		//	opt_x += option_selection_indent;
		//	draw_sprite(spr_arrow, 0, opt_x, opt_y);
		//}
		
		draw_sprite_stretched(spr_option, 0, opt_x, opt_y - option_height / 2, option_width, option_height);
		draw_text(opt_x + option_text_x, opt_y, options[i].text);
	}
}
