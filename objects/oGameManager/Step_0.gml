/// @description Insert description here

IsInGame = Mode == GameMode.CHASE || Mode == GameMode.SCATTER;


if (IsInGame)
{
	if (not audio_is_playing(aSiren1))
	{
		audio_play_sound(aSiren1, 1, true);	
	}
}
else
{
	if (audio_is_playing(aSiren1))
	{
		audio_stop_sound(aSiren1);	
	}
}
switch (Mode)
{
	case GameMode.GAMESTART:
	if (not audio_is_playing(aIntro))
	{
		audio_play_sound(aIntro,1, false);	
	}
	Mode = GameMode.PLAYERREADY;
	break;
	
	case GameMode.PLAYERREADY:
		if (!alarm[1])
		{
			alarm[1] = 80;
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
