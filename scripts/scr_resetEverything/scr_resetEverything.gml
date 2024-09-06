// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_resetEverything(){
	
	room = rm_mainMenu
	
	global.roomType = "Cutscene"
	obj_pause.pause = false

	display_set_gui_size(360, 240)
	draw_set_font(global.mainFont)

	if instance_exists(obj_playerMain){
		instance_destroy(obj_playerMain)
	} 
}