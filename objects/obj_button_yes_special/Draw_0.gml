draw_self()

draw_set_font(fnt_main_menu)

draw_set_halign(fa_center)
draw_set_valign(fa_middle)

draw_text_ext_transformed(x, y, button_text, -1, 275, 0.16, 0.16, 0)

draw_set_halign(fa_left)
draw_set_valign(fa_top)

draw_set_font(fnt_battle_display)

draw_text_transformed_colour(17, 138, special_name + ": " + string(special_cost) + " MP", 0.6, 0.6, 0, c_gray, c_gray, c_gray, c_gray, 1)

draw_text_transformed_colour(5, 147, special_description, 0.4, 0.4, 0, c_gray, c_gray, c_gray, c_gray, 1)