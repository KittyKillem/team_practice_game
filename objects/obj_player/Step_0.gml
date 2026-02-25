/*
var _hor = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var _ver = keyboard_check(ord("S")) - keyboard_check(ord("W"));

move_and_collide(_hor * move_speed, _ver * move_speed, tilemap_to_collide);

*/
var _hor = keyboard_check(ord("D")) - keyboard_check(ord("A"))
var _ver = keyboard_check(ord("S")) - keyboard_check(ord("W"))

if (_hor + _ver > 1 || _hor + _ver < -1)
{
	clamp(_hor,-0.5, 0.5);
	clamp(_ver,-0.5, 0.5); 
}

move_and_collide(_hor * move_speed,_ver * move_speed, tilemap_to_collide, undefined, undefined, undefined, move_speed, move_speed)

if (_hor !=0 or _ver != 0)
{
	if (_ver > 0) sprite_index = spr_player_walk_down;
	else if (_ver < 0) sprite_index = spr_player_walk_up;
	else if (_hor < 0) sprite_index = spr_player_walk_left;
	else if (_hor > 0) sprite_index = spr_player_walk_right;
	facing = point_direction(0, 0, _hor, _ver)
} 

else

{
	if (sprite_index == spr_player_walk_left) sprite_index = spr_player_idle_left
	else if (sprite_index == spr_player_walk_right) sprite_index = spr_player_idle_right	
	else if (sprite_index == spr_player_walk_up) sprite_index = spr_player_idle_up
	else if (sprite_index == spr_player_walk_down) sprite_index = spr_player_idle_down
}

if keyboard_check(vk_space)
{
	var _inst = instance_create_depth(x, y, depth, obj_attack)
	_inst.image_angle = facing
}