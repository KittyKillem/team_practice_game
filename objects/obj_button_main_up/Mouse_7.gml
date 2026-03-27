if (animate_button && global.main_volume < 1 && layer_get_visible("Options"))
{
	global.main_volume += 0.1
	if (global.main_volume >= 1) global.main_volume = 1
	
	audio_master_gain(global.main_volume)
}