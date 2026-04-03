global.music_volume = 1
global.main_volume = 0.7

audio_master_gain(global.main_volume)

audio_group_set_gain(music_group, (global.main_volume * global.music_volume))