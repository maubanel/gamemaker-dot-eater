/*	Checks to see if next grid position is free,
	if it isn't then stops player if they are a
	step away from the center of the grid */

if (IsMoveLeft)
{
	var OneToLeft = GridX -1;
	if (OneToLeft < 0) OneToLeft = 0; //clamp value
	
	//Once player goes too far bring back
	if (oGameManager.CollisionArray[OneToLeft, GridY] == 0
		&& x <= GetCenterGridPos(GridX))
	{
		//stop the player
		speed = 0;
		x = GetCenterGridPos(GridX);
		y = GetCenterGridPos(GridY);
	}
}

if (IsMoveRight)
{
	var OneToRight = GridX + 1;
	if (OneToRight > 27) OneToRight = 27;
	
	//Once player goes too far bring back
	if (oGameManager.CollisionArray[OneToRight, GridY] == 0
		&& x >= GetCenterGridPos(GridX))
	{
		//stop the player
		speed = 0;
		x = GetCenterGridPos(GridX);
		y = GetCenterGridPos(GridY);
	}
}

if (IsMoveUp)
{
	var OneToUp = GridY -1;
	if (OneToUp < 0) OneToUp = 0;
	
	//Once player goes too far bring back
	if (oGameManager.CollisionArray[GridX, OneToUp] == 0
		&& y <= GetCenterGridPos(GridY))
	{
		//stop the player
		speed = 0;
		x = GetCenterGridPos(GridX);
		y = GetCenterGridPos(GridY);
	}
}

if (IsMoveDown)
{
	var OneToDown = GridY + 1;
	if (OneToDown > 35) OneToDown = 35;
	
	//Once player goes too far bring back
	if (oGameManager.CollisionArray[GridX, OneToDown] == 0
	&& y >= GetCenterGridPos(GridY))
	{
		//stop the player
		speed = 0;
		x = GetCenterGridPos(GridX);
		y = GetCenterGridPos(GridY);
	}
}

