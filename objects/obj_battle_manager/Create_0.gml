SummonEnemies(obj_battle_switcher.room_to_return)

menu_items = false
menu_special = false
menu_special_yesno = false

ally_turn = false
enemy_turn = false
current_turn = 0
global.enemy_busy = false
_timer = 25

other_timer = 2

turn_order = []
global.rolls_array = []
global.rolls_struct = {}
// The two values above didn't need to be global</3 neither did enemy_busy or ally_busy, really.
// I think I set it that way because I wanted to work with them with other objects, but that would've been
// totally possible having them reference this objects varibales instead. Its probably fine, but may
// cause unnecessary memory usage.. </3
var _initiative_roll = 0

function next_turn() {
	if (current_turn <= array_length(turn_order) - 2) current_turn++
	else current_turn = 0
	if (object_is_ancestor(turn_order[current_turn].object_index, obj_battle_ally_parent)) turn_order[current_turn].defending = false
	obj_battle_manager.turn_order[current_turn].begin_turn = true
}

//		Allies Roll Initiative
with (obj_battle_ally_parent) {
	_initiative_roll = irandom_range(1, 20) + global.character_attributes.agility
	// Lose Ties
	while (array_contains(global.rolls_array, _initiative_roll)) _initiative_roll--;
	// Add roll to array
	array_push(global.rolls_array, _initiative_roll)
	// Add roll to Struct where varname = roll, value = Ally who made the roll.
	variable_struct_set(global.rolls_struct, _initiative_roll, id)
}

//		Enemies Roll Initiative
with (obj_enemy_parent) {
	_initiative_roll = irandom_range(1, 20) + enemy_attributes.agility
	// Lose Ties
	while (array_contains(global.rolls_array, _initiative_roll)) _initiative_roll--;
	// Add roll to array
	array_push(global.rolls_array, _initiative_roll)
	// Add roll to Struct where varname = roll, value = Enemy who made the roll.
	variable_struct_set(global.rolls_struct, _initiative_roll, id)
}

//		Process rolls into Turn Order

// Create a clone of the rolls aray
var _working_array = global.rolls_array
// I dont remember why I made this array... im just gonna leave it for now. Lol. Wtf is this code XD
var _original_working_array = _working_array
// Track the highest roll, this will be put in the final local rolls_array
var _max_val = _working_array[0]

//		Setup the final turn order variable.
while (array_length(_working_array) >= 1) {
	
	_max_val = _working_array[0]
	
	for (var _i = 0; _i <= array_length(_working_array) - 1; _i++) {
	    if (_working_array[_i] > _max_val) {
	        _max_val = _working_array[_i]
	    }
	}
	array_push(turn_order, variable_struct_get(global.rolls_struct, _max_val))
	// Delete the appended value from the working array for the next cycle.
	array_delete(_working_array, array_get_index(_working_array, _max_val), 1)
}

// Come to think of it, I coudl've got away with not making EITHER
// temporary array. I had this idea I'd need the values again later.
// IDK maybe we will! Im just a baby :3

turn_order[current_turn].begin_turn = true