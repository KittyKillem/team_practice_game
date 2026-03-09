animate_forward = false
animate_backward = false

lunge_distance = 20

begin_attack = false
end_attack = false

global.ally_busy = false

function attack_enemy(_target)
{
	
	begin_attack = true
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