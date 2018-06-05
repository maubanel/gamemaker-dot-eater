//If the grid has changed update pathfinding
if (GridX != LastGridX or GridY != LastGridY)
{
	TargetX = GetGridPos(14);
	TargetY = GetCenterGridPos(17);
		
	//check to see if ghost is close to safe zone
	if ((GridY == 14 && GridX >= 9 && GridX <= 13 && direction == 0)
		|| (GridY == 14 && GridX >= 14 && GridX <= 18 && direction == 180) )
	{
		speed = 0;
		GhostMode = GhostModes.EYESRETURNABOVEHOME;
	}
		
	else 
	{
		if (Horizontal and abs(x - GetCenterGridPos(GridX)) <= speed)
		{
			GhostPathfinding(TargetX, TargetY, oGameManager.GhostEyeReturnSpeed);
			LastGridX = GridX;
			LastGridY = GridY;
		}
	
		else if (Vertical and abs(y - GetCenterGridPos(GridY)) <= speed)
		{
			GhostPathfinding(TargetX, TargetY, oGameManager.GhostEyeReturnSpeed);
			LastGridX = GridX;
			LastGridY = GridY;
		}
	}
}

if (speed == 0) //means ghost is in turn and needs to keep moving
{	
	GhostPathfinding(TargetX, TargetY, oGameManager.GhostEyeReturnSpeed);
}
