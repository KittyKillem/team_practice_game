PlayRoomMusic()
window_set_size(1366, 768)
surface_resize(application_surface, 1366, 768)


facing = 0

instance_create_layer(x, y, "Instances", obj_safety_net)
encounter_check = false
encounter_chance = 799
alarm[7] = 8
alarm[2] = 400

if (global.x_goto != 0) {
	x = global.x_goto
	y = global.y_goto
	
	global.x_goto = 0
	global.y_goto = 0
} else {
	if (global.gate_goto != -1) {
		with (obj_room_switcher) {
			if (gate_id == global.gate_goto) {
				obj_player.x = x
				obj_player.y = y
				global.gate_goto = -1
				break
			}
		}
	}
	y += global.player_correct_y
	x += global.player_correct_x
	
	global.player_correct_y = 0
	global.player_correct_x = 0
}

if (!instance_exists(MenuController)) instance_create_depth(0, 0, 0, MenuController)