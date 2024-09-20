depth = -y

if enemyCurrentHealth <= 2{
	dying = true
	instance_destroy()
}
if (timer > 0) {
    timer -= 1;
    if (timer <= 0) && enemyType != "Timer"{
        canFire = true
    }
}

if position_meeting(x, y, obj_collisionParent){
	
	var distanceToMiddleX = sign((room_width/2) - x)
	var distanceToMiddleY = sign((room_height/2) - y)
	
	x += distanceToMiddleX
	y += distanceToMiddleY
}