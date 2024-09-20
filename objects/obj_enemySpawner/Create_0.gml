var _enemyCount = irandom_range(1, 7);							//choose random number between 1 and 7 for how many enemies to spawn
																
for (var i = 0; i < _enemyCount; i++){							//repeat the code however many times enemyCount is set to
																
	var xx = irandom(room_width)								//randomly choose an X and Y position in the room
	var yy = irandom(room_height)								
																
	if collision_rectangle(xx, yy, (xx + sprite_get_width(spr_sandbag)), (yy + sprite_get_height(spr_sandbag)), obj_collisionParent, false, true) == noone{				//check if the random x and y collide with any collision parent obj
																
		xx = irandom(room_width)								//if so rerandomize it
		yy = irandom(room_height)								
																
	} else instance_create_depth(xx, yy, 0, obj_enemyWatcher)	 //if not spawn an enemy parent there	
}