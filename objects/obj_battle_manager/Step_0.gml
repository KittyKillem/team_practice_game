if (object_is_ancestor(turn_order[current_turn].object_index, obj_battle_ally_parent)) ally_turn = true;
else ally_turn = false

if (object_is_ancestor(turn_order[current_turn].object_index, obj_enemy_parent)) enemy_turn = true;
else enemy_turn = false


if (ally_turn && !instance_exists(obj_enemy_selector) && !global.ally_busy && !global.enemy_busy)
{
	if (keyboard_check_pressed(ord("D")) || keyboard_check_pressed(ord("A")))
	{
		select_next_hor()
	}

	if (keyboard_check_pressed(ord("W")) || keyboard_check_pressed(ord("S")))
	{
			select_next_ver()
	}
}

if (enemy_turn && !global.enemy_busy)
{
	_timer--
	if(_timer <= 0) {
		turn_order[current_turn].attack_player()
		global.enemy_busy = true
		_timer = 20
	}
}