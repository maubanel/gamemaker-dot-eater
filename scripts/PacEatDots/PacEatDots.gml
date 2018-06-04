//Eat dots if run over, go into FRIGHT mode if it is a large dot,
	//updates grid to indicate that dot has been eaten
if (GridType == 1)
	{
		oGameManager.CollisionArray[GridX, GridY] = 3;
		
		var inst = instance_position(CenterXWorld,CenterYWorld, oDot);
									
		if (inst != noone) instance_destroy(inst);
	
		
		if (not audio_is_playing(aChomp)) audio_play_sound(aChomp, 1, false);	
		
		score += 10;
		oGameManager.MasterLevelDotCounter++;
		
		with (oGhostParent)
		{
			if (!oGameManager.IsGlobalDotCounting)
			{
				if (IsDotCounting)
				{
					LocalDotCounter++;
				}
			}
		}
		
		if (oGameManager.IsGlobalDotCounting)
		{
			oGameManager.GlobalDotCounter++;	
		}
	}
	
//Pac-Man eats large pill, changes to FRIGHT mode
else if (GridType == 2)
{
	//set position to empty
	oGameManager.CollisionArray[GridX, GridY] = 3;
		
	//destroy dot
	var inst = instance_position(CenterXWorld,CenterYWorld, oDotLarge);
		
	if (inst != noone) instance_destroy(inst);	
		
	oGameManager.Mode = GameMode.FRIGHT;
	
	score += 50;
	oGameManager.MasterLevelDotCounter++;
	
	FrightTimer = 0;
	
	with (oGhostParent)
	{
		if (!oGameManager.IsGlobalDotCounting)
		{
			if (IsDotCounting)
			{
				LocalDotCounter++;
			}
		}
				

	}
	
	if (oGameManager.IsGlobalDotCounting)
	{
		oGameManager.GlobalDotCounter++;	
	}

}	

