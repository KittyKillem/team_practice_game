if (paused) {

/// Dim bg
draw_set_color(c_black);
draw_set_alpha(0.6);
draw_rectangle(0, 0, display_get_gui_width(), display_get_gui_height(), false);
draw_set_color(c_white)
draw_set_alpha(1);

/// menus

var menu_x = 20;
var menu_y = 20;
var line_h = 30;
var box_width = 180;
var box_height = line_h * 2 + 10;

// background rectangle
draw_set_color(c_black);
draw_rectangle(
    menu_x - 10,
    menu_y - 5,
    menu_x - 10 + box_width,
    menu_y - 5 + box_height,
    false
);

draw_set_halign(fa_left);
draw_set_valign(fa_top);

	// Resume
	if (menu_index == 0) draw_set_color(#7aaeff);
	else draw_set_color(c_white);

	draw_text(menu_x, menu_y, "Resume");

	// Quit
	if (menu_index == 1) draw_set_color(#7aaeff);
	else draw_set_color(c_white);

	draw_text(menu_x, menu_y + line_h, "Quit Game");

	draw_set_color(c_white);


//player_image
draw_sprite_ext(spr_player_idle_down, 0, 470, 110, 7, 7,0,c_white,1);



/// HP and XP Bars
// check player exists
    var p = instance_find(obj_player, 0);
    if (!instance_exists(p)) exit;

    //  bar size + position 
    var _bar_x = 550;
    var _bar_y = 0;
    var _bar_width = 220;
    var _bar_height = 18;

    // HP
    var _health_width = _bar_width * (global.character_attributes.hp_current / global.character_attributes.hp_max);
	 _bar_y += _bar_height + 8;
	draw_sprite_stretched(spr_box, 0, _bar_x, _bar_y, _bar_width, _bar_height);
    draw_sprite_stretched_ext(spr_box, 1, _bar_x, _bar_y, _health_width, _bar_height, c_red, 0.6);
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
	draw_text(_bar_x + _bar_width / 2, _bar_y + _bar_height / 2, "HP");

    // XP
    var _xp_width = _bar_width * (global.character_attributes.xp_current / global.character_attributes.xp_max);
    _bar_y += _bar_height + 8;
    draw_sprite_stretched(spr_box, 0, _bar_x, _bar_y, _bar_width, _bar_height);
    draw_sprite_stretched_ext(spr_box, 1, _bar_x, _bar_y, _xp_width, _bar_height, make_color_rgb(43,142,255), 0.6);
    draw_text(_bar_x + _bar_width / 2, _bar_y + _bar_height / 2, "XP");
	
//// STATS
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);

    var text_x = _bar_x;
    var text_y = _bar_y + _bar_height + 0;
    var line_h = 18;

    var xp_left = max(0, global.character_attributes.xp_max - global.character_attributes.xp_current);
	
	draw_text_ext(text_x, text_y, 
	"Max.HP: " + string(global.character_attributes.hp_max) +
	"\nXP: " + string(global.character_attributes.xp_current) + " / " + string(global.character_attributes.xp_max) +
	"\nSTR: " + string(global.character_attributes.strength) +
	"\nDEX: " + string(global.character_attributes.dexterity) +
	"\nVIT: " + string(global.character_attributes.vitality)
	,25, 400)
    

    
}

/*

draw_text(text_x, text_y + line_h * 0, "Max.HP: " + string(global.character_attributes.hp_max));
	draw_text(text_x, text_y + line_h * 1, "XP: " + string(global.character_attributes.xp_current) + " / " + string(global.character_attributes.xp_max));
    draw_text(text_x, text_y + line_h * 2, "STR: " + string(global.character_attributes.strength));
    draw_text(text_x, text_y + line_h * 3, "DEX: " + string(global.character_attributes.dexterity));
    draw_text(text_x, text_y + line_h * 4, "VIT: " + string(global.character_attributes.vitality));