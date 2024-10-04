var _alpha = 1 

if instance_exists(obj_fade) _alpha = 1 - obj_fade.alpha
else _alpha = 1

draw_set_alpha(_alpha)

//draw_self()
camX = camera_get_view_x(view_camera[0])
camY = camera_get_view_y(view_camera[0])

draw_sprite(spr_pauseButton, 0, camX + 352, camY + 8)
