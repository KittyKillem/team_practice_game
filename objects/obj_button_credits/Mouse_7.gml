if (animate_button)
{
	if (layer_get_visible("Assets_1") || layer_get_visible("Options")){
		layer_set_visible("Assets_1", false)
		layer_set_visible("Options", false)
		layer_set_visible("Layer_Credits", true)
	} else {
		layer_set_visible("Assets_1", true)
		layer_set_visible("Layer_Credits", false)
	}
}