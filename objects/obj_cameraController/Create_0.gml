view_enabled = true;
view_visible[0] = true;

view_xport[0] = 0;
view_yport[0] = 0;
view_wport[0] = 360;
view_hport[0] = 240;

view_camera[0] = camera_create_view(0, 0, view_wport[0], view_hport[0], 0, obj_playerMain, -1, -1, 400, 250);

if instance_exists(obj_playerMain)	follow = obj_playerMain
if follow != noone{
	x = follow.x
	y = follow.y
}
camHorizontalSpd = 0
camVerticalSpd = 0


//Set Cameramode to Follow
enum cameraStates{
	
	stopped,
	normal,
	catchup,
	cutscene
	
}
state = cameraStates.normal