switch(GhostMode)
{
	case GhostModes.EYESRETURN:
	move_wrap(true, false, oGameManager.GridSize);
	
	//UpdateGridGhost();
	
	GetGhostTarget();
	
	GhostMovementEyesReturn();
	
	GhostDirection();
	
	GhostUpdateHorVer();
	break;
	
	case GhostModes.EYESRETURNABOVEHOME:
	mp_linear_step( GetGridPos(14), GetCenterGridPos(14), oGameManager.GhostEyeReturnSpeed, false);
	if (x == GetGridPos(14) && y = GetCenterGridPos(14)) GhostMode = GhostModes.EYESRETURNINTOHOME;
	break;
	
	case GhostModes.EYESRETURNINTOHOME:
	mp_linear_step(GetGridPos(14), GetCenterGridPos(17), oGameManager.GhostEyeReturnSpeed, false);
	//Switch back to normal
	if (x == GetGridPos(14) && y = GetCenterGridPos(17))
	{
		GhostMode = GhostModes.SAFEZONE;
		speed = 0;
		vspeed = oGameManager.GhostTunnelSpeed;
	}
	break;
	
}