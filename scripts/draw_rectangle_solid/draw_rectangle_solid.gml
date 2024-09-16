function draw_rectangle_solid(x1, y1, x2, y2, col, alpha){
	
	draw_set_alpha(alpha)
	
	draw_set_color(col)
	draw_rectangle(x1, y1, x2, y2, false)
	
	draw_set_alpha(1)
}