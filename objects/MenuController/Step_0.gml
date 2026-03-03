
// open pause menu
if (keyboard_check_pressed(vk_tab)) {
    paused = true;
}
// pick option
if (paused) {
    if (keyboard_check_pressed(ord("W"))) menu_index--;
    if (keyboard_check_pressed(ord("S"))) menu_index++;
    menu_index = clamp(menu_index, 0, 1);
}
// initaite menu selection
if (paused) {

    if (keyboard_check_pressed(vk_enter)) {
        if (menu_index == 0) {
            paused = false; // Resume 
        }
		if (menu_index == 1) {
        game_end(); // Quit 
    }
    }}
