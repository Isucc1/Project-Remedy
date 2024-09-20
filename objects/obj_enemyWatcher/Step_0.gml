/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited()

var path_to_player = mp_grid_path(global.mp_grid, mp_path, x, y, obj_playerMain.x, obj_playerMain.y, 1)
mp_grid_path(global.mp_grid, mp_pathToOrigin, x, y, originX, originY, 1)

if collision_ellipse((x - watchWidth), (y - watchHeight), (x + watchWidth), (y + watchHeight), obj_playerMain, false, true)  != instance_nearest(x, y, obj_playerMain) || obj_playerMain.dead{
	enemyState = state.leave
	canFire = false
} else enemyState = state.chase

if enemyState == state.chase{
	if path_to_player path_start(mp_path, enemySpeed, path_action_stop, false)
} else if  enemyState = state.leave path_start(mp_pathToOrigin, enemySpeed, path_action_stop, false)