function Special_Prompt_Open(special){
	
	obj_battle_manager.menu_special = false
	obj_battle_manager.menu_special_yesno = true
	
	with (obj_battle_button_parent) instance_destroy()
	
	global.yesno_struct = {yes: true, no: false}
	global.yesno_current = "yes"
	global.yesno_next = ""
	
	instance_create_layer(29, 170, "Instances", obj_button_yes_special, {image_xscale: 0.8, image_yscale: 0.8, special_name: special.name, special_cost: special.cost, special_description: special.description})
	instance_create_layer(83, 170, "Instances", obj_button_no_special, {image_xscale: 0.8, image_yscale: 0.8})
	
}

function Special_Prompt_Close() {
	
	obj_battle_manager.menu_special = true
	obj_battle_manager.menu_special_yesno = false
	
	with (obj_battle_button_parent) instance_destroy()
	
	global.specials_struct = {special1: true, special2: false, special3: false, special4: false}
	global.specials_current = "special1"
	global.special_next = ""
	
	instance_create_layer(29, 150, "Instances", obj_button_special1, {image_xscale: 0.8, image_yscale: 0.8})
	instance_create_layer(83, 150, "Instances", obj_button_special2, {image_xscale: 0.8, image_yscale: 0.8})
	
	instance_create_layer(29, 168, "Instances", obj_button_special3, {image_xscale: 0.8, image_yscale: 0.8})
	instance_create_layer(83, 168, "Instances", obj_button_special4, {image_xscale: 0.8, image_yscale: 0.8})
	
}

function Special_Prompt_Select(){
	
	// Play the silly sound :3
	audio_play_sound(snd_battle_beep, 0, false)
	
	// Target the current button,
	_target_button_string = "obj_button_" + global.yesno_current + "_special"
	_target_button_obj = asset_get_index(_target_button_string)
	// Unselect it and End Animation
	_target_button_obj.button_selected = false
	_target_button_obj.x = _target_button_obj.xstart
	_target_button_obj.y = _target_button_obj.ystart
	_target_button_obj.animate_button = false
	
	//		Next Button = True
	if (global.yesno_struct.yes){
		
		global.yesno_struct.no = true;
		global.yesno_next = "no"
		
		
	} else {
		
		global.yesno_struct.yes = true;
		global.yesno_next = "yes"
		
		
	} 
	
	
	//		Current Button = False
	variable_struct_set(global.yesno_struct, global.yesno_current, false)
	// Current Button -> Next Button
	global.yesno_current = global.yesno_next
	// Set internal variables of selected button.
	_target_button_string = "obj_button_" + global.yesno_current + "_special"
	_target_button_obj = asset_get_index(_target_button_string)
	_target_button_obj.button_selected = true
}