draw_self()

var healthPercent = (playerCurrentHealth/playerMaxHealth) * 100

if healthPercent > 0{
	draw_healthbar(x-9, y-20,  x+9, y-18, healthPercent, c_gray, c_red, c_green, 0, true, false)
	draw_sprite_stretched(spr_boxRoundedCorners,0,x-9,y-21,19,5)
}