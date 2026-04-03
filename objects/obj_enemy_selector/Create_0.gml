if (instance_exists(obj_enemy1)) global.target_enemy = obj_enemy1
else if (instance_exists(obj_enemy2)) global.target_enemy = obj_enemy2
else if (instance_exists(obj_enemy3)) global.target_enemy = obj_enemy3
else if (instance_exists(obj_enemy4)) global.target_enemy = obj_enemy4

grow = true

obj_battle_manager.ally_turn = false

image_xscale = clamp((global.target_enemy.sprite_height / 24), 1, 3)
image_yscale = clamp((global.target_enemy.sprite_height / 24), 1, 3)

x = global.target_enemy.x
y = global.target_enemy.y - global.target_enemy.sprite_height / 2