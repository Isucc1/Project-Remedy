if instance_exists(obj_playerMain){
	x = camera_get_view_x(view_camera[0]) + 352;
	y = camera_get_view_y(view_camera[0]) + 8;
}

if global.paused == true		instance_deactivate_all(true)
else						instance_activate_all()