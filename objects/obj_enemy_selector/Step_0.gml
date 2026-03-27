x = global.target_enemy.x
y = global.target_enemy.y

global.ally_busy = true

if (image_xscale < starting_xscale + 0.3 && grow == true)
{
	image_xscale += 0.01
	image_yscale += 0.01
} else if (image_xscale > starting_xscale) {
	grow = false
	image_xscale -= 0.01
	image_yscale -= 0.01
	if (image_xscale <= starting_xscale) grow = true;
}

if (keyboard_check_pressed(ord("D")) || keyboard_check_pressed(ord("A")))
{
	audio_play_sound(snd_battle_beep, 0, false)
	select_next_hor_enemy()
}

if (keyboard_check_pressed(ord("W")) || keyboard_check_pressed(ord("S")))
{
	select_next_ver_enemy()
	audio_play_sound(snd_battle_beep, 0, false)
}

if (keyboard_check_pressed(vk_escape) or keyboard_check_pressed(vk_tab)) 
{
		audio_play_sound(snd_battle_beep, 0, false)
		obj_battle_manager.ally_turn = true
		global.ally_busy = false
		instance_destroy();
}

if (keyboard_check_pressed(vk_space))
{
	audio_play_sound(snd_battle_beep, 0, false)
	obj_battle_manager.turn_order[obj_battle_manager.current_turn].attack_enemy(global.target_enemy)
	instance_destroy()
}

depth = -9999999