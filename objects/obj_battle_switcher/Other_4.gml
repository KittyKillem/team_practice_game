if(room != rm_battle) {
	obj_player.encounter_chance = 1299
	instance_destroy()
	global.character_attributes = attributes
}
else {
	obj_battle_player.character_attributes = attributes
	room_to_return = room_current
}