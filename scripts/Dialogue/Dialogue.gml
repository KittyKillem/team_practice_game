function create_dialog(_messages){
	if (instance_exists(obj_dialog)) return;
	
	var _inst = instance_create_depth(0, 0, 0, obj_dialog)
	_inst.messages = _messages
	_inst.current_message = 0
}

char_colors = 
{
	"Congrats": c_yellow,
	"Cross": c_yellow,
	"Your_name_here": c_aqua,
	"Dweebus Maximus": c_red
}

welcome_dialog = [
{
	name: "Cross",
	msg: "Andrew was here."
},
{
	name: "Your_name_here",
	msg: "Mhm."
},
{
	name: "Cross",
	msg: "My name's cross btw. This is test dialogue"
},
{
	name: "Your_name_here",
	msg: "Okay..."
},
{
	name: "Cross",
	msg: "Can you please just play my shitty game already."
}
]

dialog_two = [{name: "Dweebus Maximus", msg: "Hehehe. Fuck off, kid."}]