#macro TS 8
// Inherit the parent event
event_inherited();

gun = instance_create_depth(x - 10, y, (depth - 1), obj_gun)
gun.onTimer = true
enemyType = "Chaser"

image_index = 1

var rmWidth = ceil(room_width / TS)
var rmHeight = ceil(room_height / TS)

global.mp_grid = mp_grid_create(0, 0, rmWidth, rmHeight, TS, TS)

mp_grid_add_instances(global.mp_grid, obj_collisionParent, false)

mp_path = path_add()
mp_pathToOrigin = path_add()

originX = x
originY = y