if (variable_global_exists("music")) {
	audio_resume_sound(global.music)	
} else {
 global.music = audio_play_sound(snd_forest_theme, 0, true)
}
window_set_size(1366, 768)
surface_resize(application_surface, 1366, 768)


facing = 0

instance_create_layer(x, y, "Instances", obj_safety_net)
encounter_check = false
encounter_chance = 1299
alarm[2] = 400

if (global.x_goto != 0) {
	x = global.x_goto
	y = global.y_goto
	
	global.x_goto = 0
	global.y_goto = 0
}

if (!instance_exists(MenuController)) instance_create_depth(0, 0, 0, MenuController)