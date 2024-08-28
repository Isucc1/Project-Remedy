//inherit event
event_inherited()



if (paralyzeTimer > 0) {
    paralyzeTimer -= 1;
}
if (timer > 0) {
    timer -= 1;
}
    if (timer <= 0 && paralyzeTimer <= 0) {
        canFire = true
		image_blend = c_white
    }

//timer
if timer = 0 && canFire = true{
		var attack = instance_create_layer(x, y, "hitboxes", obj_attackParent)
		attack.speed = 2
		attack.source = team
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
		timer = enemyFiringSpeed * 40
		canFire = false
}