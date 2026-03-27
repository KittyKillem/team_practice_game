if (animate_button && global.music_volume < 1 && layer_get_visible("Options"))
{
	global.music_volume += 0.1
	if (global.music_volume >= 1) global.music_volume = 1
	
	audio_group_set_gain(music_group, global.music_volume)
}