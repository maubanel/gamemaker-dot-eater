/// @description Insert description here

switch (Mode)
{
	case GhostMode.PLAYERREADY:
		if (!alarm[1])
		{
			alarm[1] = 60;
		}
		break;
	
	case GhostMode.SCATTER:
	case GhostMode.CHASE:
		//Updaet timer and switch to seconds
		ChaseTimer += delta_time/1000000;

		ModeTimer();
	
		break;
	
	case GhostMode.PLAYERDEAD:
		if (!alarm[0])
		alarm[0] = 60;	
		break;
		
	case GhostMode.GHOSTEATEN:
		
		if (!alarm[3])
		{
			alarm[3] = 45;	
		}
		break;
		
	default:
		ChaseTimer = 0;	
		break;
	
}



