move_speed = 60;
facing = 0
encounter_chance = 1299
encounter_check = false
still = true
_key = "S"

instance_create_layer(x, y, "Tiles_Col", obj_safety_net)
global.encounter_check = false


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

// Global stat variable setup.

global.character_attributes = 
{
	hp_max: 1, 
	hp_current: 30,
	xp_max: 30, 
	xp_current: 0,
	strength: 7,
	vitality: 9, 
	agility: 14,
	dexterity: 8,
	intellect: 14,
	willpower: 13,
	special1: {
		name: "Magic Missile",
		cost: 8,
		description: "Deals heavy magic damage"
	},
	special2: false,
	special3: false,
	special4: false
}
global.character_attributes.hp_max = 10 + (2 * global.character_attributes.vitality)
global.character_attributes.hp_current = global.character_attributes.hp_max

global.character_two_attributes = {
	hp_max: 1, 
	hp_current: 30,
	xp_max: 30, 
	xp_current: 0,
	strength: 12,
	vitality: 14,
	agility: 7,
	dexterity: 9,
	intellect: 7,
	willpower: 11,
	special1: {
		name: "On the Chin",
		cost: 5,
		description: "Defend while drawing enemy attention",
	},
	special2: false,
	special3: false,
	special4: false
}
global.character_two_attributes.hp_max = 10 + (2 * global.character_two_attributes.vitality)
global.character_two_attributes.hp_current = global.character_two_attributes.hp_max

global.character_three_attributes = { 
	hp_max: 1, 
	hp_current: 30, 
	xp_max: 30, 
	xp_current: 0, 
	strength: 9, 
	vitality: 8, 
	agility: 8, 
	dexterity: 8, 
	intellect: 12, 
	willpower: 15, 
	special1: { 
		name: "Heal", 
		cost: 12, 
		description: "Restore HP of Self or Ally" 
	},
	special2: false,
	special3: false,
	special4: false
}
global.character_three_attributes.hp_max = 10 + (2 * global.character_three_attributes.vitality)
global.character_three_attributes.hp_current = global.character_three_attributes.hp_max