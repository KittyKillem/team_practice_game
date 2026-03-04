if (!obj_battle_manager.ally_turn) exit;
if (button_selected)
{
	image_blend = c_gray	
} else {
	image_blend = c_white
}


if (keyboard_check_pressed(vk_space) && button_selected)
{
	y += 1
	x += 0.5
	animate_button = true
}

if (keyboard_check_released(vk_space) && button_selected && animate_button)
{
	y -= 1
	x -= 0.5
	animate_button = false
}