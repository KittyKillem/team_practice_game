function button_function() {
	audio_play_sound(snd_battle_beep, 0, false)
	obj_battle_manager.turn_order[obj_battle_manager.current_turn].defending = true
	obj_battle_manager.turn_order[obj_battle_manager.current_turn].end_turn = true
}