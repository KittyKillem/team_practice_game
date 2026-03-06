if(room != rm_battle) {
	obj_player.encounter_chance = 1299
	instance_destroy()
}
if (instance_exists(obj_battle_player))
{
	obj_battle_player.character_attributes = attributes	
}
else if (instance_exists(obj_player))
{
	obj_player.character_attributes = attributes
}

if(room == rm_battle) room_to_return = room_current