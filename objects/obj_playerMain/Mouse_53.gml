if !layer_exists("hitboxes"){
		layer_create(0, "hitboxes")
	}
if canMove{
	if canFireFirstAbility = true{
		var attack = instance_create_layer(x, y, "hitboxes", obj_attackParent)
		attack.source = "Good Team"
		attack.canHurt = true
		attack.attackPower = playerAttack
		attack.timer = playerRange
		attack.direction = point_direction(x, y, mouse_x, mouse_y)
		abilityOneCooldownTimer = playerFiringSpeed*40
		canFireFirstAbility = false

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