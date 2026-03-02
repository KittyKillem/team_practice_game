if(instance_exists(obj_dialog)) exit;

// if knockback is happening, override movement target
if (alarm[1] >= 0)
{
	 target_x = x + kb_x
	 target_y = y + kb_y
}

// restrict movement to a single unit of measurement
var _hor = clamp(target_x - x, -1, 1)
var _ver = clamp(target_y - y, -1 ,1)

// restrict diagonal movement
if (_hor + _ver > 1 || _hor + _ver < -1)
{
	clamp(_hor,-0.5, 0.5);
	clamp(_ver,-0.5, 0.5); 
}

// move and collide function
move_and_collide(_hor, _ver, [tilemap_to_collide, obj_enemy_parent])