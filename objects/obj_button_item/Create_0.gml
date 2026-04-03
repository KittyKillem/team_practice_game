function button_function() {
	audio_play_sound(snd_battle_beep, 0, false)

	with (obj_battle_button_parent) instance_destroy()
	
	obj_battle_manager.menu_items = true
	
	global.items_struct = {item1: true, item2: false, item3: false, item4: false, item5: false, item6: false, item7: false, item8: false}
	global.items_current = "item1"
	global.item_next = ""
	
	instance_create_layer(29, 150, "Instances", obj_button_item1, {button_selected: true, image_xscale: 0.8, image_yscale: 0.8})
	instance_create_layer(83, 150, "Instances", obj_button_item2, {image_xscale: 0.8, image_yscale: 0.8})
	
	instance_create_layer(29, 168, "Instances", obj_button_item3, {image_xscale: 0.8, image_yscale: 0.8})
	instance_create_layer(83, 168, "Instances", obj_button_item4, {image_xscale: 0.8, image_yscale: 0.8})
	instance_create_layer(111, 168, "Instances", obj_item_page_tracker)
}