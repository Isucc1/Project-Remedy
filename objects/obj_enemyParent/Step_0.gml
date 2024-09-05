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