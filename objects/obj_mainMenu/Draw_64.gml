draw_sprite_stretched(spr_boxes, 0, (room_width/2)-((widest*9)/2), 110, widest*9, (array_length(titleScreenOptions[subMenu])*14)+6)
draw_sprite_stretched(spr_boxes, 0, (room_width/2)-(string_length(currentMenu[subMenu])*9)/2, 97, string_length(currentMenu[subMenu])*9, 14)

draw_set_color(c_white)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
widest = 0;
for (var i = 0; i < array_length(titleScreenOptions[subMenu]); i++){
	
	if i != index	draw_text_color(180, (120 + (i*14)), titleScreenOptions[subMenu][i],c_white, c_white, c_white, c_white, 1)
	else			draw_text_color(180, (120 + (i*14)), titleScreenOptions[subMenu][i],c_yellow, c_yellow, c_yellow, c_yellow, 1)
	var _width = string_length(titleScreenOptions[subMenu][i])
	if widest < _width widest = _width
	
	
}
draw_sprite(spr_titlePlaceholder,0,room_width/2, 10)
draw_set_color(c_yellow)
draw_text(180, 104, currentMenu[subMenu])

draw_sprite(spr_keyboardButtons, 38, 344, 192)
draw_sprite(spr_keyboardButtons, 34, 344, 208)
draw_sprite(spr_keyboardButtons, 41, 344, 224)
draw_set_halign(fa_right)
draw_set_valign(fa_top)
draw_set_color(c_white)
draw_text_ext(332, 188, "up -\ndown -\nconfirm - ", 15, 9999)

