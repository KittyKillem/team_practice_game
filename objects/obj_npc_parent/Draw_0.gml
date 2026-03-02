draw_self();
draw_shadow(1.5);

if (can_talk && !instance_exists(obj_dialog))
{
	draw_sprite(spr_talk, 0, x, y-16)
}