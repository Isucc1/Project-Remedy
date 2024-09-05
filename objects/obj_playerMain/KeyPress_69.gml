if !layer_exists("hitboxes"){
	layer_create(0, "hitboxes")
}
if canMove && global.roomType = "Combat"{
	if abilityOneCooldownMeter = 1{
		var attack = instance_create_layer(x, y, "hitboxes", obj_attackParent)
			attack.source = "Good Team"
			attack.canHurt = true
			attack.attackPower = playerAttack
			attack.timerOne = playerRange
			attack.direction = directionFacing * 90 + 90
			abilityOneCooldownMeter -= 1
		switch (class){
			case 4:
				attack.speed = 4
				attack.sprite_index = spr_lightningPlaceholder
				attack.attackType = "Lightning"
				attack.attackPower = playerAttack * 0.5
			break;
		
			default :
				attack.speed = 6
				attack.sprite_index = spr_attackPlaceholder
				attack.attackType = "bullet"
			break;		
		}
	}
}