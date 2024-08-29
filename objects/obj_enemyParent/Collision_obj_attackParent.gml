var attack = other
if attack.source != team{
	if !((enemyCurrentHealth - attack.attackPower) > enemyCurrentHealth)
			enemyCurrentHealth -= attack.attackPower
		else instance_destroy(self)

	switch(attack.attackType){
		case "Fireball" :
			attack.sprite_index = spr_explosion
			attack.image_xscale = 3
			attack.image_yscale = 3
			if attack.timerTwo <= 0{	
				attack.timerTwo = 20	
			}
			attack.speed = 0
			attack.attackPower = attack.attackPower * 0.5
			attack.source = "Everyone"
		break;
	
		case "Lightning" :
			if enemyType = "Mover" || enemyType = "Chaser" || enemyType = "Timer"{
				paralyzeTimer = 360
				canMove = false
				canFire = false
				image_blend = c_yellow
			}
		break;
	} instance_destroy(attack)
}