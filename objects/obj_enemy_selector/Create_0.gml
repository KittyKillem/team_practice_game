if (instance_exists(obj_enemy1)) global.target_enemy = obj_enemy1
else if (instance_exists(obj_enemy2)) global.target_enemy = obj_enemy2
else if (instance_exists(obj_enemy3)) global.target_enemy = obj_enemy3
else if (instance_exists(obj_enemy4)) global.target_enemy = obj_enemy4

// Desired pixel size

var target_width = global.target_enemy.sprite_width + 5;
var target_height = global.target_enemy.sprite_height + 5;

// Calculate scale factor based on sprite dimensions
image_xscale = target_width / sprite_get_width(sprite_index);
image_yscale = target_height / sprite_get_height(sprite_index);

starting_xscale = image_xscale
starting_yscale = image_yscale

grow = true

obj_battle_manager.ally_turn= false