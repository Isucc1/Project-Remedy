//updating depth
depth = -y

//death
if playerCurrentHealth <= 0{	dead = true	}
if dead || global.roomType = "Cutscene"{	canMove = false	}

//delta timers
if (dodgeTimer > 0) {
    dodgeTimer -= 1;
    if (dodgeTimer <= 0) {
        dodging = false
    }
}
if (cooldownTimer > 0) {
    cooldownTimer -= 1;
    if (cooldownTimer <= 0) {
        canDodge = true
    }
}

//keys
var _upKey =	keyboard_check(global.upKey)
var _downKey =	keyboard_check(global.downKey)
var _leftKey =	keyboard_check(global.leftKey)
var _rightKey = keyboard_check(global.rightKey)

//doing directions and animation
if _upKey{			directionFacing = 0; vFacing = true; }
else if _downKey {	directionFacing = 2; vFacing = false;}
else if _leftKey {	directionFacing = 1; hFacing = true;}
else if _rightKey{	directionFacing = 3; hFacing = false;}

if vFacing sprite_index = array_get(sprites[class], 1);	
else if !vFacing sprite_index = array_get(sprites[class], 0);	

if		hFacing && room != rm_seriousRoom image_xscale = -1		
else if !hFacing && room != rm_seriousRoom image_xscale = 1
else if hFacing && room == rm_seriousRoom image_xscale = -1.5
else if	!hFacing && room == rm_seriousRoom image_xscale = 1.5

//updating variables
global.actualDelta =	 delta_time/1000000;
global.deltaMultiplier = global.actualDelta/targetDelta;

//making sprite a grave if your dead
if dead sprite_index = spr_deathGravePlaceholder


//making sure the stats actually stay consistance
playerMaxHealth =	array_get(classStats[class], 1);
playerDefense =		array_get(classStats[class], 2);
playerAttack =		array_get(classStats[class], 3)
playerFiringSpeed = array_get(classStats[class], 4);
playerSpeed =		array_get(classStats[class], 5);
playerRange =		array_get(classStats[class], 6);

if canMove = false  || global.roomType = "Serious"{	var deltaMovementSpeed = 0	} else var deltaMovementSpeed = playerSpeed * global.deltaMultiplier;

//variables for where I'm going to move to
hspd = (_rightKey - _leftKey)	* deltaMovementSpeed;
vspd = (_downKey - _upKey)		* deltaMovementSpeed;

//dodging stuff
if dodging{
	switch(directionFacing){
		case 2:	vspd =  5	break;
		case 0:	vspd = -5	break;
		case 3 :	hspd =  5	break;
		case 1 :	hspd = -5	break;
	}
}


//moving
if !(place_meeting((x + hspd), y, obj_collisionParent)){
	x += hspd;
}
if !(place_meeting(x, (y + vspd), obj_collisionParent)){
	y += vspd;
}

if hspd != 0 || vspd != 0 image_speed = 1; else image_speed = 0

if global.roomType = "Puzzle" && keyboard_check_pressed(vk_space){
	switch(directionFacing){
	case 0: instance_create_depth(x,	y-10,	0, obj_interactionBox)	break;
	case 1: instance_create_depth(x-10, y,		0, obj_interactionBox)	break;
	case 2: instance_create_depth(x,	y+10,	0, obj_interactionBox)	break;
	case 3: instance_create_depth(x+10, y,		0, obj_interactionBox)	break;
	}
	
}