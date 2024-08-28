
barrel[1] = point_direction(0,0,-11,-4.5);
barrel[0] = point_distance(0,0,-11,-4.5);

if !instance_exists(enemy){	instance_destroy()	}

direction = point_direction(x, y, obj_playerMain.x, obj_playerMain.y)

if direction > 270 || direction < 90{
	image_yscale = - 1
} else image_yscale = 1
image_angle = direction -180
