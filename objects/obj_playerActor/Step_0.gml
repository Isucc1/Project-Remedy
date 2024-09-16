switch(state){
	
	case player_actor_states.idle_down: sprite_index = spr_adventurerPlaceholder; image_xscale = 1;		break;
	case player_actor_states.idle_up:	sprite_index = spr_adventurerBackPlaceholder; image_xscale = 1;	break;
	case player_actor_states.idle_left:	sprite_index = spr_adventurerPlaceholder; image_xscale = -1;	break;
	case player_actor_states.idle_right:sprite_index = spr_adventurerPlaceholder; image_xscale = 1;		break;
	
}