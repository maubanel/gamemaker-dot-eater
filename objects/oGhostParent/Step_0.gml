/*if (Mode != oGameManager.Mode && Mode != GameMode.FRIGHT
	&& Mode != GameMode.EYESRETURN && Mode != GameMode.RETURNTOSAFEZONE
	and Mode != GameMode.SAFEZONE and Mode != GameMode.LEAVINGSAFEZONE)
{
	Mode = oGameManager.Mode;	
}*/

//Every ghost shares first target for first turn
IsInGame = Mode == GhostMode.SCATTER || Mode == GhostMode.CHASE 
				|| Mode == GhostMode.FIRSTTURN;

IsEdible = Mode == GhostMode.FRIGHT || Mode == GhostMode.FRIGHTFLASH;

IsEyeballs = Mode == GhostMode.EYESRETURN; //MISSING MODE(S) WILL CAUSE BUGS

GetGhostTarget();


if (oGameManager.LastGameMode != oGameManager.Mode)
{
	
	ModeSwitchLogic();
	//Don't allow ghost to turn back to blue 
	IsFrightened = false;
}

switch (Mode)
{
	case GhostMode.PLAYERREADY:
	case GhostMode.PLAYERDEATHANIM:
		image_alpha = 0;
	break;
		
	case GhostMode.PREGAME:
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
	
	move_wrap(true, false, oGameManager.GridSize);

	UpdateGridGhost();
	
	GetGhostTarget();
	
	GhostMovement();
	
	GhostDirection();
	
	//Get direction
	GhostUpdateHorVer();
	
	break;
		
	case GhostMode.EYESRETURN:
	
	UpdateGridGhost();
	
	GetGhostTarget();
	
	GhostMovementEyesReturn();
	
	GhostDirection();
	
	GhostUpdateHorVer();
		
	break;
		
		
		
		case GhostMode.FRIGHT:
		case GhostMode.FRIGHTFLASH:
		
		move_wrap(true, false, oGameManager.GridSize);

		GridX = (GetGridNum(x));
		GridY = (GetGridNum(y));

		GridX = clamp(GridX, 0, 27);
		GridY = clamp(GridY,0, 35);
		
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
		if (image_alpha != 1)image_alpha =1;
		SafeZoneShuffle();	
		GhostDirection();
			

		break;
		
	
	default:
		speed = 0;
		break;
}







