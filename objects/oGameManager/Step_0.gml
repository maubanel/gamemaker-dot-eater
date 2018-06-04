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
	oDotLarge.image_speed = 0;
	oDotLarge.image_index = 0;
	Mode = GameMode.PLAYERREADY;
	break;
	
	case GameMode.PLAYERREADY:
	case GameMode.READY:
		if (!alarm[1])
		{
			alarm[1] = 80;
		}
		oDotLarge.image_speed = 0;
		oDotLarge.image_index = 0;

		break;
	
	case GameMode.SCATTER:
	case GameMode.CHASE:
		//Updaet timer and switch to seconds
		ChaseTimer += delta_time/1000000;

		ModeTimer();
	
		break;
		
	case GameMode.FRIGHT:
		//Updaet timer and switch to seconds
		FrightTimer += delta_time/1000000;
		
		if (FrightTimer > FrightLength)
		{
			Mode = GameMode.FRIGHTFLASH;
			//Reset timer
			FrightTimer = 0;
			//15 is the image speed of the ghosts Fright flash animation
			alarm[4] = GhostFlashNumber * 15;
			//Reset GhostScore back to 200
			GhostScore = 200;
			
		}
		
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
		
		//Pauses alarm for switching out of flashing
		Alarm4Pause = alarm[4];
		alarm[4] = -1;
		break;
		
		case GameMode.NEXTLEVELPAUSE:
		if (!alarm[5])
		{
			alarm[5] = 60;
		}
		break;
		
		case GameMode.NEXTLEVELFLASH:
		if (!alarm[6])
		{
			alarm[6] = 60;
		}
		case GameMode.NEXTLEVEL:
			NextLevel();
			Mode = GameMode.READY;
		break;
	default:
	//Nothing
		break;
	
}
