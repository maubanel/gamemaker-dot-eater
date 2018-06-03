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

IsEyeballs = Mode == GhostMode.EYESRETURN || Mode ==GhostMode.EYESRETURNABOVEHOME
			 || Mode == GhostMode.EYESRETURNINTOHOME;

IsSafeZone = Mode == GhostMode.SAFEZONE || Mode == GhostMode.LEAVINGSAFEZONE;

GetGhostTarget();


if (oGameManager.LastGameMode != oGameManager.Mode)
{
	
	ModeSwitchLogic();
	
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
		
		case GhostMode.EYESRETURNABOVEHOME:
		mp_linear_step( GetGridPos(14), GetCenterGridPos(14), oGameManager.GhostNormSpeed * 4, false);
		if (x == GetGridPos(14) && y = GetCenterGridPos(14)) Mode = GhostMode.EYESRETURNINTOHOME;
		break;
		
		
		case GhostMode.EYESRETURNINTOHOME:
		mp_linear_step(GetGridPos(14), GetCenterGridPos(17), oGameManager.GhostNormSpeed * 2, false);
		//Switch back to normal
		if (x == GetGridPos(14) && y = GetCenterGridPos(17))
		{
			Mode = GhostMode.SAFEZONE;
			speed = 0;
			vspeed = oGameManager.GhostTunnelSpeed;
		}
		break;
		
		case GhostMode.SAFEZONE:
		if (image_alpha != 1){image_alpha =1;}
		SafeZoneShuffle();	
		GhostDirection();
		break;
		
	
	default:
		speed = 0;
		break;
}







