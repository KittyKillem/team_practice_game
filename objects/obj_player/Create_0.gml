move_speed = 60;
facing = 0
encounter_chance = 1299
encounter_check = false
still = true
_key = "S"

alarm[1] = 500

instance_create_layer(x, y, "Tiles_Col", obj_safety_net)
global.encounter_check = true


function add_xp(_xp_to_add)
{
	if (global.xp_current >= global.xp_max)
	{
		global.character_attributes.xp_current -= global.character_attributes.xp_max
		global.character_attributes.strength += 1
		global.character_attributes.vitality += 1
		global.character_attributes.agility += 1
		global.character_attributes.hp_current = global.character_attributes.hp_max
	} 
}

tilemap_to_collide = layer_tilemap_get_id("Tiles_Col");