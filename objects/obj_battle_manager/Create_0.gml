ally_turn = false
enemy_turn = false
current_turn = 0
global.enemy_busy = false
_timer = 30

turn_order = []
global.rolls_array = []
global.rolls_struct = {}

var _initiative_roll = 0

function next_turn() {
	if (current_turn <= array_length(turn_order) - 2) current_turn++
	else current_turn = 0
}

with (obj_battle_ally_parent) {
	_initiative_roll = irandom_range(1, 20) + global.character_attributes.agility
	while (array_contains(global.rolls_array, _initiative_roll)) _initiative_roll--;
	array_push(global.rolls_array, _initiative_roll)
	variable_struct_set(global.rolls_struct, _initiative_roll, id)
}

with (obj_enemy_parent) {
	_initiative_roll = irandom_range(1, 20) + enemy_attributes.agility
	while (array_contains(global.rolls_array, _initiative_roll)) _initiative_roll--;
	array_push(global.rolls_array, _initiative_roll)
	variable_struct_set(global.rolls_struct, _initiative_roll, id)
}

var _working_array = global.rolls_array
var _original_working_array = _working_array
var _max_val = _working_array[0]

while (array_length(_working_array) >= 1) {
	
	_max_val = _working_array[0]
	
	for (var _i = 0; _i <= array_length(_working_array) - 1; _i++) {
	    if (_working_array[_i] > _max_val) {
	        _max_val = _working_array[_i]
	    }
	}
	array_push(turn_order, variable_struct_get(global.rolls_struct, _max_val))
	array_delete(_working_array, array_get_index(_working_array, _max_val), 1)
}