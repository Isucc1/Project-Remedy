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
	case "Settings" :	subMenu = 2;	index = 0;			break;
	case "Credits" :	subMenu = 3;	index = 0;			break;
	case "Quit" :		game_end(0001);						break;
	default :			subMenu = 0;	index = 0;			return;

} 