draw_self()
draw_shadow(1)

// HP Bar Color Variable Setup
var _hp_color = c_lime
if (defending) _hp_color = #36f8f6
else _hp_color = c_lime

// draw HP bar
draw_sprite_stretched(spr_box, 0, x - 20, y + 12, 40, 4)
draw_sprite_stretched_ext(spr_box, 1, x - 20, y + 12, 40 * (character_attributes.hp_current / character_attributes.hp_max), 4, _hp_color, 0.8)