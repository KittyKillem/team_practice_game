// Stop functioning when out of messages to display
if (current_message < 0) exit;

var _str = messages[current_message].msg

if (current_char < string_length(_str))
{
	
	current_char += char_speed * (1 + keyboard_check(input_key))
	draw_message = string_copy(_str, 0, current_char)
} 
else if (keyboard_check_pressed(vk_space))
{
	current_message++
	if (current_message >= array_length(messages))
	{
		instance_destroy()	
		
		if (next_room) room_goto_next()
	}
	else
	{
		current_char = 0
	}
}