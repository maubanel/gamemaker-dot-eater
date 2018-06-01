/*if (Mode != oGameManager.Mode && Mode != GameMode.FRIGHT
	&& Mode != GameMode.EYESRETURN && Mode != GameMode.RETURNTOSAFEZONE
	and Mode != GameMode.SAFEZONE and Mode != GameMode.LEAVINGSAFEZONE)
{
	Mode = oGameManager.Mode;	
}*/

//Every ghost shares first target for first turn
IsInGame = Mode == GhostMode.SCATTER || Mode == GhostMode.CHASE 
				|| Mode == GhostMode.FIRSTTURN || Mode == GhostMode.FRIGHT;

IsEdible = Mode == GhostMode.FRIGHT;

GetGhostTarget();


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
	
	if (oGameManager.LastGameMode == GameMode.GAMESTART)
	{
		Mode = GhostMode.FIRSTTURN;
		NextDirection = 180;
		direction = 180;
	}
	
	if (Mode == GhostMode.SCATTER && oGameManager.Mode == GameMode.CHASE)
	{
		Mode = GhostMode.CHASE;	
	}
	
	if (Mode == GhostMode.CHASE && oGameManager.Mode == GameMode.SCATTER)
	{
		Mode = GhostMode.SCATTER;	
	}
	
	if (oGameManager.Mode == GhostMode.FRIGHT)
	{
		if (IsInGame)
		{
			Mode = FRIGHT;	
		}
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
		
	case GhostMode.FIRSTTURN:
		UpdateGridGhost();
		
		//Get direction
		GhostUpdateHorVer();
		
		GhostMovementFirstTurn();
		
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
		
		case GhostMode.RETURNTOSAFEZONE:
		mp_linear_step(14 * oGameManager.GridSize, 17 * oGameManager.GridSize + oGameManager.Offset, oGameManager.GhostNormSpeed * 2, false);
		break;
		
		case GhostMode.SAFEZONE:
			image_alpha =1;
		break;
		
	
	default:
		speed = 0;
		break;
}







