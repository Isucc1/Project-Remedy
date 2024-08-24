if other.source != id && other.canHurt = true{
	instance_destroy(other)
	if !((playerCurrentHealth - other.attackPower) > playerCurrentHealth)
		playerCurrentHealth -= other.attackPower
	else canMove = false
}