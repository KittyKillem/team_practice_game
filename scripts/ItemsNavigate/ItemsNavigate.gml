global.items_struct = {item1: true, item2: false, item3: false, item4: false, item5: false, item6: false, item7: false, item8: false}
global.items_current = "item1"
global.item_next = ""

function items_navigate_next(){
	// Target the current button,
	_target_button_string = "obj_button_" + global.items_current
	_target_button_obj = asset_get_index(_target_button_string)
	// Unselect it and End Animation
	_target_button_obj.button_selected = false
	_target_button_obj.x = _target_button_obj.xstart
	_target_button_obj.y = _target_button_obj.ystart
	_target_button_obj.animate_button = false
	
	//		Next Button = True
	if (global.items_struct.item1){
		
		global.items_struct.item2 = true;
		global.item_next = "item2"
		
		
	} else if (global.items_struct.item2) {
		
		with (obj_battle_button_parent) instance_destroy()
			
		global.items_struct = {item1: false, item2: false, item3: false, item4: false, item5: true, item6: false, item7: false, item8: false}
		global.items_current = "item5"
		global.item_next = ""
			
		instance_create_layer(29, 150, "Instances", obj_button_item5, {image_xscale: 0.8, image_yscale: 0.8})
		instance_create_layer(83, 150, "Instances", obj_button_item6, {image_xscale: 0.8, image_yscale: 0.8})
	
		instance_create_layer(29, 168, "Instances", obj_button_item7, {image_xscale: 0.8, image_yscale: 0.8})
		instance_create_layer(83, 168, "Instances", obj_button_item8, {image_xscale: 0.8, image_yscale: 0.8})
		
		obj_item_page_tracker.page = 2
		
		// Set internal variables of selected button.
		_target_button_string = "obj_button_" + global.items_current
		_target_button_obj = asset_get_index(_target_button_string)
		_target_button_obj.button_selected = true
		
		return
		
	} else if (global.items_struct.item3) {
		
		global.items_struct.item4 = true;
		global.item_next = "item4"
		
		
	} else if (global.items_struct.item4) {
		
		with (obj_battle_button_parent) instance_destroy()
			
		global.items_struct = {item1: false, item2: false, item3: false, item4: false, item5: false, item6: false, item7: true, item8: false}
		global.items_current = "item7"
		global.item_next = ""
			
		instance_create_layer(29, 150, "Instances", obj_button_item5, {image_xscale: 0.8, image_yscale: 0.8})
		instance_create_layer(83, 150, "Instances", obj_button_item6, {image_xscale: 0.8, image_yscale: 0.8})
	
		instance_create_layer(29, 168, "Instances", obj_button_item7, {image_xscale: 0.8, image_yscale: 0.8})
		instance_create_layer(83, 168, "Instances", obj_button_item8, {image_xscale: 0.8, image_yscale: 0.8})
		
		obj_item_page_tracker.page = 2
		
		// Set internal variables of selected button.
		_target_button_string = "obj_button_" + global.items_current
		_target_button_obj = asset_get_index(_target_button_string)
		_target_button_obj.button_selected = true
		
		return
	} else if (global.items_struct.item5) {
		
		global.items_struct.item6 = true;
		global.item_next = "item6"
		
		
	} else if (global.items_struct.item7) {
		
		global.items_struct.item8 = true;
		global.item_next = "item8"
		
	} else if (global.items_struct.item6) {
		
		global.items_struct.item6 = true;
		global.item_next = "item6"
		
	} else if (global.items_struct.item8) {
		
		global.items_struct.item8 = true;
		global.item_next = "item8"
		
	}
	
	
	//		Current Button = False
	if (global.items_current != global.item_next) variable_struct_set(global.items_struct, global.items_current, false)
	// Current Button -> Next Button
	global.items_current = global.item_next
	// Set internal variables of selected button.
	_target_button_string = "obj_button_" + global.items_current
	_target_button_obj = asset_get_index(_target_button_string)
	_target_button_obj.button_selected = true
}

