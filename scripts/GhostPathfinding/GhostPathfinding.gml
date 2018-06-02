var TarX = argument0;
var TarY = argument1;
var Speed = argument2;


//Set speed to the argument passed
speed = Speed;

//If direction and next direction are different
//center the tile and 0 out the speed, set direction
//to new directoin and skip rest
if (direction != NextDirection)
{
	x = GetCenterGridPos(GridX);
	y = GetCenterGridPos(GridY);
	
	direction = NextDirection;
	speed = 0;
}

else 
{
	//Look at next tile ahead in 4 directions
	NextDirectionUp = CanMoveToGridFrom(vk_up, direction);
	NextDirectionDown = CanMoveToGridFrom(vk_down, direction);
	NextDirectionLeft = CanMoveToGridFrom(vk_left, direction);
	NextDirectionRight = CanMoveToGridFrom(vk_right, direction);
	
	//Throw away position that the Ghost currently occupies
	if (direction == 270) NextDirectionUp = false;
	else if (direction == 90) NextDirectionDown = false;
	else if (direction == 180) NextDirectionRight = false;
	else if (direction == 0) NextDirectionLeft = false;
	
	//Make ghost move slower in tunnel
	if (GridY == 17 and (GridX <= 5 || GridX > 32))
	{
		if (!IsEyeballs)
		{
			GhostSpeed = oGameManager.GhostTunnelSpeed;	
		}
	}
	
	//Red zone for ghosts to not go up in center lanes
	if ((GridX == 11 || GridX == 13 || GridX ==14 || GridX == 16)
		 and (GridY == 14 || GridY == 25))
	{
		NextDirectionUp = false; 
	}
	
	
	//If multiple options pick the one with the shortest length
	CheckFourDirections(TarX, TarY);

	
	NextDirection = SetNextDirection();
}

