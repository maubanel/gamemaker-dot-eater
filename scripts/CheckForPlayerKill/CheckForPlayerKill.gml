//Check to see if ghost and player occupy same square
if (GridX == oPacMan.GridX and GridY == oPacMan.GridY)
{
	//If in non chase mode then
	if (IsInGame)
	{
		oGameManager.Mode = GameMode.PLAYERDEAD;
		//not happen on this ghost.  We must force it:
		oGhostParent.Mode = GhostMode.PLAYERDEAD;
	}
	
	else if (IsEdible)
	{
		sprite_index = sGhostEyes;
		PreviousMode = GhostMode.EYESRETURN;
		//Since this happens in ghost the switch of going to PlayerDead does 

		oGameManager.Mode = GameMode.GHOSTEATEN;
		x = GetCenterGridPos(GridX);
		y = GetCenterGridPos(GridY);
	}
}