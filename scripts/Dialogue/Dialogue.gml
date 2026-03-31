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
	"Campfire": c_orange,
	"Message": c_yellow
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
},
{
	name: "Lyran",
	msg: "Oh..."
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
	},
]
	
wipe_dialog = [
	{
		name: "Message",
		msg: "Game save wiped!"
	},
]
wipe_failed_dialog = [
	{
		name: "Message",
		msg: "No save file detected."
	}
]

warm_campfire_dialog = [
	{
		name: "Campfire",
		msg: "The warm campfire is a welcome sight.\nHealth restored and game saved!"
	},
]

forest_sign_dialog = [
	{
		name: "Message",
		msg: "Towards the scary woods!"
	}
]

snowy_sign_dialog = [
	{
		name: "Message",
		msg: "Towards the beautiful snowy lands..."
	}
]

snowy_sign_dialog = [
	{
		name: "Message",
		msg: "Towards the beautiful snowy lands..."
	}
]