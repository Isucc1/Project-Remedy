if keyboard_check_pressed(global.upKey) index--
else if keyboard_check_pressed(global.downKey) index++

if keyboard_check_pressed(global.interactionKey){
	switch (array_get(pauseMenuOptions[subMenu], index)){
		
		case "Resume" :		obj_pause.pause = false;	
							instance_activate_all();	
							instance_destroy();		
		break;
		
		case "Settings" :	subMenu = 1;
							index = 0;
		break;
		
		case "Debug Options" :	subMenu = 2;	
								index = 0;	
		break;
		
		case "Change Room" :	subMenu = 3;
								index = 0;	
		break;
		
		case "rm_firstTestRoom" :	room = rm_firstTestRoom;	break;
		
		case "rm_maze" :	room = rm_maze;		
							audio_play_sound(mus_pacMan,2,false);
		break;
		
		case "rm_puzzleTest":		room = rm_puzzleTest		break;
		
		case "rm_seriousRoom":		room = rm_seriousRoom		break;
		
		case "Edit Stats/Values" :	subMenu = 1;
									index = 0;	
		break;
		
		case "Toggle Debug" :		toggle(global.debug)		break;
		
		case "Title" :				scr_resetEverything()		break;
	
		default :					subMenu = 0;	index = 0;	break;
		
		}
	widest = 0;
}
if index == -1{
	index = (array_length(pauseMenuOptions[subMenu]) - 1) ;
} else if index == (array_length(pauseMenuOptions[subMenu])){
	index = 0
}