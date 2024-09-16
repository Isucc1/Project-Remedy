if msg[current_message][3] = "top"{
	topY = 16
} else if msg[current_message][3] = "bottom"{
	topY = 144
} else{
	topY = 0
}

if msg[current_message][4] = "right"{
	textX = 16
	portraitX = 288
} else if msg[current_message][4] = "left"{
	textX = 64
	portraitX = 16
} else{
	textX = 0
	portraitX = 0
}

	
	
if timer > 0{
	timer--
	if timer <= 0{
		timer = 1
		if current_char < string_length(msg[current_message][0]){
			current_char++
		}
	}
}if keyboard_check_pressed(global.interactionKey) && current_message < dialogue_length - 1{
	if current_char < string_length(msg[current_message][0]){	
		current_char = string_length(msg[current_message][0]);
	}
	else{ 
		current_char = 0; 	
		current_message++	
	}
} else if  keyboard_check_pressed(global.interactionKey) && current_message >= dialogue_length - 1 {
	instance_destroy()
}
