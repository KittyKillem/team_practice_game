global.music = snd_village_theme



function PlayRoomMusic(){
	if (room == rm_village) {
		global.music = snd_village_theme
	} else if (room == rm_halls) {
		global.music = snd_forest_theme
	}
	
	if (audio_is_paused(global.music)) audio_resume_sound(global.music)
	else audio_play_sound(global.music, 0, true)
}

// audio_play_sound(snd_village_theme, 0, true)
// audio_resume_sound(global.music)	