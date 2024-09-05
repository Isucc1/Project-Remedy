depth = y - 400

team = "Evil team"
enemyType = "basic"
dying = false

//Base enemy stats
sprite_index = spr_sandbag
enemyMaxHealth = 50		//base health
enemyAttack = 20		//low defense = 15; med defense = 10; high defense = 5.
enemyDefense = 0		//no defense
enemySpeed = 1.25		//in between slow and medium
enemyRange = 48			//low player damage
enemyFiringSpeed = 20	//firing speed; wont have any effect with the dummy enemy, because imma just manually do firing

enemyCurrentHealth = enemyMaxHealth

enemyFacing = "south"

timer = -1
paralyzeTimer = -1

canFire = true
canMove = true
if !layer_exists("hitboxes"){
	layer_create(0, "hitboxes")
}

