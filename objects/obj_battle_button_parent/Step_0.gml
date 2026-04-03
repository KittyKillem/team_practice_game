if (!instance_exists(obj_battle_manager) || !obj_battle_manager.ally_turn) exit;
if (global.ally_busy) exit;
if (button_selected)
{
	image_blend = c_gray	
} else {
	image_blend = c_white
}


if (keyboard_check_pressed(vk_space) && button_selected)
{
	y = ystart + 1
	x = xstart + 0.5
	animate_button = true
}

if (keyboard_check_released(vk_space) && button_selected && animate_button)
{
	y = ystart
	x = xstart
	animate_button = false
	button_function()
}