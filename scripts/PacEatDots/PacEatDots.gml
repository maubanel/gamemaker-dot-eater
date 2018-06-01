if (LastGridX != GridX or LastGridY != GridY)
{
	if (oGameManager.CollisionArray[LastGridX, LastGridY] == 1)
	{
		oGameManager.CollisionArray[LastGridX, LastGridY] = 3;
		
		var inst = instance_position(GetCenterGridPos(LastGridX),
									GetCenterGridPos(LastGridY),
									oDot);
									
		if (inst != noone)
		{
			instance_destroy(inst);
		}
		
		if (not audio_is_playing(aChomp))
		{
			audio_play_sound(aChomp, 1, false);	
		}
	}
	//Pac-Man eats large pill, changes to FRIGHT mode
	if (oGameManager.CollisionArray[GridX, GridY] == 2)
	{
		//set position to empty
		oGameManager.CollisionArray[GridX, GridY] = 3;
		
		//destroy dot
		var inst = instance_position(GetCenterGridPos(GridX), 
									GetCenterGridPos(GridY),
									oDotLarge);
		
		if (inst != noone)
		{
			instance_destroy(inst);	
		}
		
		oGameManager.Mode = GameMode.FRIGHT;
		
		//Switch to FRIGHT mode // Make ghosts reverse direction
		with (oGhostParent)
		{
			if (Mode != GhostMode.EYESRETURN)
			{
				IsFrightened = true;
			}
		}
	}
	
	
}