if !layer_exists("hitboxes"){
	layer_create(0, "hitboxes")
}
if enemy.canFire = true && onTimer == false{
	var attack = instance_create_layer(x + lengthdir_x(barrel[0],barrel[0+1] + image_angle), y + lengthdir_y(barrel[0], barrel[0+1] + image_angle), "hitboxes", obj_attackEnemy);
	attack.speed = 6
	attack.source = "Evil team"
	attack.attackPower = enemy.enemyAttack
	attack.timer = enemy.enemyRange
	/*switch(enemy.enemyFacing){
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
	enemy.timer = enemy.enemyFiringSpeed*40
	enemy.canFire = false*/
}