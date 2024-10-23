if round(abs(follow.x - x)) >= 40 || round(abs(follow.y - y)) >= 30{
	state = cameraStates.catchup
} else if is_in_range(round(abs(follow.x - x)), 15, 40) || is_in_range(round(abs(follow.y - y)), 15, 40)	state = cameraStates.normal
else state = cameraStates.stopped



if follow != noone{
	if round(abs(follow.x - x)) >= 5{
		switch(state){
			case cameraStates.normal:
				x += sign(follow.x - x)  * 1.5
			break
	
			case cameraStates.catchup:
				x += (sign(follow.x - x)) * 3
			break;
	
			default:
			break;
		}
	}
	if round(abs(follow.y - y)) >= 5{
		switch(state){
			case cameraStates.normal:
				y += sign(follow.y - y)  * 1.5
			break
	
			case cameraStates.catchup:
				y += (sign(follow.y - y)) * 3 
			break;
	
			default:
			break;
		}
	}
}

camera_set_view_pos(view_camera[0], x - 180, y - 120)

show_debug_message("Followee: {0}\nCamera State: {1}\n Distance to followee X: {2}\n Followee Y: {3}", object_get_name(follow.object_index), state, round(abs(follow.x - x)), round(abs(follow.y - y)))