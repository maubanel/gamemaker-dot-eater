/// @description Logic for Pac-Man

switch(oGameManager.Mode)
{
	case GhostMode.PLAYERREADY:
	image_alpha = 0;
	break;
	
	case GhostMode.GAMESTART:
	image_alpha = 1;
	image_speed = 0;
	image_index = 1;
	ResetPacManToStart();
	
	
	break;
	
	case GhostMode.SCATTER:
	case GhostMode.CHASE:
	
	move_wrap(true, false, oGameManager.GridSize);
	
	//Update Pac-Man's Grid Position
	UpdateGridPosition();
	
		//Find out what grid type under player
	GridType = oGameManager.CollisionArray[GridX, GridY];
	
	SetSpeed();
	
		UpdateHorVer();

	//Eat dots if run over
	PacEatDots();

	//CHeck to see if Pac-Man is turning
	PacManMoveTurn();
	
	if (IsTurning == false)
	{
		PacManMoveLaterally();
	}

	//Check To See if Player Can Move in This direction:
	IsSpaceFreeToMove();
	
	break;
	
	case GhostMode.PLAYERDEAD:
		speed = 0;
		
		//Trigger sprite change
		if (sprite_index == sPacManDeath and image_index + image_speed > image_number )
		{
			oGameManager.Mode = GhostMode.PLAYERREADY;
			ResetPacManToStart();
			
		}
	break;
}


/*else
{
	speed = 0;	


		
	}
}*/

					