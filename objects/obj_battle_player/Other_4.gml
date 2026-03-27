window_set_size(1366, 768)
surface_resize(application_surface, 1366, 768)

global.buttons_struct = {attack: true, special: false, defend: false, item: false, flee: false}
global.button_current = "attack"
global.button_next = ""

alarm[1] = 1

audio_play_sound(snd_encounter_theme, 0, true)
