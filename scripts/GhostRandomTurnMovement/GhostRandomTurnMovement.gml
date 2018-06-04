
//Update path for ghost when tile changes
// and ghost is one step from center:
//If the grid has changed update pathfinding
if (GridX != LastGridX or GridY != LastGridY)
{
	if (Horizontal and abs(x - GetCenterGridPos(GridX)) <= speed)
	{
		GhostFrightRandomTurn(GhostSpeed);
		LastGridX = GridX;
		LastGridY = GridY;
	}
	
	if (Vertical and abs(y - GetCenterGridPos(GridY)) <= speed)
	{
		GhostFrightRandomTurn(GhostSpeed);
		LastGridX = GridX;
		LastGridY = GridY;
	}
}

if (speed == 0) //means ghost is in turn and needs to keep moving or has come out of different mode
{	
	GhostFrightRandomTurn(GhostSpeed);
}
