

//updating depth
depth = y - 400


//death
if playerCurrentHealth <= 0{	dead = true	}
if dead{	canMove = false	}

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

//doing directions
if _upKey{			directionFacing = 0	}
else if _downKey {	directionFacing = 2	}
else if _leftKey {	directionFacing = 1	}
else if _rightKey{	directionFacing = 3	}

//updating variables
global.actualDelta =	 delta_time/1000000;
global.deltaMultiplier = global.actualDelta/targetDelta;

//making sprite a grave if your dead
if !dead	sprite_index = array_get(classStats[class], 0);
else		sprite_index = spr_deathGravePlaceholder

//making sure the stats actually stay consistance
playerMaxHealth =	array_get(classStats[class], 1);
playerDefense =		array_get(classStats[class], 2);
playerAttack =		array_get(classStats[class], 3)
playerFiringSpeed = array_get(classStats[class], 4);
playerSpeed =		array_get(classStats[class], 5);
playerRange =		array_get(classStats[class], 6);

if canMove = false{	var deltaMovementSpeed = 0	} else var deltaMovementSpeed = playerSpeed * global.deltaMultiplier;

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