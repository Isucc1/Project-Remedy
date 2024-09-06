if keyboard_check_pressed(global.upKey) index--
else if keyboard_check_pressed(global.downKey) index++

if keyboard_check_pressed(global.interactionKey){
	switch (array_get(titleScreenOptions[subMenu], index)){
	
	case "Play" :		subMenu = 1;						break;
	case "rm_firstTestRoom" :	
		room = rm_firstTestRoom; 
		audio_stop_sound(mus_mainMenu)	
	break;
	case "rm_maze" :			
		room = rm_maze;	
		audio_stop_sound(mus_mainMenu)	
		audio_play_sound(mus_pacMan,2,false)
	break;
	case "rm_puzzleTest":
		room = rm_puzzleTest
		audio_stop_sound(mus_mainMenu)	
	break;
	case "rm_seriousRoom":
		room = rm_seriousRoom
		audio_stop_sound(mus_mainMenu)
	break;
	case "Settings" :	subMenu = 2;	index = 0;			break;
	case "Credits" :	subMenu = 3;	index = 0;			break;
	case "Quit" :		game_end(0001);						break;
	default :			subMenu = 0;	index = 0;			return;

	}	widest = 0;
}

if index == -1{
	index = (array_length(titleScreenOptions[subMenu]) - 1) ;
} else if index == (array_length(titleScreenOptions[subMenu])){
	index = 0
}/*
switch (array_length(titleScreenOptions[subMenu])){
	case 7:		menuText = string("{0}\n{1}\n{2}\n{3}\n{4}\n{5}\n{6}", array_get(titleScreenOptions[subMenu], 0), array_get(titleScreenOptions[subMenu], 1), array_get(titleScreenOptions[subMenu], 2), array_get(titleScreenOptions[subMenu], 3), array_get(titleScreenOptions[subMenu], 4), array_get(titleScreenOptions[subMenu], 5), array_get(titleScreenOptions[subMenu], 6)) break;
	case 6:		menuText = string("{0}\n{1}\n{2}\n{3}\n{4}\n{5}", array_get(titleScreenOptions[subMenu], 0), array_get(titleScreenOptions[subMenu], 1), array_get(titleScreenOptions[subMenu], 2), array_get(titleScreenOptions[subMenu], 3), array_get(titleScreenOptions[subMenu], 4), array_get(titleScreenOptions[subMenu], 5)) break;
	case 5:		menuText = string("{0}\n{1}\n{2}\n{3}\n{4}", array_get(titleScreenOptions[subMenu], 0), array_get(titleScreenOptions[subMenu], 1), array_get(titleScreenOptions[subMenu], 2), array_get(titleScreenOptions[subMenu], 3), array_get(titleScreenOptions[subMenu], 4)) break;
	case 4:		menuText = string("{0}\n{1}\n{2}\n{3}", array_get(titleScreenOptions[subMenu], 0), array_get(titleScreenOptions[subMenu], 1), array_get(titleScreenOptions[subMenu], 2), array_get(titleScreenOptions[subMenu], 3)) break;
	case 3:		menuText = string("{0}\n{1}\n{2}", array_get(titleScreenOptions[subMenu], 0), array_get(titleScreenOptions[subMenu], 1), array_get(titleScreenOptions[subMenu], 2)) break;
	case 2:		menuText = string("{0}\n{1}", array_get(titleScreenOptions[subMenu], 0), array_get(titleScreenOptions[subMenu], 1)) break;
	case 1:		menuText = string("{0}", array_get(titleScreenOptions[subMenu], 0)) break;
}

show_debug_message(index)
