//Logic for moving the selection, what every option does, etc

//moving the selection
if keyboard_check_pressed(global.upKey) index--
else if keyboard_check_pressed(global.downKey) index++

if keyboard_check_pressed(global.interactionKey){	//checking if the interaction key is pressed
	switch (array_get(pauseMenuOptions[subMenu], index)){ 	//making what happens depending on which option is selected when the interaction key is pressed; should be releativly self explanatory
		case "Resume" :
			obj_pause.pause = false;	
			instance_activate_all();	
			instance_destroy();		
		break;
		case "Settings" :	
			subMenu = 1; //subMenu 1 is the WIP menu
			index = 0;
		break;
		case "Debug Options" :	
			subMenu = 2;	//subMenu 2 is debug menu
			index = 0;
		break		
		case "Change Room" :	
			subMenu = 3;	//subMenu 3 is room change menu
			index = 0;
		break;		
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
		case "Edit Stats/Values" :	
			subMenu = 4;						
			index = 0;
		break;
		case "Toggle Debug" :	
			toggle(global.debug)		
		break;
		case "Title" :				
			reset_everything()		
		break;
		default :
			subMenu = 0;
			index = 0;	
		break;
		}
	widest = 0;
}

if index == -1{
	index = (array_length(pauseMenuOptions[subMenu]) - 1) ;
} else if index == (array_length(pauseMenuOptions[subMenu])){
	index = 0
}

if subMenu = 4{
	if keyboard_check(global.leftKey){
		switch(index){
			case 0:	if global.classStats[global.class][1]	> 2    global.classStats[global.class][1] -= 2			break;
			case 1: if global.classStats[global.class][3]	> 1    global.classStats[global.class][3] -= 1			break;
			case 2: if global.classStats[global.class][2]	> 0.1  global.classStats[global.class][2] -= 0.1		break;
			case 3: if global.classStats[global.class][5]	> 0.1  global.classStats[global.class][5] -= 0.1		break;
			case 4: if global.classStats[global.class][4]	> 0.1 global.classStats[global.class][4] -= 0.1			break;
			case 5: if global.classStats[global.class][6]	> 1    global.classStats[global.class][6] -= 1			break;
		}
	}
	
	if keyboard_check(global.rightKey){
		switch(index){
			case 0:	if global.classStats[global.class][1]	< 1000 global.classStats[global.class][1] += 2;			break;	
			case 1:	if global.classStats[global.class][3]	< 100  global.classStats[global.class][3] += 1;			break;	
			case 2: if global.classStats[global.class][2]	< 10  global.classStats[global.class][2] += 0.1			break;
			case 3: if global.classStats[global.class][5]	< 10  global.classStats[global.class][5] += 0.1			break;
			case 4: if global.classStats[global.class][4]	< 10  global.classStats[global.class][4] += 0.1			break;
			case 5: if global.classStats[global.class][6]	< 250 global.classStats[global.class][6] += 1			break;
		}
	}
}

