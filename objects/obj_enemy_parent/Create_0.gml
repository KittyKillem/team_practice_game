
// Setup Initial Stats
enemy_attributes = {
	hp_max: 20,
	hp_current: 1,
	strength: 7,
	vitality: 5,
	agility: 10,
	dexterity: 10
}
// Setup HP Stats
enemy_attributes.hp_max = 10 + (2 * enemy_attributes.vitality)
enemy_attributes.hp_current = enemy_attributes.hp_max

// Take Damage Animation variable setup 
damage_shake_strength = 2
damage_animation_start = false
damage_animation_left = false
damage_animation_ending = false

timer_one = 15
timer_two = 15

damage_taken = 0
function take_damage(_amount, _damage_shake = 2)
{
	damage_taken = _amount
	damage_shake_strength = _damage_shake
	damage_animation_start = true
}

// Attack Animation Variable Setup
lunge_distance = 20

begin_attack = false
end_attack = false

target_player = obj_battle_player

// Function to Choose Random Target
function randomize_target_player()
{
	if (instance_number(obj_battle_ally_parent) > 1)	
	{
		target_player = instance_find(obj_battle_ally_parent, irandom(instance_number(obj_battle_ally_parent)))
	} else {
		target_player = obj_battle_ally_parent	
	}
}

function attack_player()
{
	begin_attack = true
	global.ally_busy = true
	global.enemy_busy = true
}