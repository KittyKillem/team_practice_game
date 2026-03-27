var _mouse_gui_x = device_mouse_x_to_gui(0);
var _mouse_gui_y = device_mouse_y_to_gui(0);
var _was_hovering = is_hovering;

// Check if the mouse is over the GUI element's drawn position
if (position_meeting(_mouse_gui_x, _mouse_gui_y, id)) {
    is_hovering = true;
    if (!_was_hovering) {
        image_alpha = 0.6
    }
	if (mouse_check_button_pressed(1)) {
		global.main_volume -= 0.1
		if (global.main_volume <= 0) global.main_volume = 0
	
		audio_master_gain(global.main_volume)
	}
} else {
    is_hovering = false;
    if (_was_hovering) {
        image_alpha = 1
    }
}
