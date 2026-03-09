 function save_game(){
	var _save_file = file_text_open_write("save.txt")
	
	file_text_write_real(_save_file, global.character_attributes)
	file_text_close(_save_file)
}

function load_game(){
	
}

global.character_attributes = 
{
	hp_max: 1, 
	hp_current: 30,
	xp_max: 30, 
	xp_current: 0,
	strength: 10,
	vitality: 200, 
	agility: 10,
	dexterity: 10
}
global.character_attributes.hp_max = 10 + (2 * global.character_attributes.vitality)
global.character_attributes.hp_current = global.character_attributes.hp_max