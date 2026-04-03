function draw_shadow(_offset=0, transparency = 0.4, color = -1){
	draw_sprite_ext(spr_shadow, 0, x, y +_offset, 1, 1, 0, color, transparency)
}

function draw_shadow_small(_offset=0, _xscale = 0.75, _yscale = 0.75) {
	draw_sprite_ext(spr_shadow, 0, x, y + _offset, _xscale, _yscale, 0, c_white, 0.4)
}

function draw_shadow_big(_offset=0, _xscale = 1.35, _yscale = 1.35) {
	draw_sprite_ext(spr_shadow, 0, x, y + _offset, _xscale, _yscale, 0, c_white, 0.4)
}