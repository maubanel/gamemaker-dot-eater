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
	if (IsInGame)
	{
		oGameManager.Mode = GameMode.PLAYERDEAD;
		//not happen on this ghost.  We must force it:
		oGhostParent.Mode = GhostMode.PLAYERDEAD;
		//Start timer for global timing for ghosts leaving home
		oGameManager.IsGlobalDotCounting = true;
	
	if (oGameManager.DrawDebug)
	{
		show_debug_message("Ghost Kills Player.");	
	}
	
	lives--;
	if (lives <= 0)
	{
		oGameManager.Mode = GameMode.YOULOSE;
	}
	
	}
	
	//Kills ghost if it is in frightened state (not global but local IsFrightened variable)
	if (IsFrightened)
	{
			
		if (oGameManager.DrawDebug)
		{
			show_debug_message("Player Eats Ghost.");	
		}
	
		sprite_index = sGhostEyes;
		PreviousMode = GhostMode.EYESRETURN;
		//Since this happens in ghost the switch of going to PlayerDead does 

		oGameManager.Mode = GameMode.GHOSTEATEN;
		
		if (!IsEyeballs) Mode = GhostMode.GHOSTEATEN;
		
		x = GetCenterGridPos(GridX);
		y = GetCenterGridPos(GridY);
		
		IsFrightened = false;
		
	}
}