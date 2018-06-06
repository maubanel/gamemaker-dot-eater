//Check to see if ghost and player occupy same square
var PacTempGridX = GetGridNum(oPacMan.x);
var PacTempGridY =	GetGridNum(oPacMan.y);
var GhostTempGridX = GetGridNum(x);
var GhostTempGridY = GetGridNum(y);


if (PacTempGridX == GhostTempGridX && PacTempGridY == GhostTempGridY)
{
	if (oGameManager.DrawDebug)
	{
		show_debug_message("Player Collides with Ghost.");	
	}
	
	//Kills player if in game state
	if (IsInGame && sprite_index != sGhostEyes && !IsFrightened
		&& oGameManager.GameMode != GameModes.PLAYERDEAD
		&& oGameManager.GameMode !=GameModes.PLAYERDEATHANIM)
	{
		//Make sure pac man is not already dead
		if (oGameManager.GameMode != GameModes.PLAYERDEAD)
		{
			oGameManager.GameMode = GameModes.PLAYERDEAD;
			
			//Start timer for global timing for ghosts leaving home
			oGameManager.IsGlobalDotCounting = true;
			
			ResetGhostsIfInFrightened();
	
			if (oGameManager.DrawDebug)
			{
				show_debug_message("Ghost Kills Player.");	
			}
	
			lives--;
		}
	
	}
	
	//Kills ghost if it is in frightened state (not global but local IsFrightened variable)
	if (IsFrightened && !IsSafeZone)
	{
		if (sprite_index != sGhostEyes)
		{
			
			if (oGameManager.DrawDebug)
			{
				show_debug_message("Player Eats Ghost.");	
			}
	
			sprite_index = sGhostEyes;
			GhostMode = GhostModes.EYESFREEZE;
			//Since this happens in ghost the switch of going to PlayerDead does 

			oGameManager.GameMode = GameModes.GHOSTEATEN;
		
		
			x = GetCenterGridPos(GridX);
			y = GetCenterGridPos(GridY);
		
			IsFrightened = false;
		}
		
	}
}