global.roomType = "Serious"
if instance_exists(obj_playerMain){
	obj_playerMain.canMove = false
	obj_playerMain.x = 180
	obj_playerMain.y = 165
	//obj_playerMain.image_xscale = 1.5
	obj_playerMain.image_yscale = 1.5
}
camera_set_view_pos(view_camera[0], 0, 0)