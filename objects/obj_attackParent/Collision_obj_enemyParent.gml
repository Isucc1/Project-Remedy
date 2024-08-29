var player = obj_playerMain
	
if source = "Good Team"{
	switch(attackType){
		case "bullet" : if player.abilityOneCooldownMeter < 1 player.abilityOneCooldownMeter += 0.1; if player.abilityTwoCooldownMeter < 1 player.abilityTwoCooldownMeter += 0.1	break;
		default: break;
	}
}