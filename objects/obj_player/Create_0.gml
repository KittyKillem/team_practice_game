move_speed = 1;
facing = 0
alarm[1] = 300

instance_create_layer(x, y, "Tiles_Col", obj_safety_net)
global.encounter_check = true

global.character_attributes = 
{
	hp_max: 1, 
	hp_current: 30,
	xp_max: 30, 
	xp_current: 0,
	strength: 10,
	vitality: 10, 
	agility: 10,
	dexterity: 10
}
global.character_attributes.hp_max = 10 + (2 * global.character_attributes.vitality)
global.character_attributes.hp_current = global.character_attributes.hp_max
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