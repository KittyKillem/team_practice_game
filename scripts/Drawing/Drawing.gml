function draw_shadow(_offset=0, transparency = 0.4, color = -1){
	draw_sprite_ext(spr_shadow, 0, x, y +_offset, 1, 1, 0, color, transparency)
}