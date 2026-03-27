draw_self()

draw_set_font(fnt_battle_display)

draw_set_halign(fa_center)
draw_set_valign(fa_middle)

draw_text_transformed(x, y, string(round(global.music_volume * 10)), 2.5, 2.5, 0)

draw_set_halign(fa_left)
draw_set_valign(fa_top)

draw_text_transformed(x - 125, y - 110, "Music Volume", 3, 3, 0)