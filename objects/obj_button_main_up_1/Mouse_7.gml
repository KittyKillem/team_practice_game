if (animate_button && global.main_volume > 0 && layer_get_visible("Options"))
{
	global.main_volume -= 0.1
	if (global.main_volume <= 0) global.main_volume = 0
	
	audio_master_gain(global.main_volume)
}