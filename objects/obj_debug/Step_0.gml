if global.roomType == "Serious" || global.debug == false{
	instance_destroy()
}
if keyboard_check_pressed(ord("F"))		fade(20, 30, 20)