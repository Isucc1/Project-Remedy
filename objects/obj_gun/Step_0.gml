if onTimer = true{
	if (timer > 0) {
    timer -= 1;
	    if (timer <= 0) && enemy.canFire{
			var attack = instance_create_layer(x + lengthdir_x(barrel[0],barrel[0+1] + image_angle), y + lengthdir_y(barrel[0], barrel[0+1] + image_angle), "hitboxes", obj_attackEnemy);
			attack.speed = 6
			attack.source = "Evil team"
			attack.attackPower = enemy.enemyAttack
			attack.timer = enemy.enemyRange
			timer = enemy.enemyFiringSpeed;
			if room = rm_maze{
				audio_play_sound(choose(snd_gunMatt, snd_powMatt, snd_shootMatt), 10, false)
			}
		}
		else if (timer <= 0) && !enemy.canFire{
			timer = enemy.enemyFiringSpeed
		}
	}
}

barrel[1] = point_direction(0,0,-11,-4.5);
barrel[0] = point_distance(0,0,-11,-4.5);

if !instance_exists(enemy){	instance_destroy()	}

direction = point_direction(x, y, obj_playerMain.x, obj_playerMain.y)

if direction > 270 || direction < 90{
	image_yscale = - 1
} else image_yscale = 1
image_angle = direction -180
