
var _bar_x = 16
var _bar_y = 16
var _bar_width = 256
var _bar_height = 32

// Set properties of Draw statements
draw_set_font(Font1)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)

if(instance_exists(MenuController) && MenuController.paused == true) exit;

// Healthbar
draw_sprite_stretched(spr_box, 0, _bar_x, _bar_y, _bar_width, _bar_height)
var _health_width = _bar_width * (global.character_attributes.hp_current / global.character_attributes.hp_max)
draw_sprite_stretched_ext(spr_box, 1, _bar_x, _bar_y, _health_width, _bar_height, c_red, 0.6)
draw_text(_bar_x + _bar_width / 2, _bar_y + _bar_height / 2, "HP")
// XP bar
var _xp_width = _bar_width * (global.character_attributes.xp_current / global.character_attributes.xp_max)
_bar_y += _bar_height + 8
draw_sprite_stretched(spr_box, 0, _bar_x, _bar_y, _bar_width, _bar_height)
draw_sprite_stretched_ext(spr_box, 1, _bar_x, _bar_y, _xp_width, _bar_height, #2b8eff, 0.6)
draw_text(_bar_x + _bar_width / 2, _bar_y + _bar_height / 2, "XP")

draw_set_halign(fa_left)
draw_set_valign(fa_top)