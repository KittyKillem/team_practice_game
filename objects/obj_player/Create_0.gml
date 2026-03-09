move_speed = 60;
facing = 0
encounter_chance = 1299
encounter_check = false

alarm[1] = 500

instance_create_layer(x, y, "Tiles_Col", obj_safety_net)
global.encounter_check = true


function add_xp(_xp_to_add)
{
	if (xp_current >= xp_max)
	{
		character_attributes.xp_current -= character_attributes[xp_max]
		character_attributes.strength += 1
		character_attributes.vitality += 1
		character_attributes.agility += 1
		hp_current = hp_max
	} 
}

tilemap_to_collide = layer_tilemap_get_id("Tiles_Col");