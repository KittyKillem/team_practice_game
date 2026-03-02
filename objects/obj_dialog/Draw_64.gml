var _x = 0
var _y = gui_h * 0.7
var _w = gui_w
var _h = gui_h

draw_sprite_stretched(spr_box, 0, _x, _y, _w, _h)

_x += 16
_y += 16

draw_set_font(Font1)

var _name = messages[current_message].name
draw_set_colour(global.char_colors[$ _name]);
draw_text(_x, _y, _name)
draw_set_colour(c_white)

_y += 40 

draw_text_ext(_x, _y, draw_message, -1, _w - _x *2)