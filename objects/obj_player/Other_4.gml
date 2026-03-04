window_set_size(1366, 768)
surface_resize(application_surface, 1366, 768)

window_set_position(240, 180)

x = xstart
y = ystart


facing = 0

if (!instance_exists(MenuController)) instance_create_depth(0, 0, 0, MenuController)