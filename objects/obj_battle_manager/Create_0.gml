ally_turn = true
enemy_turn = false

turn_order = []
global.rolls_array = []
global.rolls_struct = {}

with (obj_battle_ally_parent) {
	var _initiative_roll = irandom_range(1, 20) + other.character_attributes.agility
	while (array_contains(global.rolls_array, _initiative_roll)) _initiative_roll--;
	array_push(global.rolls_array, _initiative_roll)
	global.rolls_struct._initiative_roll = other
}

with (obj_enemy_parent) {
	var _initiative_roll = irandom_range(1, 20) + other.enemy_attributes.agility
	while (array_contains(global.rolls_array, _initiative_roll)) _initiative_roll--;
	array_push(global.rolls_array, _initiative_roll)
	global.rolls_struct._initiative_roll = other
}

var _working_array = global.rolls_array
var _max_val = _working_array.rolls_array[0]

for (var i = 1; i < array_length(_working_array.rolls_array); i++) {
	
	for (var _i = 1; _i < array_length(_working_array.rolls_array); _i++) {
	    if (_working_array.rolls_array[_i] > _max_val) {
	        _max_val = _working_array.rolls_array[_i]
	    }
	}
	array_push(turn_order, global.rolls_struct._max_val)
	array_delete(_working_array, array_get_index(_working_array, _max_val), 1)
}