if room != rm_mainMenu{
	draw_sprite(spr_pauseButton, 0, 352, 8)
	if instance_exists(obj_playerMain){
		draw_set_font(global.mainFont)

		draw_set_color(c_white)

		var player = obj_playerMain
		var enemy = obj_playerMain
		if instance_exists(obj_enemyParent){
			enemy = obj_enemyParent
		} else enemy = obj_playerMain

		str[0] = string("Class: {0}", player.class)
		str[1] = string("Movement Speed: {0} \nDelta Adjusted Movement Speed: {1}", player.playerSpeed, (global.deltaMultiplier*player.playerSpeed))
		str[2] = string("Player direction: {0}", player.directionFacing)
		str[3] = string("Max HP: {0}\nAtk: {1}\nDef: {2} (not yet implemented)\nSpeed: {3} pixel(s)/second\nFiring Speed: {4} second(s)\nRange: {5} pixels", player.playerMaxHealth, player.playerAttack, player.playerDefense, player.playerSpeed, player.playerFiringSpeed, player.playerRange)
		str[4] = string("Player Timer: {0}\nEnemy timer: {1}", player.timer, enemy.timer)
		str[5] = string("Current Health: {0}", player.playerCurrentHealth)
		draw_set_halign(fa_left)
		draw_set_valign(fa_top)
		draw_text_ext(0, 0, str[currentMessage], 24, 600)
	}
}