window_set_size(1366, 768)
surface_resize(application_surface, 1366, 768)

window_set_position(240, 180)


facing = 0

instance_create_layer(x, y, "Instances", obj_safety_net)
encounter_check = false
alarm[2] = 400


if (!instance_exists(MenuController)) instance_create_depth(0, 0, 0, MenuController)