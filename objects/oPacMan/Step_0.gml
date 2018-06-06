/// @description Logic for Pac-Man

/* Update Pac-Man's last and current Grid Position, if grid is
// different then get center grid type and xy */
UpdateGridPosition();
	
switch(oGameManager.GameMode)
{
	case GameModes.PLAYERREADY:
	case GameModes.NEXTLEVELFLASH:
	case GameModes.NEXTLEVEL:
	case GameModes.READY:
	image_alpha = 0;
	break;
	
	case GameModes.PREGAME:
	ResetPacManToStart();
	image_alpha = 1;
	image_speed = 0;
	image_index = 2;

	
	
	break;
	
	case GameModes.SCATTER:
	case GameModes.CHASE:
	case GameModes.FRIGHT:
	case GameModes.FRIGHTFLASH:
	
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
	
	case GameModes.PLAYERDEAD:
		speed = 0;
		
	break;
	
	case GameModes.PLAYERDEATHANIM:
	
	if (sprite_index != sPacManDeath) 
	{
		sprite_index = sPacManDeath;
		audio_play_sound(aDeath,1, false);	
	}
		//Trigger sprite change
	if (image_index + image_speed > image_number )
	{
		if (lives > 0)
		{
			oGameManager.GameMode = GameModes.PLAYERREADY;
			ResetPacManToStart();
			show_debug_message("Lives1: " + string(lives));
		}
		else
		{
			oGameManager.GameMode = GameModes.YOULOSE;	
			oPacMan.x = 0;
			oPacMan.y = 0;
			oPacMan.alpha = 0;
		}
	}
	break;
	
	case GameModes.GHOSTEATEN:
	case GameModes.YOULOSE:
	
		image_alpha = 0;
		speed = 0;
		
		break;
		
	case GameModes.NEXTLEVELPAUSE:
	image_index = 0;
	speed = 0;
	image_alpha = 1;
	
	break;
}



					