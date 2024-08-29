event_inherited()

var path_to_player = mp_grid_path(global.mp_grid, mp_path, x, y, obj_playerMain.x, obj_playerMain.y, 1)
mp_grid_path(global.mp_grid, mp_pathToOrigin, x, y, originX, originY, 1)

if !obj_playerMain.dead{
	if path_to_player path_start(mp_path, enemySpeed, path_action_stop, false)
} else path_start(mp_pathToOrigin, enemySpeed, path_action_stop, false)

if !collision_line(x, y, obj_playerMain.x, obj_playerMain.y, obj_collisionParent, false, true) && !obj_playerMain.dead{
	canFire = true;
} else canFire = false;

gun.x = x - 10
gun.y = y
