if other.source != id && other.canHurt = true{
	instance_destroy(other)
	if !((enemyCurrentHealth - other.attackPower) > enemyCurrentHealth)
		enemyCurrentHealth -= other.attackPower
	else instance_destroy()
}