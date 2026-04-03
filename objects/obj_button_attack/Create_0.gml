function button_function() {
	audio_play_sound(snd_battle_beep, 0, false)
	instance_create_layer(0, 0,"Instances", obj_enemy_selector)
}