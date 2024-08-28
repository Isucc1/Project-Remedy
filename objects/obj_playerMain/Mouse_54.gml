if !layer_exists("hitboxes"){
	layer_create(0, "hitboxes")
}	
if canMove
	switch (class){
		case 4:
			if canFireSecondAbility = true{
				var attack = instance_create_layer(x, y, "hitboxes", obj_attackParent)
				attack.speed = 2
				attack.sprite_index = spr_fireballPlaceholder
				attack.attackType = "Fireball"
				attack.canHurt = true
				attack.source = "Good Team"
				attack.attackPower = playerAttack * 2
				attack.timer = playerRange
				attack.direction = point_direction(x, y, mouse_x, mouse_y)
				abilityTwoCooldownTimer = playerFiringSpeed*40
				canFireSecondAbility = false
			}
		break
	
		default :
			if canFireSecondAbility = true{
				var attack = instance_create_layer(x, y, "hitboxes", obj_attackParent)
				attack.speed = 6
				attack.sprite_index = spr_attackPlaceholder
				attack.attackType = "bullet"
				attack.source = "Good Team"
				attack.canHurt = true
				attack.attackPower = playerAttack
				attack.timer = playerRange
				attack.direction = point_direction(x, y, mouse_x, mouse_y)
				abilityTwoCooldownTimer = playerFiringSpeed*40
				canFireSecondAbility = false
			}
		break;		
}
