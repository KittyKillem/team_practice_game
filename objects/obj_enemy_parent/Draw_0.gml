if (sprite_index == spr_ice_golem_idle) draw_shadow_big(-9)
else draw_shadow(-10)
draw_self()


// draw HP bar
draw_sprite_stretched(spr_box, 0, x - 20, y + 2, 40, 4)
draw_sprite_stretched_ext(spr_box, 1, x - 20, y + 2, 40 * (enemy_attributes.hp_current / enemy_attributes.hp_max), 4, c_lime, 0.7)