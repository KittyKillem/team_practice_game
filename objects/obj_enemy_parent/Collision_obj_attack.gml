// lose health, turn red, and begin knockback logic. End knockback logic after 20 frames
if (alarm[1] < 0)
{
	hp -= other.damage;
	image_blend = c_red;
	// sign() returns 1, 0, or -1. Similar to movement controls, it sets a direction
	// for the enemy to move in while being knocked back.
	kb_x = sign(x - other.x)
	kb_y = sign(y - other.y)
	alarm[1] = 20
}