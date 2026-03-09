global.buttons_struct = {attack: true, special: false, defend: false, flee: false}
global.button_current = "attack"
global.button_next = ""

global.target_enemy = 0

var _target_button_string = ""
var _target_button_obj = obj_button_attack

function select_next_hor(){
	
	_target_button_string = "obj_button_" + global.button_current
	_target_button_obj = asset_get_index(_target_button_string)
	_target_button_obj.button_selected = false
	_target_button_obj.x = _target_button_obj.xstart
	_target_button_obj.y = _target_button_obj.ystart
	_target_button_obj.animate_button = false
	
	if (global.buttons_struct.attack){
		
		global.buttons_struct.special = true;
		global.button_next = "special"
		
		
	} else if (global.buttons_struct.special) {
		
		global.buttons_struct.attack = true;
		global.button_next = "attack"
		
		
	} else if (global.buttons_struct.defend) {
		
		global.buttons_struct.flee = true;
		global.button_next = "flee"
		
		
	} else if (global.buttons_struct.flee) {
		
		global.buttons_struct.defend = true;
		global.button_next = "defend"
	}
	
	variable_struct_set(global.buttons_struct, global.button_current, false)
	global.button_current = global.button_next
	
	_target_button_string = "obj_button_" + global.button_current
	_target_button_obj = asset_get_index(_target_button_string)
	_target_button_obj.button_selected = true
	
}

function select_next_ver(){
	
	_target_button_string = "obj_button_" + global.button_current
	_target_button_obj = asset_get_index(_target_button_string)
	_target_button_obj.button_selected = false
	_target_button_obj.x = _target_button_obj.xstart
	_target_button_obj.y = _target_button_obj.ystart
	_target_button_obj.animate_button = false
	
	if (global.buttons_struct.attack){
		
		global.buttons_struct.defend = true;
		global.button_next = "defend"
		
		
	} else if (global.buttons_struct.special) {
		
		global.buttons_struct.flee = true;
		global.button_next = "flee"
		
		
	} else if (global.buttons_struct.defend) {
		
		global.buttons_struct.attack = true;
		global.button_next = "attack"
		
		
	} else if (global.buttons_struct.flee) {
		
		global.buttons_struct.special = true;
		global.button_next = "special"
	}
	
	variable_struct_set(global.buttons_struct, global.button_current, false)
	global.button_current = global.button_next
	
	_target_button_string = "obj_button_" + global.button_current
	_target_button_obj = asset_get_index(_target_button_string)
	_target_button_obj.button_selected = true
	
}

function select_next_hor_enemy(){
	
	if (global.target_enemy == obj_enemy1 && instance_exists(obj_enemy2)){
		
		global.target_enemy = obj_enemy2
		
		
	} else if (global.target_enemy == obj_enemy2 && instance_exists(obj_enemy1)) {
		
		global.target_enemy = obj_enemy1
		
		
	} else if (global.target_enemy == obj_enemy3 && instance_exists(obj_enemy4)) {
		
		global.target_enemy = obj_enemy4
		
		
	} else if (global.target_enemy == obj_enemy4 && instance_exists(obj_enemy3)) {
		
		global.target_enemy = obj_enemy3
		
	}
	
}

function select_next_ver_enemy(){
	
	if (global.target_enemy == obj_enemy1 && instance_exists(obj_enemy3)){
		
		global.target_enemy = obj_enemy3
		
		
	} else if (global.target_enemy == obj_enemy2 && instance_exists(obj_enemy4)) {
		
		global.target_enemy = obj_enemy4
		
		
	} else if (global.target_enemy == obj_enemy3 && instance_exists(obj_enemy1)) {
		
		global.target_enemy = obj_enemy1
		
		
	} else if (global.target_enemy == obj_enemy4 && instance_exists(obj_enemy2)) {
		
		global.target_enemy = obj_enemy2
		
	}
	
}
/*
function ally_attack(ally)
{
	obj_battle_manager.ally_turn = false
}