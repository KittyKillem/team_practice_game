button_text = "Coming Soon"

function button_function() {
	audio_play_sound(snd_battle_beep, 0, false)
	
	/*if (obj_battle_manager.turn_order[obj_battle_manager.current_turn].character_attributes.special1 != false) {
		
		Special_Prompt_Open(obj_battle_manager.turn_order[obj_battle_manager.current_turn].character_attributes.special1)
	}*/
}
/*
if (obj_battle_manager.turn_order[obj_battle_manager.current_turn].character_attributes.special1 != false) {
	button_text = obj_battle_manager.turn_order[obj_battle_manager.current_turn].character_attributes.special1.name
}