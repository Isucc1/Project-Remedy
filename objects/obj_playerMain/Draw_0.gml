draw_self()

if global.roomType != "Serious"{
	var healthPercent = (playerCurrentHealth/global.playerMaxHealth) * 100

	if healthPercent > 0{
		draw_healthbar(x-9, y-20,  x+9, y-18, healthPercent, c_gray, c_red, c_green, 0, true, false)
		draw_sprite_stretched(spr_boxRoundedCorners,0,x-9,y-21,19,5)
	}

	draw_sprite_ext(mask_index,0,x,y,1,1,0,c_aqua,0.5);
}