global.class = 0

//Class' stats, formatted as: [name, health, defense, attack, firing rate, speed, range, primary ability, secondary ability, head sprite]
//Low is 1; Med is 1.5; High is 2; Really High(????) is 2.5
global.classStats[0] = ["adventurer",	150, 0.4,  5, 2.5, 1.5, 64, "boomerang", "SpeedBuff"]		//adventurer stats
global.classStats[1] = ["barbarian",	200, 0.2, 40, 4.5, 1.5, 32, "Rage",      "FiringRateBuff"]	//barbarian stats
global.classStats[2] = ["tank",		150, 0.6, 30, 0.8,   1, 64, "Turret",    "AttackBuff"]		//tank stats
global.classStats[3] = ["cleric",		100, 0.4, 15, 0.8,   2, 96, "Heal",      "iFramesBuff"]		//cleric stats
global.classStats[4] = ["mage",		100, 0.2, 55, 4.5,   2, 64, "FIREBALL",  "Lightning"]		//mage stats
