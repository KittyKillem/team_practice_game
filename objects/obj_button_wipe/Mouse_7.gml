if (animate_button)
{
	if (file_exists("save.txt")) {
		file_delete("save.txt")
		create_dialog(global.wipe_dialog)
	} else create_dialog(global.wipe_failed_dialog)
}