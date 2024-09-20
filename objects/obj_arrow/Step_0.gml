x = obj_playerMain.x
y = obj_playerMain.y

var nearestEnemy = instance_nearest(x, y, obj_enemyParent)
direction = point_direction(x, y, nearestEnemy.x, nearestEnemy.y)

image_angle = -direction