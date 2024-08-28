if other.source != "Good Team" && other.canHurt = true{
	if other.source != "Everyone"{	instance_destroy(other)	}
	if !((playerCurrentHealth - other.attackPower) > playerCurrentHealth)
		playerCurrentHealth -= other.attackPower
	else canMove = false
}