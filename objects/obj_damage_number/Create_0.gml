alarm[0] = 120

damage_display = ""

depth = -999999

image_xscale = 1.2
image_yscale = 1.2

image_index = irandom_range(0, 2)
image_speed = 0

y = ystart

global.belongs_to = belongs_to
global.exempt = id

with (obj_damage_number) {
		
		if( belongs_to == global.belongs_to && id != global.exempt ) y -= 17
	
	
}