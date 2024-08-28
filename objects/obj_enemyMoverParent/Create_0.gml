//inherit event
event_inherited()
 with (other) path_start(path_circle, enemySpeed, path_action_continue, false)

enemyType = "Mover"
enemyFiringSpeed = 1
paralyzeTimer = -1
canMove = true
//timer = 3 sec
timer = 120
if !layer_exists("hitboxes"){
	layer_create(0, "hitboxes")
}