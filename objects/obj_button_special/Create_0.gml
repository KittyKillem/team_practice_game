function button_function() {
	audio_play_sound(snd_battle_beep, 0, false)
	
	select_prev_hor()
	with (obj_battle_button_parent) instance_destroy()
	
	obj_battle_manager.menu_special = true
	
	global.specials_struct = {special1: true, special2: false, special3: false, special4: false}
	global.specials_current = "special1"
	global.special_next = ""
	
	instance_create_layer(29, 150, "Instances", obj_button_special1, {image_xscale: 0.8, image_yscale: 0.8})
	instance_create_layer(83, 150, "Instances", obj_button_special2, {image_xscale: 0.8, image_yscale: 0.8})
	
	instance_create_layer(29, 168, "Instances", obj_button_special3, {image_xscale: 0.8, image_yscale: 0.8})
	instance_create_layer(83, 168, "Instances", obj_button_special4, {image_xscale: 0.8, image_yscale: 0.8})
}