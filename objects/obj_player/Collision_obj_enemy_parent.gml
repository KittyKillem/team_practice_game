// turn red, take damage, and possibly die when interacting with monster. Only every 30 frames
if (alarm[0] < 0) 
{
	image_blend = c_red
	hp_current -= other.damage
	// _health_width = _bar_width * (hp_current / hp_max)
	if (hp_current <= 0)
	{
		room_restart()
	}
	alarm[0] = 30
}
