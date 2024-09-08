if (global.class <= unlockedClasses - 1){ global.class++;	}
else global.class = 0

if directionFacing = 0 sprite_index = array_get(sprites[global.class], 1);
else if directionFacing = 2 sprite_index = array_get(sprites[global.class], 0);