// target destination in movement logic
target_x = x;
target_y = y;


// specify current knockback strength
kb_x = 0
kb_y = 0

// wait 60 frames to begin movement logic
alarm[0] = 60

tilemap_to_collide = layer_tilemap_get_id("Tiles_Col")