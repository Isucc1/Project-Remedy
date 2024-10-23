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


msg[0] = ["Error: Dialogue not set\nSolution: Fix it", "" ,faces.none, "bottom", "left"]




Message_to_Type = string_char_at(msg[0][0], 0)

current_message = 0
current_char = 1
dialogue_length = array_length(msg)



timer = 1