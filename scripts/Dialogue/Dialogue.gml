function create_dialog(_messages){
	if (instance_exists(obj_dialog)) return;
	
	var _inst = instance_create_depth(0, 0, 0, obj_dialog)
	_inst.messages = _messages
	_inst.current_message = 0
}

char_colors = 
{
	"Congrats": c_yellow,
	"Renatus": c_yellow,
	"Lyran": c_aqua,
	"Edea": c_lime,
	"Campfire": c_orange
}

welcome_dialog = [
{
	name: "Renatus",
	msg: "Alright, Lyran. The dungeon is up ahead, we'll follow you inside."
},
{
	name: "Lyran",
	msg: "Sounds good to me, boss."
},
{
	name: "Renatus",
	msg: "By the way, you can hold TAB to make dialog go by faster."
}
]

dialog_two = [
	{
		name: "Edea",
		msg: "The devs remembered my name!"
	}
]

campfire_dialog = [
	{
		name: "Campfire",
		msg: "Health restored and game saved!"
	}
]