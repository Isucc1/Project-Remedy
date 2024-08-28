//inherit event
event_inherited()

if canMove = false{	path_speed = 0	}
else path_speed = enemySpeed

if (paralyzeTimer > 0) {
    paralyzeTimer -= 1;
    if (paralyzeTimer <= 0) {
        canMove = true
    }
}