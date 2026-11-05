var _mx = device_mouse_x_to_gui(0);
var _my = device_mouse_y_to_gui(0);

// Check if mouse is hovering over the button's bounding box
var _hovering = position_meeting(_mx, _my, id);

if (_hovering) {
    image_index = 1;
    
    if (mouse_check_button_pressed(mb_left)) {
        room_goto(rm_init); 
    }
} else {
    image_index = 0;
}