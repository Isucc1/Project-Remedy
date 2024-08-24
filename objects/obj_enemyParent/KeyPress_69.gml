if !layer_exists("hitboxes"){
	layer_create(0, "hitboxes")
}
if canFire = true{
	var attack = instance_create_layer(x + 16, y + 16, "hitboxes", obj_attackHitbox)
	attack.speed = 2
	attack.source = id
	attack.attackPower = enemyAttack
	attack.timer = enemyRange
	switch(enemyFacing){
		case "north":
			attack.direction = 90;
		break;
		case "west":
			attack.direction = 0;
		break;
	
		case "east":
			attack.direction = 180;
		break;
	
		case "south":
			attack.direction = 270;
		break;
	}
	timer = enemyFiringSpeed*40
	canFire = false
}