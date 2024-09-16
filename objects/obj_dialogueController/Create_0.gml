show_debug_message("hello")

depth = -15999
if instance_exists(obj_dialogueController){
	instance_destroy()
}

enum faces{
	
	none,
	characterDefault,
	characterMad,
	characterPissed,
	characterHappy,
	characterJoyous,
	characterSad,
	characterDepressed,
	
	adventurerFace,

} enum boxes{
	
	text,
	textWithPortrait,
	portrait,
	name,
	
}


box_length[boxes.text] = 10 * 32
box_length[boxes.textWithPortrait] = 8.5 * 32
box_length[boxes.portrait] = 1.5 * 32
box_length[boxes.name] = 3 * 32

box_height[boxes.text] = 2.5 * 32
box_height[boxes.textWithPortrait] = 2.5 * 32
box_height[boxes.portrait] = 2.5 * 32
box_height[boxes.name] = 0.5 * 32

topY = 144
textX = 16
portraitX = 288


msg[0] = ["hola mi amigo", "" ,faces.none, "top", "left"]
msg[1] = ["lovely wisbas today isn't it?", "", faces.none, "top", "left"]
msg[2] = ["i gotta test out the portrait faces and see if im coding them right", "", faces.none, "top", "left"]
msg[3] = ["none", "", faces.none, "bottom", "left"]
msg[4] = ["default; btw im also gonna test the positioning code to see if it looks right", "", faces.characterDefault, "bottom", "right"]
msg[5] = ["mad", "", faces.characterMad, "top", "left"]
msg[6] = ["pissed", "", faces.characterPissed, "top", "right"]
msg[7] = ["happy", "", faces.characterHappy, "top", "left"]
msg[8] = ["joyous", "", faces.characterJoyous, "top", "right"]
msg[9] = ["sad", "", faces.characterSad, "bottom", "left"]
msg[10] = ["depressed", "", faces.characterDepressed, "bottom", "right"]
msg[11] = ["...", "", faces.none, "top", "left"]
msg[12] = ["You see why I'm not the main artist now right", "", faces.none, "top", "left"]



Message_to_Type = string_char_at(msg[0][0], 0)

current_message = 0
current_char = 1
dialogue_length = array_length(msg)



timer = 1