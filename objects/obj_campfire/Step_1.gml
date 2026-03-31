if (instance_exists(obj_dialog) || MenuController.paused) exit;

if (instance_exists(obj_player) && distance_to_object(obj_player) < 8)
{
	can_talk = true
	if (keyboard_check_pressed(input_key))
	{
		global.character_attributes.hp_current = global.character_attributes.hp_max
		global.character_two_attributes.hp_current = global.character_two_attributes.hp_max
		global.character_three_attributes.hp_current = global.character_three_attributes.hp_max
		
		save_game()
		
		create_dialog(dialog)	
	}
}
else
{
	can_talk = false	
}