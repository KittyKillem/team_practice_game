if(instance_exists(obj_dialog)) exit;
if(instance_exists(MenuController) && MenuController.paused == true) exit;

/*
var _hor = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var _ver = keyboard_check(ord("S")) - keyboard_check(ord("W"));
var _my_array = [2, 3]
var _my_bool = false

move_and_collide(_hor, _ver, tilemap_to_collide);
*/


// interepret WASD as X and Y directions
var _hor = keyboard_check(ord("D")) - keyboard_check(ord("A"))
var _ver = keyboard_check(ord("S")) - keyboard_check(ord("W"))

// restrict movement when moving diagonally
if (_hor + _ver > 1 || _hor + _ver < -1)
{
	clamp(_hor,-0.5, 0.5); 
	clamp(_ver,-0.5, 0.5); 
}



// prevent character from colliding directly with wall
if (_hor > 0 or _hor < 0)
{
	if (place_meeting(x + (_hor), y, [tilemap_to_collide, obj_enemy_parent]))
	{
		_hor = 0
	}	
}

if (_ver > 0 or _ver < 0)
{
	if (place_meeting(x, y + (_ver), [tilemap_to_collide, obj_enemy_parent]))
	{
		_ver = 0
	}
}

// Move and Collide Function
move_and_collide(_hor, _ver , [tilemap_to_collide, obj_npc_parent], undefined, undefined, undefined, move_speed, move_speed)

// detect movement, and set animation accordingly.
if (_hor !=0 or _ver != 0)
{
	if (_ver > 0) sprite_index = spr_player_walk_down;
	else if (_ver < 0) sprite_index = spr_player_walk_up;
	else if (_hor < 0) sprite_index = spr_player_walk_left;
	else if (_hor > 0) sprite_index = spr_player_walk_right;
	// store the direction moved in as a vector
	facing = point_direction(0, 0, _hor, _ver)
} 

// while not moving, change animation to appropriate idle animation
else
{
	if (sprite_index == spr_player_walk_left) sprite_index = spr_player_idle_left
	else if (sprite_index == spr_player_walk_right) sprite_index = spr_player_idle_right	
	else if (sprite_index == spr_player_walk_up) sprite_index = spr_player_idle_up
	else if (sprite_index == spr_player_walk_down) sprite_index = spr_player_idle_down
}

// Random Encounter Logic

var _total_movement = abs(_hor) + abs(_ver)
var _random_encounter = false
if (_total_movement && encounter_check)
{
	_random_encounter = (irandom(round(encounter_chance * _total_movement)) <= 0)
	encounter_chance -= 99
}
if (_random_encounter) instance_create_depth(0, 0, 0, obj_battle_switcher)

// Safety Net Logic

if (instance_exists(obj_safety_net) && place_meeting(x, y, obj_safety_net))
{
	encounter_check = false
	alarm[2]++
} else if (alarm[2] = -1) {
	encounter_check = true
	if (instance_exists(obj_safety_net)) instance_destroy(obj_safety_net)
	
}
/*
if (!place_meeting(x, y, obj_safety_net)) {
	global.encounter_check = true	
}

/*
// attack when pressing space
if keyboard_check(vk_space)
{
	// create an attack object at your location
	var _inst = instance_create_depth(x, y, depth, obj_attack)
	_inst.damage = strength
	// have the image point in the direction of your most recent movement
	_inst.image_angle = facing
}

