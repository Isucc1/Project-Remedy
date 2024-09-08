/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if !instance_exists(obj_playerMain)
direction = point_direction(x,y,obj_playerMain.x,obj_playerMain.y)
image_angle = -direction