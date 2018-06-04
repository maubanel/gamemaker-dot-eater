//If the grid has changed update pathfinding
if (GridX != LastGridX or GridY != LastGridY)
{
	if (Horizontal and abs(x - GetCenterGridPos(GridX)) <= speed)
	{
		GhostPathfinding(TargetX, TargetY, GhostSpeed);
		LastGridX = GridX;
		LastGridY = GridY;
	}
	
	else if (Vertical and abs(y - GetCenterGridPos(GridY)) <= speed)
	{
		GhostPathfinding(TargetX, TargetY, GhostSpeed);
		LastGridX = GridX;
		LastGridY = GridY;
	}

	
}

//Don't else if for mode switching
if (speed == 0) //means ghost is in turn and needs to keep moving
{	
	GhostPathfinding(TargetX, TargetY, GhostSpeed);
}

//If it hits target
if (GetCenterGridPos(GridX) == TargetX && GetCenterGridPos(GridY) == TargetY)
{
	show_debug_message("get out of first turn");
	SetGameMode();	
}


