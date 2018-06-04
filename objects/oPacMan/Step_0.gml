/// @description Logic for Pac-Man

/* Update Pac-Man's last and current Grid Position, if grid is
// different then get center grid type and xy */
UpdateGridPosition();
	
switch(oGameManager.Mode)
{
	case GameMode.PLAYERREADY:
	case GameMode.NEXTLEVELFLASH:
	case GameMode.NEXTLEVEL:
	image_alpha = 0;
	break;
	
	case GameMode.PREGAME:
	ResetPacManToStart();
	image_alpha = 1;
	image_speed = 0;
	image_index = 2;

	
	
	break;
	
	case GameMode.SCATTER:
	case GameMode.CHASE:
	case GameMode.FRIGHT:
	case GameMode.FRIGHTFLASH:
	
	//For tunnel in maze
	move_wrap(true, false, oGameManager.GridSize);
	
	
	/* Sets speed based on whether it is in fright or non fright mode */
	SetSpeed();
	
	//Eat dots if run over, go into FRIGHT mode if it is a large dot,
	//updates grid to indicate that dot has been eaten
	PacEatDots();

	//CHeck to see if Pac-Man is turning
	PacManMovement();

	//Check To See if Player Can Move in This direction if no 
	//button is pressed:
	if (!IsTurning)
	{
		IsSpaceFreeToMove();
	}
//	if (!IsTurning)
//	{
		UpdateHorVer();
//	}
	
	break;
	
	case GameMode.PLAYERDEAD:
		speed = 0;
		
	break;
	
	case GameMode.PLAYERDEATHANIM:
	audio_play_sound(aDeath,1, false);	
	
	if (sprite_index != sPacManDeath) sprite_index = sPacManDeath;
		//Trigger sprite change
	if (image_index + image_speed > image_number )
	{
		oGameManager.Mode = GameMode.PLAYERREADY;
		ResetPacManToStart();
			
	}
	break;
	
	case GameMode.GHOSTEATEN:
	
		image_alpha = 0;
		speed = 0;
		
		break;
		
	case GameMode.NEXTLEVELPAUSE:
	image_index = 0;
	speed = 0;
	
	break;


}



					