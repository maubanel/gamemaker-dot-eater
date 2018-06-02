
//Pac Man Movement

//If moving laterally or turning when Pac is perfectly center 
//then change direction

var SpaceLeft = CenterXWorld - TurnRightUpSpaces;
var SpaceRight = CenterXWorld + TurnLeftDownSpaces;
var SpaceUp = CenterYWorld - TurnRightUpSpaces;
var SpaceDown = CenterYWorld + TurnRightUpSpaces;



if (Horizontal && !IsTurning)
{
	//Lateral left
	if (LEFT) 
	{
		MovePac(180);
		IsSpaceFreeToMove();
		speed = CurrentSpeed;
	}

	//Lateral Right
	if (RIGHT)
	{
		MovePac(0);
		IsSpaceFreeToMove();
		speed = CurrentSpeed;
	}
		
	//Diagonal Up
	if (UP && x == CenterXWorld && y == CenterYWorld) 
	{
		MovePac(90);
		IsSpaceFreeToMove();
		speed = CurrentSpeed;
	}
		
	//Diagonal Down
	if (DOWN && x == CenterXWorld && y == CenterYWorld) 
	{
		MovePac(270);
		IsSpaceFreeToMove();
		speed = CurrentSpeed;
	}
	
	//Check if down turn is possible
	if (DOWN && x >= SpaceLeft && x <= SpaceRight && CanMoveToGrid(vk_down))
	{
		MovePac(270);
		IsTurning = true;
		speed = 0;
		
	}
	
	//Check if up turn possible
	if (UP && x >= SpaceLeft && x <= SpaceRight && CanMoveToGrid(vk_up))
	{
		MovePac(90);
		speed = 0;
		IsTurning = true;
	}
		
}

//Pac Man Move Vertical
else if (Vertical && !IsTurning)
{
	if (UP) 
	{
		MovePac(90);
		IsSpaceFreeToMove();
		speed = CurrentSpeed;
	}

	//Pac Man Move Right
	if (DOWN) 
	{
		MovePac(270);
		IsSpaceFreeToMove();
		speed = CurrentSpeed;
	}
	
	//Diagonal Left
	if (LEFT && x == CenterXWorld && y == CenterYWorld) 
	{
		MovePac(180);
		IsSpaceFreeToMove();
		speed = CurrentSpeed;
	}
	
	//Diagonal Right
	if (RIGHT && x == CenterXWorld && y == CenterYWorld) 
	{
		MovePac(0);
		IsSpaceFreeToMove();
		speed = CurrentSpeed;
	}
	
	//Turning left
	if (LEFT && y <= SpaceDown && y >= SpaceUp && CanMoveToGrid(vk_left))
	{
		MovePac(180);
		speed = 0;
		IsTurning = true;
	}

	//Turning right
	if (RIGHT && y <= SpaceDown && y >= SpaceUp && CanMoveToGrid(vk_right))
	{
		MovePac(0);
		speed = 0;
		IsTurning = true;
	}
}

else if (IsTurning == 1) //Is Turning is false and now in phase 2 
{
	if (Vertical)
	{
		if (x < GetCenterGridPos(GridX)	)
		{
			x -= (x - GetCenterGridPos(GridX)) / 2;
		}
		else
		{
			x += (x - GetCenterGridPos(GridX)) / 2;	
		}
		if (IsMoveUp)
		{
			y -= CurrentSpeed;	
		}
		else y += CurrentSpeed;
		
		++ IsTurning;
	}
	
	else if (Horizontal)
	{
		if (y < GetCenterGridPos(GridY)	)
		{
			y -= (y - GetCenterGridPos(GridY)) / 2;
		}
		else
		{
			y += (y - GetCenterGridPos(GridY)) / 2;	
		}
		
		if (IsMoveRight)
		{
			x += CurrentSpeed;	
		}
		else x -= CurrentSpeed;
		
		++ IsTurning;
	}
}

else if (Vertical && IsTurning == 2) //Phase 3 of turn
{
	if (IsMoveDown) 
	{
		keyboard_lastkey = vk_down;
	}
	else 
	{
		keyboard_lastkey = vk_up
	}
	
	x = GetCenterGridPos(GridX);
	speed = CurrentSpeed;
	IsTurning = false;
}

else if (Horizontal && IsTurning == 2)
{
	if (IsMoveRight) keyboard_lastkey = vk_right;
	else keyboard_lastkey = vk_up;
		
	y = GetCenterGridPos(GridY);
	speed = CurrentSpeed;
	IsTurning = false;
}
