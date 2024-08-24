depth = y - 400

if playerCurrentHealth <= 0{dead = true}

if dead{	canMove = false	}


//Delta timer I found online; don't ask how it works I'm clueless
if (timer > 0) {
    timer -= 1;
    if (timer <= 0) {
        canFire = true
    }
}

//variables for directional keys
var _upKey = keyboard_check(vk_up);
var _downKey = keyboard_check(vk_down);
var _leftKey = keyboard_check(vk_left);
var _rightKey = keyboard_check(vk_right);

//doing directions
if _upKey{	directionFacing = "north"	}
else if _downKey{	directionFacing = "south"	}
else if _leftKey{	directionFacing = "east"	}
else if _rightKey{	directionFacing = "west"	}

//updating variables
global.actualDelta = delta_time/1000000;
global.deltaMultiplier = global.actualDelta/targetDelta;
var deltaMovementSpeed = playerSpeed * global.deltaMultiplier

if !dead{
sprite_index = array_get(classStats[class], 0);	}
else sprite_index = spr_deathGravePlaceholder

playerMaxHealth = array_get(classStats[class], 1);
playerDefense = array_get(classStats[class], 2);
playerAttack = array_get(classStats[class], 3)
playerFiringSpeed = array_get(classStats[class], 4);
playerSpeed = array_get(classStats[class], 5);
playerRange = array_get(classStats[class], 6);

if canMove = false{	deltaMovementSpeed = 0	} else deltaMovementSpeed = playerSpeed * global.deltaMultiplier;

//variables for where I'm going to move to
var hspd = (_rightKey - _leftKey) * deltaMovementSpeed;
var vspd = (_downKey - _upKey) *  deltaMovementSpeed;

//moving
if !(place_meeting((x + hspd), (y + vspd), obj_collisionParent)){
	x += hspd;
	y += vspd;
}
