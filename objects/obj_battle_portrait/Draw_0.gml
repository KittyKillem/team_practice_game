draw_self()

draw_set_font(fnt_battle_display)

if (instance_exists(obj_battle_player) ) {
	var _display_hp = obj_battle_player.character_attributes.hp_current
	draw_text_transformed_colour(x + 15, y - 15, "HP: " + string(floor(_display_hp)) + "/" + string(global.character_attributes.hp_max) + "\nStr: " + string(global.character_attributes.strength) + "\nAgi: " + string(global.character_attributes.agility), 0.5, 0.5, 0, c_gray, c_gray, c_gray, c_gray, 1)
}


	
