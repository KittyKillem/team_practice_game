
var _bar_x = 16
var _bar_y = 16
var _bar_width = 256
var _bar_height = 32

// Set properties of Draw statements
draw_set_font(Font1)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)

draw_sprite_stretched(spr_box, 0, _bar_x, _bar_y, _bar_width, _bar_height)


// Healthbar
var _health_width = _bar_width * (hp_current / hp_max)
draw_sprite_stretched_ext(spr_box, 1, _bar_x, _bar_y, _health_width, _bar_height, c_red, 0.6)
draw_text(_bar_x + _bar_width / 2, _bar_y + _bar_height / 2, "HP")
// XP bar
var _xp_width = _bar_width * (xp_current / xp_max)
_bar_y += _bar_height + 8
draw_sprite_stretched(spr_box, 0, _bar_x, _bar_y, _bar_width, _bar_height)
draw_sprite_stretched_ext(spr_box, 1, _bar_x, _bar_y, _xp_width, _bar_height, #2b8eff, 0.6)
draw_text(_bar_x + _bar_width / 2, _bar_y + _bar_height / 2, "XP")

draw_set_halign(fa_left)
draw_set_valign(fa_top)