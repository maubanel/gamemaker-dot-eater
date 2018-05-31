//Check to see if ghost kills player
if (GridX == oPacMan.GridX and GridY == oPacMan.GridY)
{
	if (Mode == GhostMode.CHASE or Mode == GhostMode.SCATTER)
	{
		oGameManager.Mode = GhostMode.PLAYERDEAD;
	}
	
	else if (Mode == GhostMode.FRIGHT)
	{
		sprite_index = sGhostEyes;
		PreviousMode = GhostMode.EYESRETURN;
		oGameManager.Mode = GhostMode.GHOSTEATEN;
		oGhostParent.Mode = GhostMode.GHOSTEATEN;
	}
}