function items_navigate_prev(){
	// Target the current button,
	_target_button_string = "obj_button_" + global.items_current
	_target_button_obj = asset_get_index(_target_button_string)
	// Unselect it and End Animation
	_target_button_obj.button_selected = false
	_target_button_obj.x = _target_button_obj.xstart
	_target_button_obj.y = _target_button_obj.ystart
	_target_button_obj.animate_button = false
	
	//		Next Button = True
	if (global.items_struct.item6){
		
		global.items_struct.item5 = true;
		global.item_next = "item5"
		
		
	} else if (global.items_struct.item5) {
		
		with (obj_battle_button_parent) instance_destroy()
			
		global.items_struct = {item1: false, item2: true, item3: false, item4: false, item5: false, item6: false, item7: false, item8: false}
		global.items_current = "item2"
		global.item_next = ""
			
		instance_create_layer(29, 150, "Instances", obj_button_item1, {image_xscale: 0.8, image_yscale: 0.8})
		instance_create_layer(83, 150, "Instances", obj_button_item2, {image_xscale: 0.8, image_yscale: 0.8})
	
		instance_create_layer(29, 168, "Instances", obj_button_item3, {image_xscale: 0.8, image_yscale: 0.8})
		instance_create_layer(83, 168, "Instances", obj_button_item4, {image_xscale: 0.8, image_yscale: 0.8})
		
		obj_item_page_tracker.page = 1
		
		// Set internal variables of selected button.
		_target_button_string = "obj_button_" + global.items_current
		_target_button_obj = asset_get_index(_target_button_string)
		_target_button_obj.button_selected = true
		
		return
		
	} else if (global.items_struct.item4) {
		
		global.items_struct.item3 = true;
		global.item_next = "item3"
		
		
	} else if (global.items_struct.item7) {
		
		with (obj_battle_button_parent) instance_destroy()
			
		global.items_struct = {item1: false, item2: false, item3: false, item4: true, item5: false, item6: false, item7: false, item8: false}
		global.items_current = "item4"
		global.item_next = ""
			
		instance_create_layer(29, 150, "Instances", obj_button_item1, {image_xscale: 0.8, image_yscale: 0.8})
		instance_create_layer(83, 150, "Instances", obj_button_item2, {image_xscale: 0.8, image_yscale: 0.8})
	
		instance_create_layer(29, 168, "Instances", obj_button_item3, {image_xscale: 0.8, image_yscale: 0.8})
		instance_create_layer(83, 168, "Instances", obj_button_item4, {image_xscale: 0.8, image_yscale: 0.8})
		
		obj_item_page_tracker.page = 1
		
		// Set internal variables of selected button.
		_target_button_string = "obj_button_" + global.items_current
		_target_button_obj = asset_get_index(_target_button_string)
		_target_button_obj.button_selected = true
		
		return
	} else if (global.items_struct.item2) {
		
		global.items_struct.item1 = true;
		global.item_next = "item1"
		
		
	} else if (global.items_struct.item8) {
		
		global.items_struct.item7 = true;
		global.item_next = "item7"
		
	} else if (global.items_struct.item1) {
		
		global.items_struct.item1 = true;
		global.item_next = "item1"
		
	} else if (global.items_struct.item3) {
		
		global.items_struct.item3 = true;
		global.item_next = "item3"
		
	} 
	
	
	//		Current Button = False
	if (global.items_current != global.item_next)variable_struct_set(global.items_struct, global.items_current, false)
	// Current Button -> Next Button
	global.items_current = global.item_next
	// Set internal variables of selected button.
	_target_button_string = "obj_button_" + global.items_current
	_target_button_obj = asset_get_index(_target_button_string)
	_target_button_obj.button_selected = true
}

function items_navigate_ver(){
	// Target the current button,
	_target_button_string = "obj_button_" + global.items_current
	_target_button_obj = asset_get_index(_target_button_string)
	// Unselect it and End Animation
	_target_button_obj.button_selected = false
	_target_button_obj.x = _target_button_obj.xstart
	_target_button_obj.y = _target_button_obj.ystart
	_target_button_obj.animate_button = false
	
	//		Next Button = True
	if (global.items_struct.item1){
		
		global.items_struct.item3 = true;
		global.item_next = "item3"
		
		
	} else if (global.items_struct.item2) {
		
		global.items_struct.item4 = true;
		global.item_next = "item4"
		
		
	} else if (global.items_struct.item3) {
		
		global.items_struct.item1 = true;
		global.item_next = "item1"
		
		
	} else if (global.items_struct.item4) {
		
		global.items_struct.item2 = true;
		global.item_next = "item2"
		
	} else if (global.items_struct.item6) {
		
		global.items_struct.item8 = true;
		global.item_next = "item8"
		
	} else if (global.items_struct.item5) {
		
		global.items_struct.item7 = true;
		global.item_next = "item7"
		
	} else if (global.items_struct.item8) {
		
		global.items_struct.item6 = true;
		global.item_next = "item6"
		
	} else if (global.items_struct.item7) {
		
		global.items_struct.item5 = true;
		global.item_next = "item5"
		
	} 
	
	
	//		Current Button = False
	variable_struct_set(global.items_struct, global.items_current, false)
	// Current Button -> Next Button
	global.items_current = global.item_next
	// Set internal variables of selected button.
	_target_button_string = "obj_button_" + global.items_current
	_target_button_obj = asset_get_index(_target_button_string)
	_target_button_obj.button_selected = true
}