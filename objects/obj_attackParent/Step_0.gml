depth = y - 400
var vanishing = false

if (direction = 0 || direction = 180) && attackType = "Lightning"
	image_angle = 0
else image_angle = direction

if (timerOne > 0 ) {
    timerOne -= 1;
    if (timerOne <= 0) {
		vanishing = true
		canHurt = false
    }
}
if (timerTwo > 0) {
    timerTwo -= 1;
    if (timerTwo <= 0) {
		vanishing = true
		canHurt = false
    }
}

switch(direction){
	case 0:
		x += speed * global.deltaMultiplier;
	break;
	
	case 180:
		x -= speed * global.deltaMultiplier;
	break;
	
	case 90:
		y -= speed * global.deltaMultiplier;
	break;
	
	case 270:
		y += speed * global.deltaMultiplier;
	break
}

show_debug_message(string("{0}, {1}, {2}", timer, image_xscale, image_yscale))

if vanishing = true || image_alpha < 1{
	image_alpha -= .1
} if (image_alpha <= 0) instance_destroy()