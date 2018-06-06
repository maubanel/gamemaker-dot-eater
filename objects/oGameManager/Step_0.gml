/// @description Insert description here

IsInGame = oGameManager.GameMode == GameModes.CHASE || oGameManager.GameMode == GameModes.SCATTER;

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
switch (GameMode)
{
	case GameModes.GAMESTART:
	Level = 1;
	NextLevel();
	if (not audio_is_playing(aIntro))
	{
		audio_play_sound(aIntro,1, false);	
	}
	oDotLarge.image_speed = 0;
	oDotLarge.image_index = 0;
	GameMode = GameModes.PLAYERREADY;
	break;
	
	case GameModes.PLAYERREADY:
	case GameModes.READY:
		if (!alarm[1])
		{
			alarm[1] = 80;
		}
		if (instance_exists(oDotLarge))
		{
			oDotLarge.image_speed = 0;
			oDotLarge.image_index = 0;
		}
		break;
	
	case GameModes.SCATTER:
	case GameModes.CHASE:
		//Updaet timer and switch to seconds
		ChaseTimer += delta_time/1000000;

		GameMode = ModeTimer();
	
		break;
		
	case GameModes.FRIGHT:
		//Updaet timer and switch to seconds
		FrightTimer += delta_time/1000000;
		
		if (FrightTimer > FrightLength)
		{
			GameMode = GameModes.FRIGHTFLASH;
			//Reset timer
			FrightTimer = 0;
			//15 is the image speed of the ghosts Fright flash animation
			alarm[4] = GhostFlashNumber * 15;
			//Reset GhostScore back to 200
			GhostScore = 200;
		}
		
	break;
	
	case GameModes.PLAYERDEAD:
	if (!alarm[0]) 
	{
		alarm[0] = 60;	
	}
	if (GlobalDotCounter != 0) GlobalDotCounter = 0;

	break;
		
		
	case GameModes.GHOSTEATEN:
		
		if (!alarm[3])
		{
			alarm[3] = 45;	
		}
		
		//Pauses alarm for switching out of flashing
		Alarm4Pause = alarm[4];
		alarm[4] = -1;
		break;
		
		case GameModes.NEXTLEVELPAUSE:
		if (!alarm[5])
		{
			alarm[5] = 60;
		}
		break;
		
		case GameModes.NEXTLEVELFLASH:
		if (!alarm[6])
		{
			alarm[6] = 60;
		}
		case GameModes.NEXTLEVEL:
			Level++; // increment level
			show_debug_message("Level: " + string(Level));
			NextLevel();
			GameMode = GameModes.READY;
		break;
		
		case GameModes.YOULOSE:
			if (!alarm[7]) alarm[7] = 90;
		break;
	default:
	//Nothing
		break;
	
}
