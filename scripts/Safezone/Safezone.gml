switch (GhostMode)
{
	case GhostModes.GOTOHOMEYCENTER:
	
	SetGhostSpeed();
	mp_linear_step(x, GetCenterGridPos(17), GhostSpeed, false);
	if (y == GetCenterGridPos(17))
	{
		GhostMode = GhostModes.GOTOHOMECENTER;	
	}
	
	break;
	
	case GhostModes.GOTOHOMECENTER:
	SetGhostSpeed();
	mp_linear_step(GetGridPos(14), GetCenterGridPos(17), GhostSpeed, false);
	if (x ==GetGridPos(14) && y == GetCenterGridPos(17))
	{
		GhostMode = GhostModes.LEAVEHOME;	
	}
	
	break;
	
	case GhostModes.LEAVEHOME:
	SetGhostSpeed();
	mp_linear_step(GetGridPos(14), GetCenterGridPos(14), GhostSpeed, false);
	if (x ==GetGridPos(14) && y == GetCenterGridPos(14))
	{
		if (!IsFrightened)
		{
			GhostMode = GhostModes.FIRSTTURN;
			ResetGhosts();
		}
		
		else GhostMode = PickGhostScatterOrChase();
		/*else 
		{

			//neutralize vspeed
			speed = 0;
			direction = choose (0, 180);
			NextDirection = direction; // forces to run a space check so ghost does not freeze
			LastGridX = GridX;
			LastGridY = GridY;
		}*/
			
	}
	break;
	
	case GhostModes.SAFEZONE:
	if (image_alpha != 1){image_alpha =1;}
	HomeCounter();
	SafeZoneShuffle();	
	GhostDirection();
	break;
}