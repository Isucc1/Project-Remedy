//initializing things
draw_set_halign(fa_left)

//drawing the textboxes
if msg[current_message][2] = faces.none{
		draw_sprite_stretched(spr_boxes, 1, 16, topY, box_length[boxes.text], box_height[boxes.text])
} else{	
		draw_sprite_stretched(spr_boxes, 1, textX,  topY, box_length[boxes.textWithPortrait], box_height[boxes.textWithPortrait])
		draw_sprite_stretched(spr_boxes, 1, portraitX, topY, box_length[boxes.portrait], box_height[boxes.portrait])
		
		if msg[current_message][4] = "left"{
			draw_sprite_ext(spr_faces, msg[current_message][2], portraitX + 24, topY + 40, -1, 1, 0, c_white, 1)
		} else draw_sprite(spr_faces, msg[current_message][2], portraitX + 24, topY + 40)

}

//drawing the text; taken an older project
if current_message < dialogue_length{
	var Message_to_Type = string_copy(msg[current_message][0], 1, current_char)
	if msg[current_message][4] = "left" && msg[current_message][2] = faces.none{
		draw_text_ext(textX - 45, topY + 3, Message_to_Type, 9, 314)
	} else	draw_text_ext(textX + 3, topY + 3, Message_to_Type, 9, 266)
}