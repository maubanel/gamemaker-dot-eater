if (Mode != oGameManager.Mode && Mode != GhostMode.FRIGHT
	&& Mode != GhostMode.EYESRETURN)
{
	Mode = oGameManager.Mode;	
}


switch(Mode)
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
		
	case GhostMode.SCATTER:
	case GhostMode.CHASE:
	case GhostMode.EYESRETURN:
	
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
		
	case GhostMode.FRIGHT:
		
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
		
	case GhostMode.GHOSTEATEN:
		speed = 0;
		if (PreviousMode == GhostMode.EYESRETURN)
		{
			image_alpha = 0;	
		}
		break;
		
	
	default:
		speed = 0;
		break;
	
}






