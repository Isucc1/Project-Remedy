if !instance_exists(obj_fallbackCamera){
	instance_create_depth(0, 0, 0, obj_fallbackCamera)
}


abilityOneCooldownTimer = -1
abilityTwoCooldownTimer = -1

abilityOneCooldownMeter = 1
abilityTwoCooldownMeter = 1

vFacing = false
hFacing = false

timer = -1
dodgeTimer = -1
cooldownTimer = -1
roomTimer = -1
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

global.class = 0
unlockedClasses = 0

sprites[0] = [spr_adventurerPlaceholder, spr_adventurerBackPlaceholder, spr_headAdventurer]
sprites[1] = [spr_barbarianPlaceholder, spr_barbarianBackPlaceholder, spr_headBarbarian]
sprites[2] = [spr_tankPlaceholder, spr_tankBackPlaceholder, spr_headTank]
sprites[3] = [spr_clericPlaceholder, spr_clericBackPlaceholder, spr_headCleric]
sprites[4] = [spr_magePlaceholder, spr_mageBackPlaceholder, spr_headMage]

//default stats
sprite_index = spr_adventurerPlaceholder	//just default adventurer
global.playerMaxHealth = 150		//this is low; med is 1.5x; high is 2x; measured in numbers
global.playerAttack = 5			//low is 15 dmg/hit; med is 30; high is 40; very high is 55; measured in numbers
global.playerDefense =  0.2		//this is low; med is 40%; high is 60%. measured in %; ALSO, apparently joseph only wants defense to affect things if you have armor on; i think its kinda stupid but hey im not the lead guy i just work here
global.playerRange = 32			//this is short; med is 64; long is 96. Measured in px
global.playerFiringSpeed =	1		//cooldown for attacks; med is .75; fast is .3; measured in seconds
global.playerSpeed = 1				//this is slow; med is 1.5; fast is 2; measured in pixels/60th second

playerCurrentHealth = global.playerMaxHealth