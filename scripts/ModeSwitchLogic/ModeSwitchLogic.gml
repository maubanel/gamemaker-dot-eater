//show_debug_message("LGM: " + string(oGameManager.LastGameMode)
//		+ " - M: " + string(oGameManager.Mode))
	

if (oGameManager.LastGameMode == GameModes.PREGAME)
{
	if (object_index == oBlinky)
	{
		Mode = GhostModes.FIRSTTURN;
		NextDirection = 180;
		direction = 180;

	}
	else 
	{
		Mode = GhostModes.SAFEZONE;
		vspeed = -oGameManager.GhostTunnelSpeed;
	}
		
}

	
else if (oGameManager.GameMode == GameModes.FRIGHT 
		&& oGameManager.LastGameMode != GameModes.GHOSTEATEN)
{
		
	//Switch to FRIGHT mode if in game
	// Make ghosts reverse direction if in game
	//switch IsFrightened switch to true for ghosts in safe zone
	if (!IsEyeballs)
	{
		IsFrightened = true;
		sprite_index = sGhostFright;
		if ((IsInGame || IsFrightened) && !IsSafeZone)
		{
			ReverseDirection(); // - BUGGY
		}
		if (IsSafeZone)
		{
			sprite_index = sGhostFright;
		}
	}
}

else if (oGameManager.GameMode == GameModes.FRIGHTFLASH)
{
		
	//Switch to FRIGHT mode if in game
	// Make ghosts reverse direction if in game
	//switch IsFrightened switch to true for ghosts in safe zone
	if (IsFrightened)
	{
		//Don't switch if in eyeball mode
		if (!IsEyeballs) 
		{	sprite_index = sGhostFrightFlash;
			image_speed = 1;
			show_debug_message(string(object_index) + ": Goes to fright flash");
		}

	}
}

else if (oGameManager.GameMode == GameModes.GHOSTEATEN)
{
	image_speed = 0;
	if (PreviousMode == GhostModes.EYESRETURN)
	{
		image_alpha = 0; 
		speed = 0;
	}
	//Make sure mode that you are saving is before GHOSTEATEN
	if (oGameManager.GameMode != GameModes.GHOSTEATEN)
	{
		PreviousMode = GhostMode;
		oGameManager.GameMode  = GameModes.GHOSTEATEN;
	}
}

else if (oGameManager.LastGameMode == GameModes.FRIGHTFLASH)
{
	if (!IsEyeballs)
	{
		if (!IsSafeZone)
		{
			if (oGameManager.GameMode == GameModes.SCATTER) GhostMode =  GhostModes.SCATTER;
			else if (oGameManager.GameMode == GameModes.CHASE) GhostMode = GhostModes.CHASE;
			else GhostMode = GhostModes.CHASE;
		}
	}
	//All sprites go back to normal
	//
	sprite_index = OriginalSprite;
	oGhostParent.IsFrightened = false;
}


else if (GhostMode == GhostModes.SCATTER && oGameManager.GameMode == GameModes.CHASE)
{
	if (!IsSafeZone && !IsEyeballs)
	{
		GhostMode = GhostModes.CHASE;	
		ReverseDirection();
	}
}
	
else if (GhostMode == GhostModes.CHASE && oGameManager.GameMode == GameModes.SCATTER)
{
	if (!IsSafeZone && !IsEyeballs)
	{
		GhostMode = GhostModes.SCATTER;
		ReverseDirection();
	}
}

else if (oGameManager.LastGameMode == GameModes.FRIGHT 
		  && oGameManager.IsInGame)
{
	GhostMode = PickGhostScatterOrChase();
			  
}
	