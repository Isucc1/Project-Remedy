draw_sprite(spr_pauseButton, 0, camX + 352, camY + 8)

if pause = true{
	draw_sprite_ext(spr_dummyPixel, 0, camX, camY, 360, 240, 0 , c_black, 0.5)
	
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	draw_set_color(c_white)
	
	draw_text(camX + 180, camY + 60, "PAUSED")
}
