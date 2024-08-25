//list of music
switch (room){
	case rm_mainMenu:	roomMusic = mus_mainMenu;	break;
	default:			roomMusic = noone;			break;
}
if !musPlaying && roomMusic != noone{	currentlyPlaying = audio_play_sound(roomMusic,	1,true);	musPlaying = true;	}
if musPlaying && roomMusic == noone{	audio_stop_sound(currentlyPlaying)	}