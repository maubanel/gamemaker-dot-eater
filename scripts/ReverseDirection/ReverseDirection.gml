if (Horizontal) y = GetCenterGridPos(GridY);
	else x = GetCenterGridPos(GridX);
		
	//NextDirection = direction;
	//Look at next tile ahead in 4 directions
NextDirectionUp = CanMoveToGrid(vk_up);
NextDirectionDown = CanMoveToGrid(vk_down);
NextDirectionLeft = CanMoveToGrid(vk_left);
NextDirectionRight = CanMoveToGrid(vk_right);
	
//Throw away position that the Ghost currently occupies
if (direction == 270) NextDirectionDown = false;
else if (direction == 90) NextDirectionUp = false;
else if (direction == 180) NextDirectionLeft = false;
else if (direction == 0) NextDirectionRight = false;
	
//Red zone for ghosts to not go up in center lanes
if ((GridX == 11 || GridX == 13 || GridX ==14 || GridX == 16)
		and (GridY == 14 || GridY == 25))
{
	NextDirectionUp = false; 
}
	
	
//If multiple options pick the one with the shortest length
CheckFourDirections(TargetX, TargetY);

	
NextDirection = SetNextDirection();
direction = NextDirection;
	//speed = 0;
	//GhostSpeed = 0;

