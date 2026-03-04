if(begin_attack && x < xstart + lunge_distance)
{
	x += 1
	if (x >= xstart + lunge_distance)
	{
		begin_attack = false
		damage_dealt = irandom_range(8, 15)
		
		global.target_enemy.enemy_attributes.hp_current -= damage_dealt
		
		var _x = global.target_enemy.x - 15
		var _y = global.target_enemy.y - 10
		
		var _damage_display = instance_create_layer(_x, _y, "Instances", obj_damage_number)
		_damage_display.damage_display = damage_dealt
		end_attack = true
	}
} 
else if (end_attack = true)
{
	x -= 1	
	if (x <= xstart)
	{
		end_attack = false
	}
}