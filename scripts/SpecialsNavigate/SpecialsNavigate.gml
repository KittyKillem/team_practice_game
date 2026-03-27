global.specials_struct = {special1: true, special2: false, special3: false, special4: false}
global.specials_current = "special1"
global.special_next = ""

function specials_navigate_hor(){
	// Target the current button,
	_target_button_string = "obj_button_" + global.specials_current
	_target_button_obj = asset_get_index(_target_button_string)
	// Unselect it and End Animation
	_target_button_obj.button_selected = false
	_target_button_obj.x = _target_button_obj.xstart
	_target_button_obj.y = _target_button_obj.ystart
	_target_button_obj.animate_button = false
	
	//		Next Button = True
	if (global.specials_struct.special1){
		
		global.specials_struct.special2 = true;
		global.special_next = "special2"
		global.ui_align = "top"
		
		
	} else if (global.specials_struct.special2) {
		
		global.specials_struct.special1 = true;
		global.special_next = "special1"
		global.ui_align = "top" 
		
		
	} else if (global.specials_struct.special3) {
		
		global.specials_struct.special4 = true;
		global.special_next = "special4"
		global.ui_align = "bottom"
		
		
	} else if (global.specials_struct.special4) {
		
		global.specials_struct.special3 = true;
		global.special_next = "special3"
		global.ui_align = "bottom"
	}
	
	
	//		Current Button = False
	variable_struct_set(global.specials_struct, global.specials_current, false)
	// Current Button -> Next Button
	global.specials_current = global.special_next
	// Set internal variables of selected button.
	_target_button_string = "obj_button_" + global.specials_current
	_target_button_obj = asset_get_index(_target_button_string)
	_target_button_obj.button_selected = true
}

function specials_navigate_ver(){
	// Target the current button,
	_target_button_string = "obj_button_" + global.specials_current
	_target_button_obj = asset_get_index(_target_button_string)
	// Unselect it and End Animation
	_target_button_obj.button_selected = false
	_target_button_obj.x = _target_button_obj.xstart
	_target_button_obj.y = _target_button_obj.ystart
	_target_button_obj.animate_button = false
	
	//		Next Button = True
	if (global.specials_struct.special1){
		
		global.specials_struct.special3 = true;
		global.special_next = "special3"
		global.ui_align = "bottom"
		
		
	} else if (global.specials_struct.special2) {
		
		global.specials_struct.special4 = true;
		global.special_next = "special4"
		global.ui_align = "bottom"
		
		
	} else if (global.specials_struct.special3) {
		
		global.specials_struct.special1 = true;
		global.special_next = "special1"
		global.ui_align = "top"
		
		
	} else if (global.specials_struct.special4) {
		
		global.specials_struct.special2 = true;
		global.special_next = "special2"
		global.ui_align = "top"
	}
	
	
	//		Current Button = False
	variable_struct_set(global.specials_struct, global.specials_current, false)
	// Current Button -> Next Button
	global.specials_current = global.special_next
	// Set internal variables of selected button.
	_target_button_string = "obj_button_" + global.specials_current
	_target_button_obj = asset_get_index(_target_button_string)
	_target_button_obj.button_selected = true
}