/// @description Logic for Pac-Man

switch(oGameManager.Mode)
{
	case GameMode.PLAYERREADY:
	image_alpha = 0;
	break;
	
	case GameMode.PREGAME:
	image_alpha = 1;
	image_speed = 0;
	image_index = 2;
	ResetPacManToStart();
	
	
	break;
	
	case GameMode.SCATTER:
	case GameMode.CHASE:
	case GameMode.FRIGHT:
	
	//For tunnel in maze
	move_wrap(true, false, oGameManager.GridSize);
	
	/* Update Pac-Man's last and current Grid Position, if grid is
	// different then get center grid type and xy */
	UpdateGridPosition();
	
	/* Sets speed based on whether it is in fright or non fright mode */
	SetSpeed();
	
	//Eat dots if run over, go into FRIGHT mode if it is a large dot,
	//updates grid to indicate that dot has been eaten
	PacEatDots();

	//CHeck to see if Pac-Man is turning
	PacManMovement();

	//Check To See if Player Can Move in This direction:
	IsSpaceFreeToMove();
	
	
	UpdateHorVer();
	
	break;
	
	case GameMode.PLAYERDEAD:
		speed = 0;
		
		//Trigger sprite change
		if (sprite_index == sPacManDeath and image_index + image_speed > image_number )
		{
			oGameManager.Mode = GameMode.PLAYERREADY;
			ResetPacManToStart();
			
		}
	break;
	
	case GameMode.GHOSTEATEN:
	
		image_alpha = 0;
		speed = 0;
		
		break;
}



					