if (GhostMode != GhostModes.FIRSTTURN)
{
	
	move_wrap(true, false, oGameManager.GridSize);

	//UpdateGridGhost();
	
	GetGhostTarget();
	
	SetGhostSpeed();
	
	GhostMovement();
	
	GhostDirection();
	
	//Get direction
	GhostUpdateHorVer();

} 

else if (GhostMode == GhostModes.FIRSTTURN)
{
	FirstTurn();
}