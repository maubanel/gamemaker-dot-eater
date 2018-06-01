//Check to see if ghost kills player
if (GridX == oPacMan.GridX and GridY == oPacMan.GridY)
{
	if (Mode == GameMode.CHASE or Mode == GameMode.SCATTER)
	{
		oGameManager.Mode = GameMode.PLAYERDEAD;
		Mode = GhostMode.PLAYERDEAD;
	}
	
	else if (Mode == GameMode.FRIGHT)
	{
		sprite_index = sGhostEyes;
		PreviousMode = GhostMode.EYESRETURN;
		oGameManager.Mode = GameMode.GHOSTEATEN;
		oGhostParent.Mode = GameMode.GHOSTEATEN;
		x = GetCenterGridPos(GridX);
		y = GetCenterGridPos(GridY);
	}
}