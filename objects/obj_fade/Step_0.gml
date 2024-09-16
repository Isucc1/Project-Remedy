x = camera_get_view_x(view_camera[0])
y =	camera_get_view_y(view_camera[0])

image_xscale = room_width
image_yscale = room_height

if timer > 0{
	timer -= (delta_time/16000)
	if timer <= 0{
			switch(phase){
				case 0:	phase++;	timer = holdFadeTime;	alpha = 1;	break;
				case 1:	phase++;	timer = fadeInTime;		alpha = 1;	break;
				case 2:	instance_destroy();	break;
			}
	}
}
switch(phase){
	case 0: alpha += 1/(fadeOutTime);	break;
	case 1: alpha = 1					break;
	case 2: alpha -= 1/(fadeInTime); if obj_playerMain.transitioning == true obj_playerMain.transitioning = false;	break;
	default: instance_destroy()				break;
}

show_debug_message("{0}, {1}, {2}", phase, timer, alpha)