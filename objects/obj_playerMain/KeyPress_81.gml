dodging = true
dodgeTimer = 16
cooldownTimer = 120
switch(directionFacing){
	case "south":	vspd += 40	break;
	case "north":	vspd -= 40	break;
	case "west" :	hspd += 40	break;
	case "east" :	hspd -= 40	break;
}