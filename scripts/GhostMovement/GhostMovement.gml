
//Update path for ghost when tile changes
// and ghost is one step from center:
if (Mode == GhostMode.CHASE or oGameManager.Mode == GhostMode.SCATTER)
{
	//If the grid has changed update pathfinding
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

if (Mode == GhostMode.EYESRETURN)
{
	//If the grid has changed update pathfinding
	if (GridX != LastGridX or GridY != LastGridY)
	{
		TargetX = GetCenterGridPos(13);
		TargetY = GetCenterGridPos(17);
		
		
		if (Horizontal and abs(x - GetCenterGridPos(GridX)) <= speed)
		{
			GhostPathfinding(TargetX, TargetY, oGameManager.GhostNormSpeed * 4);
			LastGridX = GridX;
			LastGridY = GridY;
			show_debug_message("Moving Horizonatlly");
		}
	
		else if (Vertical and abs(y - GetCenterGridPos(GridY)) <= speed)
		{
			GhostPathfinding(TargetX, TargetY, oGameManager.GhostNormSpeed * 4);
			LastGridX = GridX;
			LastGridY = GridY;
		}
	}

	else if (speed == 0) //means ghost is in turn and needs to keep moving
	{	
		GhostPathfinding(TargetX, TargetY, oGameManager.GhostNormSpeed * 4);
	}
}