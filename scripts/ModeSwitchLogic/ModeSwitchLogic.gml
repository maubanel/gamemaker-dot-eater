//show_debug_message("LGM: " + string(oGameManager.LastGameMode)
//		+ " - M: " + string(oGameManager.Mode))
	
if (oGameManager.LastGameMode == GameMode.PLAYERDEAD
	&& oGameManager.Mode = GameMode.PLAYERDEATHANIM)
{
	Mode = GhostMode.PLAYERDEATHANIM;
}
		
else if (oGameManager.LastGameMode == GameMode.PLAYERDEATHANIM)
{
	Mode = GhostMode.PLAYERREADY;
}
	
else if (oGameManager.LastGameMode == GameMode.PLAYERREADY)
{
	Mode = GhostMode.PREGAME
}
	
else if (oGameManager.LastGameMode == GameMode.PREGAME)
{
	if (object_index == oBlinky)
	{
		Mode = GhostMode.FIRSTTURN;
		NextDirection = 180;
		direction = 180;

	}
	else 
	{
		Mode = GhostMode.SAFEZONE;
		speed = 0;
		vspeed = oGameManager.GhostTunnelSpeed;
	}
		
}

	
else if (oGameManager.Mode == GameMode.FRIGHT)
{
		
	//Switch to FRIGHT mode if in game
	// Make ghosts reverse direction if in game
	//switch IsFrightened switch to true for ghosts in safe zone
	if (!IsEyeballs)
	{
		IsFrightened = true;
		sprite_index = sGhostFright;
		if (IsInGame || IsFrightened)
		{
			Mode = GhostMode.FRIGHT;
			ReverseDirection(); // - BUGGY
		}
	}
}

else if (oGameManager.Mode == GameMode.FRIGHTFLASH)
{
		
	//Switch to FRIGHT mode if in game
	// Make ghosts reverse direction if in game
	//switch IsFrightened switch to true for ghosts in safe zone
	if (IsFrightened)
	{
		sprite_index = sGhostFrightFlash;
		Mode = GhostMode.FRIGHTFLASH;
	}
}

else if (oGameManager.Mode == GameMode.GHOSTEATEN)
{
	image_speed = 0;
	if (PreviousMode == GhostMode.EYESRETURN)
	{
		image_alpha = 0;
		
	}
}

else if (oGameManager.LastGameMode == GameMode.FRIGHTFLASH)
{
	if (!IsEyeballs)
	{
		if (oGameManager.Mode == GameMode.SCATTER) Mode = GhostMode.SCATTER;
		else if (oGameManager.Mode == GameMode.CHASE) Mode = GhostMode.CHASE;
		else Mode = GhostMode.CHASE;
		sprite_index = OriginalSprite;
	}
}


	
else if (Mode == GhostMode.SCATTER && oGameManager.Mode == GameMode.CHASE)
{
	Mode = GhostMode.CHASE;	
}
	
else if (Mode == GhostMode.CHASE && oGameManager.Mode == GameMode.SCATTER)
{
	Mode = GhostMode.SCATTER;	
}
	