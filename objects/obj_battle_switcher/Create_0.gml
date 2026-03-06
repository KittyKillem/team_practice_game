attributes = {}
if (instance_exists(obj_player))
{
	attributes = global.character_attributes
}

room_current = room
room_to_return = rm_test1

function room_return()
{
	room_goto(room_to_return)
	instance_destroy()
}

room_goto(rm_battle)