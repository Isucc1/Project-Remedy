if global.paused = true{
	draw_sprite_ext(spr_dummyPixel, 0, 0, 0, 360, 240, 0, c_black, 0.5)
	
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	draw_set_color(c_white)
	
	draw_text(180, 60, "PAUSED")
}
