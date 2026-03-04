draw_self()
draw_shadow(1)

// draw HP bar
draw_sprite_stretched(spr_box, 0, x - 20, y + 15, 40, 8)
draw_sprite_stretched_ext(spr_box, 1, x - 20, y + 15, 40 * (character_attributes.hp_max / character_attributes.hp_current), 8, c_lime, 0.7)