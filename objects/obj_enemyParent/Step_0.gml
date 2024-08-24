if enemyCurrentHealth <= 2{
	instance_destroy()
}
if (timer > 0) {
    timer -= 1;
    if (timer <= 0) {
        canFire = true
    }
}