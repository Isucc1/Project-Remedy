switch(attackType){
	case "Fireball":
		image_xscale = 3
		image_yscale = 3
		speed = 0
		sprite_index = spr_explosion
		if timerTwo <= 0{	timerTwo = 20	}
		attackPower *= 0.5
	break
	default:
		instance_destroy()
	break;
}