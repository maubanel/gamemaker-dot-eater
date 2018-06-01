/*if (Mode != oGameManager.Mode && Mode != GameMode.FRIGHT
	&& Mode != GameMode.EYESRETURN && Mode != GameMode.RETURNTOSAFEZONE
	and Mode != GameMode.SAFEZONE and Mode != GameMode.LEAVINGSAFEZONE)
{
	Mode = oGameManager.Mode;	
}*/

if (oGameManager.LastGameMode != oGameManager.Mode)
{
	if (oGameManager.LastGameMode == GameMode.PLAYERDEAD)
	{
		Mode = GhostMode.PLAYERREADY;
	}
	
	if (oGameManager.LastGameMode == GameMode.PLAYERREADY)
	{
		Mode = GhostMode.GAMESTART
	}
	
}

switch (Mode)
{
		case GhostMode.PLAYERREADY:
		image_alpha = 0;
		break;
		
	case GhostMode.GAMESTART:
		image_alpha = 1;
		image_speed = 0;
		x = StartingX;
		y = StartingY;
		break;	
}

/*
switch(Mode)
{
	case GameMode.PLAYERREADY:
		image_alpha = 0;
		break;
		
	case GameMode.GAMESTART:
		image_alpha = 1;
		image_speed = 0;
		x = StartingX;
		y = StartingY;
		break;
		
	case GameMode.SCATTER:
	case GameMode.CHASE:
	case GameMode.EYESRETURN:
	
		move_wrap(true, false, oGameManager.GridSize);

		GridX = (GetGridNum(x));
		GridY = (GetGridNum(y));

		GridX = clamp(GridX, 0, 27);
		GridY = clamp(GridY,0, 35);
		
		CheckForPlayerKill();

		//Get direction
		GhostUpdateHorVer();
	
		GhostMovement();
	
		GhostDirection();
	
		break;
		
	case GameMode.FRIGHT:
		
		move_wrap(true, false, oGameManager.GridSize);

		GridX = (GetGridNum(x));
		GridY = (GetGridNum(y));

		GridX = clamp(GridX, 0, 27);
		GridY = clamp(GridY,0, 35);
		
		CheckForPlayerKill();
		
		//Pick ran
		GhostRandomTurnMovement();
		
		//Get direction
		GhostUpdateHorVer();
		

		
		break;
		
	case GameMode.GHOSTEATEN:
		speed = 0;
		if (PreviousMode == GameMode.EYESRETURN)
		{
			image_alpha = 0;	
		}
		break;
		
	case GameMode.RETURNTOSAFEZONE:
		mp_linear_step(14 * oGameManager.GridSize, 17 * oGameManager.GridSize + oGameManager.Offset, oGameManager.GhostNormSpeed * 2, false);
		break;
		
		case GameMode.SAFEZONE:
			image_alpha =1;
		break;
		
	
	default:
		speed = 0;
		break;
	
}
*/





