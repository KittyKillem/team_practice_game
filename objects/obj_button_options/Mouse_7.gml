if (animate_button)
{
	if (layer_get_visible("Assets_1") || layer_get_visible("Layer_Credits")) {
		layer_set_visible(layer_get_id("Assets_1"), false)
		layer_set_visible(layer_get_id("Layer_Credits"), false)
		layer_set_visible(layer_get_id("Options"), true)
	} else {
		layer_set_visible(layer_get_id("Assets_1"), true)
		layer_set_visible(layer_get_id("Options"), false)
	}
}