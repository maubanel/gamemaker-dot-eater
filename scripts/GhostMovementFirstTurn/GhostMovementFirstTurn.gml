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

if (speed == 0) //means ghost is in turn and needs to keep moving
{	
	GhostPathfinding(TargetX, TargetY, GhostSpeed);
}

if (GetGridNum(x) == GetGridNum(TargetX) && GetGridNum(y) == GetGridNum(TargetY))
{
	SetGameMode();	
	show_debug_message("Switch out of first turn");
}


