for (var i = 0; i < unlockedClasses + 1; ++i) {
    draw_sprite_ext(array_get(sprites[i], 2), 0, 692 - (i * 32), 0, 2, 2, 0, c_white, 1)
}


draw_healthbar(637, 461, 708, 471,(abilityOneCooldownMeter*100),c_black,c_yellow,c_yellow,0,true,false)
draw_sprite_stretched_ext(spr_boxRoundedCornersThick,0,635,461,76,12,c_white,1)
draw_healthbar(637, 446, 708, 456,(abilityTwoCooldownMeter*100),c_black,#ffaa00,#ffaa00,0,true,false)
draw_sprite_stretched_ext(spr_boxRoundedCornersThick,0,635,446,76,12,c_white,1)