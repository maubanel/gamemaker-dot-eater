
//Update path for ghost when tile changes
// and ghost is one step from center:
if (oGameManager.Mode != GhostMode.PLAYERDEAD)
{
	if (GridX != LastGridX or GridY != LastGridY)
	{
		if (Horizontal and abs(x - GetCenterGridPos(GridX)) <= speed)
		{
			GhostPathfinding(TargetX, TargetY, oGameManager.GhostNormSpeed);
			LastGridX = GridX;
			LastGridY = GridY;
		}
	
		else if (Vertical and abs(y - GetCenterGridPos(GridY)) <= speed)
		{
			GhostPathfinding(TargetX, TargetY, oGameManager.GhostNormSpeed);
			LastGridX = GridX;
			LastGridY = GridY;
		}


	}

	else if (speed == 0) //means ghost is in turn and needs to keep moving
	{	
		GhostPathfinding(TargetX, TargetY, oGameManager.GhostNormSpeed);
	}
}
