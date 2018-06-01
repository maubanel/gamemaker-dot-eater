/// @description Insert description here

IsInGame = Mode == GameMode.CHASE || Mode == GameMode.FRIGHT || Mode == GameMode.SCATTER;

switch (Mode)
{
	case GameMode.PLAYERREADY:
		if (!alarm[1])
		{
			alarm[1] = 60;
		}
		break;
	
	case GameMode.SCATTER:
	case GameMode.CHASE:
		//Updaet timer and switch to seconds
		ChaseTimer += delta_time/1000000;

		ModeTimer();
	
		break;
	
	case GameMode.PLAYERDEAD:
		if (!alarm[0])
		alarm[0] = 60;	
		break;
		
	case GameMode.GHOSTEATEN:
		
		if (!alarm[3])
		{
			alarm[3] = 45;	
		}
		break;
		
	default:
		ChaseTimer = 0;	
		break;
	
}



