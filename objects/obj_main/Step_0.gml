

for (var i = 0; i < array_length(importantObjects); i++){
	if !instance_exists(importantObjects[i]) && global.roomType != "Cutscene"{
		instance_create_depth(0, 0, 0, importantObjects[i])
	}
}

if keyboard_check_pressed(vk_f4){
	
	
	if window_get_fullscreen() == true{
		window_set_fullscreen(false);
	} else if window_get_fullscreen() == false{
	window_set_fullscreen(true);
	}
} 	