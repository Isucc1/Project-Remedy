if pause == false //pause now
	{
		pause = true;
		//deactivate everything other than this instance
		instance_deactivate_all(true);
		instance_create_depth(camY + 180, camY + 120, 0, obj_pauseMenu)
	}
else{ //unpause now
	{
			pause = false
			instance_destroy(obj_pauseMenu)
			//reactivating everything
			instance_activate_all()
	}
}