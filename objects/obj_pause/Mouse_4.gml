if global.paused == false //pause now
	{
		global.paused = true;
		//deactivate everything other than this instance
		instance_deactivate_all(true);
		instance_create_depth(camY + 180, camY + 120, 0, obj_pauseMenu)
	}
else{ //unpause now
	{
			global.paused = false
			instance_destroy(obj_pauseMenu)
			//reactivating everything
			instance_activate_all()
	}
}