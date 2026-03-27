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
	} else room_goto(rm_test1)
}


