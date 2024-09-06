draw_set_color(c_white)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
widest = 0;
for (var i = 0; i < array_length(pauseMenuOptions[subMenu]); i++){
	
	if i != index	draw_text_color(180, (120 + (i*14)), pauseMenuOptions[subMenu][i],c_white, c_white, c_white, c_white, 1)
	else			draw_text_color(180, (120 + (i*14)), pauseMenuOptions[subMenu][i],c_yellow, c_yellow, c_yellow, c_yellow, 1)
	var _width = string_length(pauseMenuOptions[subMenu][i])
	if widest < _width widest = _width
	
	
}

draw_sprite_stretched(spr_menuBox, 0, (360/2)-((widest*9)/2), 110, widest*9, (array_length(pauseMenuOptions[subMenu])*14)+6)
draw_sprite_stretched(spr_menuBox, 0, (360/2)-(string_length(currentMenu[subMenu])*9)/2, 97, string_length(currentMenu[subMenu])*9, 14)
draw_set_color(c_yellow)
draw_text(180, 104, currentMenu[subMenu])