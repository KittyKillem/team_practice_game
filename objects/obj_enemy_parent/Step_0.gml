if(damage_animation_start && x < xstart + damage_shake_strength)
{
	image_blend = c_red
	x += 2 * (delta_time / 10000)
	if (x >= xstart + damage_shake_strength)
	{
		damage_animation_start = false
		damage_animation_left = true
	}
} 

else if (damage_animation_left)
{
	timer_one--
	if (timer_one<= 0)
	{
		x -= 4 * (delta_time / 10000)
		if (x <= xstart - damage_shake_strength)
		{
			damage_animation_left = false
			damage_animation_ending = true
			timer_one = 10
		}
	}
}

else if (damage_animation_ending)
{
	timer_two--
	if(timer_two <= 0)
	{
		x = xstart
		damage_animation_ending = false
		enemy_attributes.hp_current -= damage_taken
		timer_two = 10
		if (enemy_attributes.hp_current <= 0) instance_destroy();
		if (!instance_exists(obj_enemy_parent)) obj_battle_switcher.room_return()
		image_blend = c_white
	}
}