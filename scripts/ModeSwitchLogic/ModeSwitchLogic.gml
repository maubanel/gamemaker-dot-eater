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
	show_debug_message("Switching to FRIGHT");
	if (!IsEyeballs)
	{
		IsFrightened = true;
		sprite_index = sGhostFright;
		if (!IsSafeZone)
		{
			ReverseDirection(); // - BUGGY
			GhostMode = -1;
		}
		else
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
	if (GhostMode == GhostModes.EYESRETURN)
	{
		image_alpha = 0; 
		speed = 0;
	}
	//Make sure mode that you are saving is before GHOSTEATEN
	if (oGameManager.GameMode != GameModes.GHOSTEATEN)
	{
		oGameManager.GameMode  = GameModes.GHOSTEATEN;
	}
}

else if (oGameManager.LastGameMode == GameModes.FRIGHTFLASH)
{
	if (!IsEyeballs)
	{	
		//All sprites go back to normal
		sprite_index = OriginalSprite;
	}
	oGhostParent.IsFrightened = false;
}


else if (oGameManager.LastGameMode ==  GameModes.SCATTER 
		&& oGameManager.GameMode == GameModes.CHASE)
{
	if (!IsSafeZone && !IsEyeballs)
	{
		GhostMode = -1;	
		ReverseDirection();
	}
}
	
else if (oGameManager.LastGameMode == GameModes.CHASE 
		&& oGameManager.GameMode == GameModes.SCATTER)
{
	if (!IsSafeZone && !IsEyeballs)
	{
		GhostMode = -1;
		ReverseDirection();
	}
}

else if (oGameManager.LastGameMode == GameModes.FRIGHT 
		  && oGameManager.IsInGame)
{
	GhostMode = -1;
			  
}
	