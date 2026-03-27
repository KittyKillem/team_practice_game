if(room != rm_battle) {
	obj_player.encounter_chance = 1299
	instance_destroy()
	global.character_attributes = attributes
	global.character_two_attributes = attributes_two
	global.character_three_attributes = attributes_three
}
else {
	obj_battle_player.character_attributes = attributes
	room_to_return = room_current
	
	if global.character_two_attributes.hp_current >= 1 {
		instance_create_layer(117, 71, "Instances", obj_battle_player2)
		obj_battle_player2.character_attributes = attributes_two
	}
	
	if global.character_three_attributes.hp_current >= 1 {
		instance_create_layer(40, 74, "Instances", obj_battle_player3)
		obj_battle_player3.character_attributes = attributes_three
	}
}