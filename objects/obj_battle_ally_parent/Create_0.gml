animate_forward = false
animate_backward = false

lunge_distance = 20

end_turn = false

defending = false

global.ally_busy = false

delay_timer = 20

function attack_enemy(_target)
{
	global.ally_busy = true
	var damage_dealt = random_range(0.7, 1.4) * character_attributes.strength
		
	global.target_enemy.take_damage(damage_dealt)
		
	var _x = global.target_enemy.x - 15 
	var _y = global.target_enemy.y - 10
		
	var _damage_display = instance_create_layer(_x, _y, "Instances", obj_damage_number, {belongs_to: global.target_enemy.id})
	_damage_display.damage_display = floor(damage_dealt)
	end_turn = true
}

// Take Damage Animation variable setup 
damage_shake_strength = 2
damage_animation_start = false
damage_animation_right = false
damage_animation_ending = false

timer_one = 15
timer_two = 15

damage_taken = 0

function take_damage(_amount, _damage_shake = 2)
{
	damage_taken = _amount
	damage_shake_strength = _damage_shake
	damage_animation_start = true
	
	global.ally_busy = true
	global.enemy_busy = true
}