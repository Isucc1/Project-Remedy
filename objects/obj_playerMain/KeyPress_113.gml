if (class <= unlockedClasses - 1	){ ++class;	}
else class = 0

if directionFacing = 0 sprite_index = array_get(sprites[class], 1);
else if directionFacing = 2 sprite_index = array_get(sprites[class], 0);