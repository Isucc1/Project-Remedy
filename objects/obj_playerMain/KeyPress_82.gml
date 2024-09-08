if !layer_exists("hitboxes"){
	layer_create(0, "hitboxes")
}	
if canMove && global.roomType = "Combat"{
	if abilityTwoCooldownMeter = 1{
		var attack = instance_create_layer(x, y, "hitboxes", obj_attackParent)
			attack.source = "Good Team"
			attack.canHurt = true
			attack.attackPower = global.playerAttack
			attack.timerOne = global.playerRange
			attack.direction = directionFacing * 90 + 90
			abilityTwoCooldownMeter -= 1
		switch (global.class){
			case 4:	
				attack.speed = 2
				attack.sprite_index = spr_fireballPlaceholder
				attack.attackType = "Fireball"
				attack.attackPower = global.playerAttack * 2
			break;
	
			default :
				attack.speed = 6
				attack.sprite_index = spr_attackPlaceholder
				attack.attackType = "bullet"
			break;		
		}
	}
}
