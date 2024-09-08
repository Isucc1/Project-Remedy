if !layer_exists("hitboxes"){
		layer_create(0, "hitboxes")
	}
if canMove && global.roomType = "Combat"{
	var attack = instance_create_layer(x, y, "hitboxes", obj_attackParent)
	attack.source = "Good Team"
	attack.canHurt = true
	attack.attackPower = global.playerAttack
	attack.timerTwo = global.playerRange
	attack.direction = point_direction(x, y, mouse_x, mouse_y)
	//abilityOneCooldownTimer = global.playerFiringSpeed*40
	attack.speed = 6
	attack.sprite_index = spr_attackPlaceholder
	attack.attackType = "bullet"
}
//NEED TO PUT IN COOLDOWN