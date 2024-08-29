
//Camera mode set to follow
if cameramode = 1{
	x += (xTo - x)/4;
	y += ((yTo - y)/4) - 16
}
//Camera mode set to snap
if cameramode = 2{
	x = xTo
	y = yTo
}

if (follow != noone){
	    xTo = follow.x
	    yTo = follow.y
}

var vm = matrix_build_lookat(x,y,-10,x,y,0,0,1,0);
camera_set_view_mat(camera,vm);