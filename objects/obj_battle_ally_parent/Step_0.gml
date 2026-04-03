if(variable_instance_exists(id, "begin_turn") &&  begin_turn && x < xstart + lunge_distance)
{
	delay_timer--
	if (delay_timer <= 0){
		x++
		if (x >= xstart + lunge_distance)
		{
			begin_turn = false
			delay_timer = 20
		}
	}
} 
else if (end_turn = true)
{
	x -= 1 
	if (x <= xstart)
	{
		global.ally_busy = false
		global.enemy_busy = false
		end_turn = false 
		obj_battle_manager.next_turn()
	}
}

// Shake Backward
if(damage_animation_start && x > xstart - damage_shake_strength)
{
	image_blend = c_red
	x -= 2 
	if (x <= xstart - damage_shake_strength)
	{
		damage_animation_start = false
		damage_animation_right = true
	}
} 
// Shake Forward
else if (damage_animation_right)
{
	timer_one--
	if (timer_one<= 0)
	{
		x += 4 
		if (x >= xstart + damage_shake_strength)
		{
			damage_animation_right = false
			damage_animation_ending = true
			timer_one = 10
		}
	}
}
// Return to original Location
else if (damage_animation_ending)
{
	timer_two--
	if(timer_two <= 0)
	{
		x = xstart
		damage_animation_ending = false
		character_attributes.hp_current -= damage_taken
		timer_two = 10
		if (character_attributes.hp_current <= 0 and object_index == obj_battle_player) {
			game_restart()
		} else if (character_attributes.hp_current <= 0)  {
			var _was_referencing = obj_battle_manager.turn_order[obj_battle_manager.current_turn]
			
			if (obj_battle_manager.current_turn <= array_length(obj_battle_manager.turn_order) - 2) {
				
				var _was_next = obj_battle_manager.turn_order[obj_battle_manager.current_turn + 1]
				
			}
			else var _was_next = obj_battle_manager.turn_order[0]
			
			
			
			array_delete( obj_battle_manager.turn_order, array_get_index( obj_battle_manager.turn_order, id ), 1 )
			
			if ( array_length( obj_battle_manager.turn_order ) == 1 ) instance_destroy()
			
			if ( _was_referencing == id ) {
				obj_battle_manager.current_turn = array_get_index(obj_battle_manager.turn_order, _was_next)	
			} else {
				obj_battle_manager.current_turn = array_get_index(obj_battle_manager.turn_order, _was_referencing)
			}
	 
			
			instance_destroy();
		}
		global.ally_busy = false
		image_blend = c_white
	}
}