function draw_rectangle_solid(x1, y1, x2, y2, col, alpha){
	
	var alpha_buffer = image_alpha
	
	draw_set_alpha(alpha)	
	draw_rectangle_color(x1, y1, x2, y2, col, col, col, col, false)
	
	image_alpha = alpha_buffer
}