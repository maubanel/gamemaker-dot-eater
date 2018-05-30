//Gets world range for turning

var SpaceLeft = oGameManager.GridSize * GridX + oGameManager.Offset - TurnRightUpSpaces;
var SpaceRight =  oGameManager.GridSize * GridX + oGameManager.Offset + TurnLeftDownSpaces;
var SpaceUp = oGameManager.GridSize * GridY + oGameManager.Offset - TurnRightUpSpaces;
var SpaceDown = oGameManager.GridSize * GridY + oGameManager.Offset + TurnRightUpSpaces;

if (IsTurning == false)
{
	if (keyboard_check(vk_down) && keyboard_lastkey == vk_down && Horizontal
	&& x >= SpaceLeft && x <= SpaceRight && CanMoveToGrid(vk_down)
	&& WIthinStepOfCenter())
	{
		speed = 0;
		direction = 270;
		image_angle = direction;
		IsTurning = true;
		SetDirections(vk_down);
	}

	if (keyboard_check(vk_up) && keyboard_lastkey == vk_up && Horizontal
	&& x >= SpaceLeft && x <= SpaceRight && CanMoveToGrid(vk_up)
	&& WIthinStepOfCenter())
	{
		speed = 0;
		direction = 90;
		image_angle = direction;
		IsTurning = true;
		SetDirections(vk_up);
	}

	if (keyboard_check(vk_left) && keyboard_lastkey == vk_left && Vertical
	&& y <= SpaceDown && y >= SpaceUp && CanMoveToGrid(vk_left)
	&& WIthinStepOfCenter())
	{
		speed = 0;
		direction = 180;
		image_angle = direction;
		IsTurning = true;
		SetDirections(vk_left);
	}

	if (keyboard_check(vk_right) && keyboard_lastkey == vk_right && Vertical
	&& y <= SpaceDown && y >= SpaceUp && CanMoveToGrid(vk_right)
	&& WIthinStepOfCenter())
	{
		speed = 0;
		direction = 0;
		image_angle = direction;
		IsTurning = true;
		SetDirections(vk_right);
	}
}

else //Is Turning is false and now in phase 2 
{
	if (Vertical && IsTurning ==1)
	{
		if (x < oGameManager.GridSize * GetCenterGridPos(GridX)	)
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
	
	else if (Horizontal && IsTurning ==1)
	{
		if (y < oGameManager.GridSize * GetCenterGridPos(GridY)	)
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
}
