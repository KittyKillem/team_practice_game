
// open pause menu
if (!instance_exists(obj_dialog) && keyboard_check_pressed(vk_tab)) {
    paused = true;
}
// pick option
if (paused) {
    if (keyboard_check_pressed(vk_up) or keyboard_check_pressed(ord("W"))) menu_index--;
    if (keyboard_check_pressed(vk_down) or keyboard_check_pressed(ord("S"))) menu_index++;
    menu_index = clamp(menu_index, 0, 2);
}
// initaite menu selection
if (paused) {
	if (keyboard_check_pressed(vk_enter) or keyboard_check_pressed(vk_space)) {
        if (menu_index == 0) {
			
			with (obj_button_parent) instance_destroy()
			instance_destroy(obj_main_volume_display_1)
			instance_destroy(obj_music_volume_display_1)
				
            paused = false; // Resume 
			
        } else if (menu_index == 1) {
			options_menu = !options_menu
			
			if (options_menu) {
				// Main Volume Adjuster
				instance_create_layer(300, 165, "Instances", obj_button_main_down_1, {image_xscale: 4, image_yscale: 4})
				instance_create_layer(375, 165, "Instances", obj_main_volume_display_1, {image_xscale: 5, image_yscale: 5})
				instance_create_layer(450, 165, "Instances", obj_button_main_up_1, {image_xscale: 4, image_yscale: 4})
			
				// Music Volume Adjuster
				instance_create_layer(300, 365, "Instances", obj_button_music_down_1, {image_xscale: 4, image_yscale: 4})
				instance_create_layer(375, 365, "Instances", obj_music_volume_display_1, {image_xscale: 5, image_yscale: 5})
				instance_create_layer(450, 365, "Instances", obj_button_music_up_1, {image_xscale: 4, image_yscale: 4})
			} else {
				
				with (obj_button_parent) instance_destroy()
				instance_destroy(obj_main_volume_display_1)
				instance_destroy(obj_music_volume_display_1)
			}
		} else if (menu_index == 2) {
        game_end(); // Quit 
    }
    }}
