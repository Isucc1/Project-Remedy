camera = camera_create();
var vm = matrix_build_lookat(x,y,-10,x,y,0,0,1,0);
var pm = matrix_build_projection_ortho(320,240,1,1000)
camera_set_view_mat(camera,vm);
camera_set_proj_mat(camera,pm);
view_camera[0] = camera
follow = obj_playerMain;
xTo = x
yTo = y
//Set Cameramode to Follow
cameramode = 1