// return color blend to default
image_blend = c_white

// death logic
if (hp <= 0) 
{
	instance_destroy()
	player_target.xp_current += xp_value
	player_target.add_xp(xp_value)
}