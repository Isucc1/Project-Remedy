if !instance_exists(obj_camera){
	instance_create_depth(0, 0, 0, obj_camera)
}

abilityOneCooldownTimer = -1
abilityTwoCooldownTimer = -1

abilityOneCooldownMeter = 1
abilityTwoCooldownMeter = 1

timer = -1
dodgeTimer = -1
cooldownTimer = -1
breadcrumbTimer = -1
canDodge = true
team = "good guys"

hspd = 0
vspd = 0

directionFacing = 2

invincible = false
canFire = true
canFireFirstAbility = true
canFireSecondAbility = true
canMove = true
dead = false
dodging = false
inCutscene = false

targetDelta = 1/60;

global.actualDelta = delta_time/1000000;
global.deltaMultiplier = global.actualDelta/targetDelta

class = 0
unlockedClasses = 0


//Class' stats, formatted as: [sprite, health, defense, attack, firing rate, speed, range, primary ability, secondary ability, head sprite]
//Low is 1; Med is 1.5; High is 2; Really High(????) is 2.5
classStats[0] = [spr_adventurerPlaceholder, 150, 0.4,  5, 2.5, 1.5, 64, "boomerang", "SpeedBuff",		spr_headAdventurer]	//adventurer stats
classStats[1] = [spr_barbarianPlaceholder,	200, 0.2, 40, 4.5, 1.5, 32, "Rage",      "FiringRateBuff",	spr_headBarbarian]		//barbarian stats
classStats[2] = [spr_tankPlaceholder,		150, 0.6, 30, 0.8,   1, 64, "Turret",    "AttackBuff",		spr_headTank]					//tank stats
classStats[3] = [spr_clericPlaceholder,		100, 0.4, 15, 0.8,   2, 96, "Heal",      "iFramesBuff",		spr_headCleric]					//cleric stats
classStats[4] = [spr_magePlaceholder,		100, 0.2, 55, 4.5,   2, 64, "FIREBALL",  "Lightning",		spr_headMage]					//mage stats

//default stats
sprite_index = spr_adventurerPlaceholder	//just default adventurer
playerMaxHealth = 150		//this is low; med is 1.5x; high is 2x; measured in numbers
playerAttack = 5			//low is 15 dmg/hit; med is 30; high is 40; very high is 55; measured in numbers
playerDefense =  0.2		//this is low; med is 40%; high is 60%. measured in %; ALSO, apparently joseph only wants defense to affect things if you have armor on; i think its kinda stupid but hey im not the lead guy i just work here
playerRange = 32			//this is short; med is 64; long is 96. Measured in px
playerFiringSpeed =	1		//cooldown for attacks; med is .75; fast is .3; measured in seconds
playerSpeed = 1				//this is slow; med is 1.5; fast is 2; measured in pixels/60th second

playerCurrentHealth = playerMaxHealth