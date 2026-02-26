// target the players position if they are too close
if (instance_exists(obj_player) && distance_to_object(obj_player) <= distance_to_start_chase)
{
	target_x = obj_player.x
	target_y = obj_player.y
}
// target random position near spawn point
else
{
	target_x = random_range(xstart - 100, xstart + 100)
	target_y = random_range(ystart - 100, ystart + 100)
}
// repeat after 60 frames
alarm[0] = 60