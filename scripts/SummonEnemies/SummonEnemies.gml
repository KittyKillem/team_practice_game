enemies_forest = 
[
	{
		// WOLF
		hp_max: 18,
		hp_current: 18,
		strength: 5,
		vitality: 4,
		agility: 13,
		dexterity: 5,
		sprite: spr_wolf
	},
	{
		// MUSHROOM
		hp_max: 24,
		hp_current: 24,
		strength: 4,
		vitality: 7,
		agility: 7,
		dexterity: 5,
		sprite: spr_mushroom_enemy
	},
	{
		// FOREST SNAKE
		hp_max: 16,
		hp_current: 16,
		strength: 3,
		vitality: 3,
		agility: 11,
		dexterity: 5,
		sprite: spr_snek_dungeon
	}
]

enemies_dungeon = [
	{
		// SLIME
		hp_max: 28,
		hp_current: 28,
		strength: 3,
		vitality: 9,
		agility: 2,
		dexterity: 5,
		sprite: spr_slime_green
	},
	{
		// DUNGEON SNAKE
		hp_max: 14,
		hp_current: 14,
		strength: 3,
		vitality: 2,
		agility: 11,
		dexterity: 5,
		sprite: spr_snek_dungeon
	}
]

enemies_snowy = [
{
	// FROST WOLF
		hp_max: 22,
		hp_current: 22,
		strength: 5,
		vitality: 6,
		agility: 13,
		dexterity: 5,
		sprite: spr_wolf_ice
},
{
	// FROST GOLEM
		hp_max: 28,
		hp_current: 28,
		strength: 7,
		vitality: 14,
		agility: 4,
		dexterity: 5,
		sprite: spr_ice_golem_idle
}
]

function SummonEnemies(_room){
	// Set Enemy Count
	if (_room == rm_halls) {
		var _enemy_count = irandom_range(1, 3)
		var _enemies_array = variable_clone(global.enemies_dungeon) 
	}
	else if (_room == rm_snowy) {
		var _enemy_count = irandom_range(1, 3)
		var _enemies_array = variable_clone(global.enemies_snowy) 
	}
	// SHOULD BE FOREST ENEMIES
	else {
		var _enemy_count = 4 //irandom_range(2, 4) 
		var _enemies_array = variable_clone(global.enemies_forest) 
	}
	
	var _enemy = instance_create_layer(214, 88, "Instances", obj_enemy1)
	
	_enemy.enemy_attributes = variable_clone(_enemies_array[irandom_range(0, array_length(_enemies_array) - 1)])
	_enemy.sprite_index = _enemy.enemy_attributes.sprite
	_enemy.enemy_attributes.hp_current = _enemy.enemy_attributes.hp_max
	
	
	if (_enemy_count > 1) {
		var _enemy2 = instance_create_layer(284, 85, "Instances", obj_enemy2)
	
		_enemy2.enemy_attributes = variable_clone(_enemies_array[irandom_range(0, array_length(_enemies_array) - 1)])
		_enemy2.sprite_index = _enemy2.enemy_attributes.sprite
		_enemy2.enemy_attributes.hp_current = _enemy2.enemy_attributes.hp_max
		
		if (_enemy_count > 2) {
			var _enemy3 = instance_create_layer(203, 119, "Instances", obj_enemy3)
	
			_enemy3.enemy_attributes = variable_clone(_enemies_array[irandom_range(0, array_length(_enemies_array) - 1)])
			_enemy3.sprite_index = _enemy3.enemy_attributes.sprite
			_enemy3.enemy_attributes.hp_current = _enemy3.enemy_attributes.hp_max
			
			if (_enemy_count > 3) {
				
				var _enemy4 = instance_create_layer(270, 114, "Instances", obj_enemy4)
	
				_enemy4.enemy_attributes = _enemies_array[irandom_range(0, array_length(_enemies_array) - 1)]
				_enemy4.sprite_index = _enemy4.enemy_attributes.sprite
				_enemy4.enemy_attributes.hp_current = _enemy4.enemy_attributes.hp_max
				}
		}
	}
}