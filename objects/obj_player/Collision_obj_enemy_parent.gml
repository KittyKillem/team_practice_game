// turn red, take damage, and possibly die when interacting with monster. Only every 30 frames
if (alarm[0] < 0) 
{
	image_blend = c_red
	hp_current -= other.damage
	if (hp_current <= 0)
	{
		instance_destroy()
	}
	alarm[0] = 30
}
