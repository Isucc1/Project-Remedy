
if global.roomType != "Serious" || global.roomType != "Cutscene"{
	for (var i = 0; i < unlockedClasses + 1; ++i) {
	    draw_sprite_ext(array_get(sprites[i], 2), 0, 344 - (i * 16), 16, 1, 1, 0, c_white, 1)
	}
}

if global.roomType == "Combat"{
	draw_healthbar(318, 230, 354, 235,(abilityOneCooldownMeter*100),c_black,c_yellow,c_yellow,0,true,false)
	draw_sprite_stretched_ext(spr_boxRoundedCornersLarge,0,635,461,76,12,c_white,1)
	draw_healthbar(318, 220, 354, 225,(abilityTwoCooldownMeter*100),c_black,#ffaa00,#ffaa00,0,true,false)
	draw_sprite_stretched_ext(spr_boxRoundedCornersLarge,0,635,446,76,12,c_white,1)
}