if keyboard_check_pressed(global.upKey) index--
else if keyboard_check_pressed(global.downKey) index++

if keyboard_check_pressed(global.interactionKey){
	switch (array_get(titleScreenOptions[subMenu], index)){
	
	case "Play" :		subMenu = 1;						break;
	case "First Test Room" :	
		change_room(rm_firstTestRoom, 384, 384); 
		audio_stop_sound(mus_mainMenu)	
	break;
	case "Totally Original Maze" :			
		change_room(rm_maze, 224, 376);	
		audio_stop_sound(mus_mainMenu)	
		audio_play_sound(mus_pacMan,2,false)
	break;
	case "Puzzle Test":
		change_room(rm_puzzleTest, 340, 192)
		audio_stop_sound(mus_mainMenu)	
	break;
	case "The Serious Room":
		change_room(rm_seriousRoom, 170, 165)
		audio_stop_sound(mus_mainMenu)
	break;
	case "Blake's First Map":
		change_room(rm_blakeFirstMap, 400, 400)
		audio_stop_sound(mus_mainMenu)
	break;
	case "Dialogue Test":
		change_room(rm_dialogueTest, 400, 400)
		audio_stop_sound(mus_mainMenu)
	break;
	case "Forest Test":
		change_room(rm_forest, 400, 400)
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
}