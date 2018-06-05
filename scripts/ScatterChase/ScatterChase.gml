
switch (GhostMode)
{
	case GhostModes.SCATTER:
	case GhostModes.CHASE:
	
	move_wrap(true, false, oGameManager.GridSize);

	//UpdateGridGhost();
	
	GetGhostTarget();
	
	SetGhostSpeed();
	
	GhostMovement();
	
	GhostDirection();
	
	//Get direction
	GhostUpdateHorVer();
	
	break;


	case GhostModes.FIRSTTURN:
	FirstTurn();

		
	break;
}