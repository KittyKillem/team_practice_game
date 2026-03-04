
if (keyboard_check_pressed(ord("D")) || keyboard_check_pressed(ord("A")))
{
	if (ally_turn)
	{
		select_next_hor()
	}
}

if (keyboard_check_pressed(ord("W")) || keyboard_check_pressed(ord("S")))
{
	if (ally_turn)
	{
		select_next_ver()
	}
	
}

