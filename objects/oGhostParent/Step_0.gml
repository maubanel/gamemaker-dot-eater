
//Every ghost shares first target for first turn
IsInGame = (GhostMode == GhostModes.SCATTER || GhostMode == GhostModes.CHASE 
				|| GhostMode == GhostModes.FIRSTTURN);

IsEyeballs = (GhostMode == GhostModes.EYESRETURN || GhostMode == GhostModes.EYESRETURNABOVEHOME
			 || GhostMode == GhostModes.EYESRETURNINTOHOME);
			 

IsSafeZone = (GhostMode == GhostModes.SAFEZONE || GhostMode == GhostModes.GOTOHOMEYCENTER  
		   || GhostMode == GhostModes.GOTOHOMECENTER || GhostMode == GhostModes.LEAVEHOME);


//GetGhostTarget();

UpdateGridGhost();

if (oGameManager.LastGameMode != oGameManager.GameMode)
{	
	ModeSwitchLogic();	
}

switch (oGameManager.GameMode)
{
	case GameModes.PLAYERREADY:
	case GameModes.PLAYERDEATHANIM:
	case GameModes.NEXTLEVELFLASH:
	case GameModes.YOULOSE:
	
	image_alpha = 0;
	speed = 0;
	
	break;
		
	
	case GameModes.PLAYERDEAD:
	
	image_alpha = 1;
	speed = 0;
	
	break;
		
		
	case GameModes.PREGAME:
	case GameModes.READY:
	
	image_alpha = 1;
	image_speed = 0;
	x = StartingX;
	y = StartingY;
	
	break;	
		

	case GameModes.SCATTER:
	case GameModes.CHASE:
	
	if (IsInGame)
	{
		ScatterChase();
		
	}	
	
	else if (IsEyeballs && !IsSafeZone)
	{
		EyesReturn();
	}
	
	else if (IsSafeZone)
	{
		Safezone();
	}
			
	break;
	
	
	case GameModes.FRIGHT:
	case GameModes.FRIGHTFLASH:
	if (IsInGame && IsFrightened)
	{
		move_wrap(true, false, oGameManager.GridSize);
		
		//UpdateGridGhost();
		
		SetGhostSpeed();
		//Pick ran
		GhostRandomTurnMovement();
		
		//Get direction
		GhostUpdateHorVer();
		
	}
	else if (IsInGame)
	{
		ScatterChase();
	}	
	
	else if (IsEyeballs && !IsSafeZone)
	{
		EyesReturn();
	}
	
	else if (IsSafeZone)
	{
		Safezone();
	}
		
	break;
		
		
	case GameModes.GHOSTEATEN:
	if (PreviousMode == GhostModes.EYESRETURN)
	{
		image_alpha = 0; 
	}
	speed = 0;
	break;
		
	
	case GameModes.NEXTLEVELPAUSE:
	image_index = 0;
	speed = 0;
	break;
}
