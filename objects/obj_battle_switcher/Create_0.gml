attributes = global.character_attributes
attributes_two = global.character_two_attributes
attributes_three = global.character_three_attributes

room_to_return = room

function room_return()
{
	room_goto(room_to_return)
	instance_destroy()
}

room_goto(rm_battle)