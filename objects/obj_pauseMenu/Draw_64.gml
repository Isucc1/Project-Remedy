if instance_exists(obj_playerMain)	var _player = obj_playerMain

//Draw Pause Menu

//draw surrounding box
draw_sprite_stretched(spr_menuBox, 0, (360/2)-((widest*9)/2), 110, widest*9, (array_length(pauseMenuOptions[subMenu])*14)+6)
draw_sprite_stretched(spr_menuBox, 0, (360/2)-(string_length(currentMenu[subMenu])*9)/2, 97, string_length(currentMenu[subMenu])*9, 14)

//set text drawing settings (drawn in white, centered, and in the middle of where i tell it to draw to)
draw_set_color(c_white)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)

//setting widest
widest = 0;

//drawing the text (for however many times the variable i is less than the amount of options in the current submenu, draw the next option to the screen)
for (var i = 0; i < array_length(pauseMenuOptions[subMenu]); i++){
	
	//checking if the option being drawn is equal to the currently selected one; if it is, draw it yellow
	if i != index	draw_text_color(180, (120 + (i*14)), pauseMenuOptions[subMenu][i],c_white, c_white, c_white, c_white, 1)
	else			draw_text_color(180, (120 + (i*14)), pauseMenuOptions[subMenu][i],c_yellow, c_yellow, c_yellow, c_yellow, 1)
	
	//set the variable widest to the length of the text, IF and only if widest is less than the variable _width; this makes it so i can draw the surrounding box sprite (see line 3 - 5) as long as the longest option
	var _width = string_length(pauseMenuOptions[subMenu][i])
	if widest < _width widest = _width
	
	
}
draw_set_color(c_yellow)
draw_text(180, 104, currentMenu[subMenu])

if subMenu = 4{
	draw_set_color(c_white)
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	
var _topOutline = 124
var _bottomOutline = _topOutline - 12

var _topHealthbar = 123
var _bottomHealthbar = _topHealthbar - 10

var _distanceBetweenBars = 14

	draw_rectangle(129, _topOutline + _distanceBetweenBars * 0, 251, _bottomOutline + _distanceBetweenBars * 0, false); draw_healthbar(130, _topHealthbar + _distanceBetweenBars * 0, 250, _bottomHealthbar + _distanceBetweenBars * 0, (global.classStats[global.class][1]/1000)* 100, c_black, c_lime,   c_lime,   0, false, false); draw_text_color(190, 118 + _distanceBetweenBars *0, global.classStats[global.class][1], c_black, c_black, c_black, c_black, 1);	draw_text(117, 118 + _distanceBetweenBars * 0, "HP") 
	draw_rectangle(129, _topOutline + _distanceBetweenBars * 1, 251, _bottomOutline + _distanceBetweenBars * 1, false); draw_healthbar(130, _topHealthbar + _distanceBetweenBars * 1, 250, _bottomHealthbar + _distanceBetweenBars * 1, (global.classStats[global.class][3]/100) * 100, c_black, c_maroon, c_maroon, 0, false, false); draw_text_color(190, 118 + _distanceBetweenBars *1, global.classStats[global.class][3], c_black, c_black, c_black, c_black, 1);	draw_text(117, 118 + _distanceBetweenBars * 1, "ATK")
	draw_rectangle(129, _topOutline + _distanceBetweenBars * 2, 251, _bottomOutline + _distanceBetweenBars * 2, false); draw_healthbar(130, _topHealthbar + _distanceBetweenBars * 2, 250, _bottomHealthbar + _distanceBetweenBars * 2, (global.classStats[global.class][2]/10)  * 100, c_black, c_teal,   c_teal,   0, false, false); draw_text_color(190, 118 + _distanceBetweenBars *2, global.classStats[global.class][2], c_black, c_black, c_black, c_black, 1);	draw_text(117, 118 + _distanceBetweenBars * 2, "DEF")
	draw_rectangle(129, _topOutline + _distanceBetweenBars * 3, 251, _bottomOutline + _distanceBetweenBars * 3, false); draw_healthbar(130, _topHealthbar + _distanceBetweenBars * 3, 250, _bottomHealthbar + _distanceBetweenBars * 3, (global.classStats[global.class][5]/10)  * 100, c_black, c_yellow, c_yellow, 0, false, false); draw_text_color(190, 118 + _distanceBetweenBars *3, global.classStats[global.class][5], c_black, c_black, c_black, c_black, 1);	draw_text(117, 118 + _distanceBetweenBars * 3, "SPD")
	draw_rectangle(129, _topOutline + _distanceBetweenBars * 4, 251, _bottomOutline + _distanceBetweenBars * 4, false); draw_healthbar(130, _topHealthbar + _distanceBetweenBars * 4, 250, _bottomHealthbar + _distanceBetweenBars * 4, (global.classStats[global.class][4]/10)  * 100, c_black, c_purple, c_purple, 0, false, false); draw_text_color(190, 118 + _distanceBetweenBars *4, global.classStats[global.class][4], c_black, c_black, c_black, c_black, 1);	draw_text(117, 118 + _distanceBetweenBars * 4, "FR")
	draw_rectangle(129, _topOutline + _distanceBetweenBars * 5, 251, _bottomOutline + _distanceBetweenBars * 5, false); draw_healthbar(130, _topHealthbar + _distanceBetweenBars * 5, 250, _bottomHealthbar + _distanceBetweenBars * 5, (global.classStats[global.class][6]/250) * 100, c_black, c_silver, c_silver, 0, false, false); draw_text_color(190, 118 + _distanceBetweenBars *5, global.classStats[global.class][6], c_black, c_black, c_black, c_black, 1);	draw_text(117, 118 + _distanceBetweenBars * 5, "RG")
}