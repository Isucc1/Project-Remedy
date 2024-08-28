//updating depth
depth = y - 400


//death
if playerCurrentHealth <= 0{	dead = true	}
if dead{	canMove = false	}

//Delta timers I found online; don't ask how it works I'm clueless
if (abilityOneCooldownTimer > 0) {
	abilityOneCooldownTimer -= 1;
		if (abilityOneCooldownTimer <= 0) {
			canFireFirstAbility = true
		}
	}
if (abilityTwoCooldownTimer > 0) {
	abilityTwoCooldownTimer -= 1;
		if (abilityTwoCooldownTimer <= 0) {
			canFireSecondAbility = true
		}
	}
if canFireFirstAbility && canFireSecondAbility{
	canFire = true
} else canFire = false
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
if _upKey{			directionFacing = "north"	}
else if _downKey {	directionFacing = "south"	}
else if _leftKey {	directionFacing = "east"	}
else if _rightKey{	directionFacing = "west"	}

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
		case "south":	vspd =  5	break;
		case "north":	vspd = -5	break;
		case "west" :	hspd =  5	break;
		case "east" :	hspd = -5	break;
	}
}

if inCutscene = false{
	camera_set_view_pos(view_camera[0], x-180, y-120)
	camera_set_view_size(view_camera[0], 360, 240)
}

//moving
if !(place_meeting((x + hspd), y, obj_collisionParent)){
	x += hspd;
}
if !(place_meeting(x, (y + vspd), obj_collisionParent)){
	y += vspd;
}