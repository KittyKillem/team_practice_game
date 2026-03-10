if(begin_attack && x < xstart + lunge_distance)
{
	x += 1 * (delta_time / 10000)
	if (x >= xstart + lunge_distance)
	{
		begin_attack = false
		damage_dealt = random_range(0.7, 1.4) * character_attributes.strength
		
		global.target_enemy.take_damage(damage_dealt)
		
		var _x = global.target_enemy.x - 15 
		var _y = global.target_enemy.y - 10
		
		var _damage_display = instance_create_layer(_x, _y, "Instances", obj_damage_number, {belongs_to: global.target_enemy.id})
		_damage_display.damage_display = floor(damage_dealt)
		end_attack = true
	}
} 
else if (end_attack = true)
{
	x -= 1 
	if (x <= xstart)
	{
		global.ally_busy = false
		global.enemy_busy = false
		end_attack = false 
		obj_battle_manager.next_turn()
	}
}

// Shake Backward
if(damage_animation_start && x > xstart - damage_shake_strength)
{
	image_blend = c_red
	x -= 2 
	if (x <= xstart - damage_shake_strength)
	{
		damage_animation_start = false
		damage_animation_right = true
	}
} 
// Shake Forward
else if (damage_animation_right)
{
	timer_one--
	if (timer_one<= 0)
	{
		x += 4 
		if (x >= xstart + damage_shake_strength)
		{
			damage_animation_right = false
			damage_animation_ending = true
			timer_one = 10
		}
	}
}
// Return to original Location
else if (damage_animation_ending)
{
	timer_two--
	if(timer_two <= 0)
	{
		x = xstart
		damage_animation_ending = false
		character_attributes.hp_current -= damage_taken
		timer_two = 10
		if (character_attributes.hp_current <= 0) game_restart();
		global.ally_busy = false
		image_blend = c_white
	}
}