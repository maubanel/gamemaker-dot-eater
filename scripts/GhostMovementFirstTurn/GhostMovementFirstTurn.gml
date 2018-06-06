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
if (object_index == oBlinky) show_debug_message("In Scatter Mode" + string(current_time));
if (object_index == oBlinky) show_debug_message("TX: " + string(TargetX)
+ " -GX: " + string(GetCenterGridPos(GridX)) + " - TY: " +
string(TargetY) + " - GY: " + string(GetCenterGridPos(GridY)))
//Don't else if for mode switching
if (speed == 0) //means ghost is in turn and needs to keep moving
{	
	GhostPathfinding(TargetX, TargetY, GhostSpeed);
}

//If it hits target
if (GetCenterGridPos(GridX) == TargetX && GetCenterGridPos(GridY) == TargetY)
{
	GhostMode = -1;
	show_debug_message("Leaving Ghost Zone");
}


