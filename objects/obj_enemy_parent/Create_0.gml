
// Setup Initial Stats
enemy_attributes = {
	hp_max: 20,
	hp_current: 1,
	strength: 10,
	agility: 10,
	dexterity: 10
}
// Setup Current HP
enemy_attributes.hp_current = enemy_attributes.hp_max

// Animation variable setup 
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
