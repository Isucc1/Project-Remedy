if inCutscene = false || global.roomType != "Serious"{
	camera_set_view_pos(view_camera[0], x-180, y-120)
	camera_set_view_size(view_camera[0], 360, 240)
} else if global.roomType == "Serious"{
	camera_set_view_pos(view_camera[0], 0, 0)
}
