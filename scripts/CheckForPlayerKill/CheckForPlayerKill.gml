//Check to see if ghost kills player

if (GridX == oPacMan.GridX and GridY == oPacMan.GridY)
{
	oGameManager.Mode = GhostMode.PLAYERDEAD;
}