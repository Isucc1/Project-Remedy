
if global.roomType != "Serious"{
	for (var i = 0; i < unlockedClasses + 1; ++i) {
	    draw_sprite_ext(array_get(sprites[i], 2), 0, 692 - (i * 32), 0, 2, 2, 0, c_white, 1)
	}
}

if global.roomType == "Combat"{
	draw_healthbar(318, 230, 354, 235,(abilityOneCooldownMeter*100),c_black,c_yellow,c_yellow,0,true,true)
	//draw_sprite_stretched_ext(spr_boxRoundedCornersThick,0,635,461,76,12,c_white,1)
	draw_healthbar(318, 225, 354, 220,(abilityTwoCooldownMeter*100),c_black,#ffaa00,#ffaa00,0,true,true)
	//draw_sprite_stretched_ext(spr_boxRoundedCornersThick,0,635,446,76,12,c_white,1)
}