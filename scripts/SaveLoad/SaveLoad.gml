function save_game(){
	 
	 var _save_struct = {
		character_one: global.character_attributes ,
		character_two: global.character_two_attributes,
		character_three: global.character_three_attributes,
		room_current: room,
		position_x: obj_player.x,
		position_y: obj_player.y
	 }
	 
	var _save_string = json_stringify(_save_struct)
	 
	var _save_file = file_text_open_write("save.txt")
	
	file_text_write_string(_save_file, _save_string)
	
	file_text_close(_save_file)
}

function load_game(){
	if (file_exists("save.txt"))
	{
		var _save_file = file_text_open_read("save.txt")
		
		var _load_json = file_text_read_string(_save_file)
		
		var _load_struct = json_parse(_load_json)
		
		global.character_attributes = _load_struct.character_one
		global.character_two_attributes = _load_struct.character_two
		global.character_three_attributes = _load_struct.character_three
		
		global.x_goto = _load_struct.position_x 
		global.y_goto = _load_struct.position_y
		
		room_goto(_load_struct.room_current)
		
		file_text_close(_save_file)
	} else {
		
		global.character_attributes = 
		{
			hp_max: 1, 
			hp_current: 30,
			xp_max: 30, 
			xp_current: 0,
			strength: 7,
			vitality: 9, 
			agility: 14,
			dexterity: 8,
			intellect: 14,
			willpower: 13,
			special1: {
				name: "Magic Missile",
				cost: 8,
				description: "Deals heavy magic damage"
			},
			special2: false,
			special3: false,
			special4: false
		}
		global.character_attributes.hp_max = 10 + (2 * global.character_attributes.vitality)
		global.character_attributes.hp_current = global.character_attributes.hp_max

		global.character_two_attributes = {
			hp_max: 1, 
			hp_current: 30,
			xp_max: 30, 
			xp_current: 0,
			strength: 12,
			vitality: 14,
			agility: 7,
			dexterity: 9,
			intellect: 7,
			willpower: 11,
			special1: {
				name: "On the Chin",
				cost: 5,
				description: "Defend while drawing enemy attention",
			},
			special2: false,
			special3: false,
			special4: false
		}
		global.character_two_attributes.hp_max = 10 + (2 * global.character_two_attributes.vitality)
		global.character_two_attributes.hp_current = global.character_two_attributes.hp_max

		global.character_three_attributes = { 
			hp_max: 1, 
			hp_current: 30, 
			xp_max: 30, 
			xp_current: 0, 
			strength: 9, 
			vitality: 8, 
			agility: 8, 
			dexterity: 8, 
			intellect: 12, 
			willpower: 15, 
			special1: { 
				name: "Heal", 
				cost: 12, 
				description: "Restore HP of Self or Ally" 
			},
			special2: false,
			special3: false,
			special4: false
		}
		global.character_three_attributes.hp_max = 10 + (2 * global.character_three_attributes.vitality)
		global.character_three_attributes.hp_current = global.character_three_attributes.hp_max
		
		room_goto(rm_village)
	}
}


