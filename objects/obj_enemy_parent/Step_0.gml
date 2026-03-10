// Shake forward
if(damage_animation_start && x < xstart + damage_shake_strength)
{
	image_blend = c_red
	x += 2 * (delta_time / 10000)
	if (x >= xstart + damage_shake_strength)
	{
		damage_animation_start = false
		damage_animation_left = true
	}
} 
// Shake back
else if (damage_animation_left)
{
	timer_one--
	if (timer_one<= 0)
	{
		x -= 4 * (delta_time / 10000)
		if (x <= xstart - damage_shake_strength)
		{
			damage_animation_left = false
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
		enemy_attributes.hp_current -= damage_taken
		timer_two = 10
		global.ally_busy = false
		global.enemy_busy = false
		if (enemy_attributes.hp_current <= 0) {
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
		if (!instance_exists(obj_enemy_parent)) obj_battle_switcher.room_return()
		image_blend = c_white
	}
}

// Lunge forward
if(begin_attack && x > xstart - lunge_distance)
{
	x -= 1
	if (x <= xstart - lunge_distance)
	{
		// Damage Variable Setup
		begin_attack = false
		damage_dealt = random_range(0.7, 1.4) * enemy_attributes.strength
		randomize_target_player()
		
		if (target_player.defending) damage_dealt = damage_dealt / 2
		
		//Call Take Damage Function
		target_player.take_damage(damage_dealt)
		
		var _x = target_player.x + 15 
		var _y = target_player.y 

		var _damage_display = instance_create_layer(_x, _y, "Instances", obj_damage_number, {belongs_to: target_player.id})
		_damage_display.damage_display = floor(damage_dealt)
		end_attack = true
	}
} 
// Return to Base Position After Lunge
else if (end_attack = true)
{
	x += 1
	if (x >= xstart)
	{
		end_attack = false 
		obj_battle_manager.next_turn()
		global.enemy_busy = false
	}
}