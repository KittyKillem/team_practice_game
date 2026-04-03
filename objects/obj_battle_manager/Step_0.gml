other_timer--
if (other_timer > -1) exit

if (object_is_ancestor(turn_order[current_turn].object_index, obj_battle_ally_parent)) ally_turn = true;
else ally_turn = false

if (object_is_ancestor(turn_order[current_turn].object_index, obj_enemy_parent)) enemy_turn = true;
else enemy_turn = false



if (ally_turn && !instance_exists(obj_enemy_selector) && !global.ally_busy && !global.enemy_busy)
{
	
	if(menu_special){
	
		if (keyboard_check_pressed(ord("D")) || keyboard_check_pressed(ord("A")))
		{
			audio_play_sound(snd_battle_beep, 0, false)
			specials_navigate_hor()
			
		} else if ( keyboard_check_pressed(ord("W") ) || keyboard_check_pressed(ord("S"))) {
			audio_play_sound(snd_battle_beep, 0, false)
			specials_navigate_ver()
		} else if (keyboard_check_pressed(vk_tab)) {
			
			audio_play_sound(snd_battle_beep, 0, false)
			
			with (obj_battle_button_parent) instance_destroy()
			
			obj_battle_manager.menu_special = false
			
			global.buttons_struct = {attack: true, special: false, defend: false, item: false, flee: false}
			global.button_current = "attack"
			global.button_next = ""
			
			instance_create_layer(29, 150, "Instances", obj_button_attack, {image_xscale: 0.8, image_yscale: 0.8})
			instance_create_layer(83, 150, "Instances", obj_button_special, {image_xscale: 0.8, image_yscale: 0.8})
			
			instance_create_layer(29, 168, "Instances", obj_button_defend, {image_xscale: 0.8, image_yscale: 0.8})
			instance_create_layer(83, 168, "Instances", obj_button_item, {image_xscale: 0.8, image_yscale: 0.8})
			instance_create_layer(119, 158.4, "Instances", obj_button_flee, {image_xscale: 0.8, image_yscale: 0.8})
			
		}
	
	
	} else if (menu_items) {
		
		if (keyboard_check_pressed(ord("D")))
		{
			audio_play_sound(snd_battle_beep, 0, false)
			items_navigate_next()
			
		} else if (keyboard_check_pressed(ord("A"))) { 
		
			audio_play_sound(snd_battle_beep, 0, false)
			items_navigate_prev()	
		
		} else if (keyboard_check_pressed(ord("W")) || keyboard_check_pressed(ord("S"))) {
			audio_play_sound(snd_battle_beep, 0, false)
			items_navigate_ver()
		} else if (keyboard_check_pressed(vk_tab)) {
			
			audio_play_sound(snd_battle_beep, 0, false)
			with (obj_battle_button_parent) instance_destroy()
			instance_destroy(obj_item_page_tracker)
			
			obj_battle_manager.menu_items = false
			
			global.buttons_struct = {attack: true, special: false, defend: false, item: false, flee: false}
			global.button_current = "attack"
			global.button_next = ""
			
			instance_create_layer(29, 150, "Instances", obj_button_attack, {image_xscale: 0.8, image_yscale: 0.8})
			instance_create_layer(83, 150, "Instances", obj_button_special, {image_xscale: 0.8, image_yscale: 0.8})
			
			instance_create_layer(29, 168, "Instances", obj_button_defend, {image_xscale: 0.8, image_yscale: 0.8})
			instance_create_layer(83, 168, "Instances", obj_button_item, {image_xscale: 0.8, image_yscale: 0.8})
			instance_create_layer(119, 158.4, "Instances", obj_button_flee, {image_xscale: 0.8, image_yscale: 0.8})
			
			
			
		}
	 	
	} else if (menu_special_yesno) {
	
		if ( keyboard_check_pressed( ord("A") ) || keyboard_check_pressed( ord( "D" ) ) ) Special_Prompt_Select()
		if ( keyboard_check_pressed(vk_tab) ) Special_Prompt_Close()
	
	}else {
	 
		if (keyboard_check_pressed(ord("D")) )
		{
			audio_play_sound(snd_battle_beep, 0, false)
			select_next_hor()
		} else if ( keyboard_check_pressed(ord("A")) ) {
			audio_play_sound(snd_battle_beep, 0, false)
			select_prev_hor()
		} else if ( keyboard_check_pressed(ord("W") ) || keyboard_check_pressed(ord("S")))
		{
			audio_play_sound(snd_battle_beep, 0, false)
			select_next_ver()
		}
	}
} else if (enemy_turn && !global.enemy_busy)
{
	_timer--
	if(_timer <= 0) {
		turn_order[current_turn].attack_player()
		global.enemy_busy = true
		_timer = 25
	}
}