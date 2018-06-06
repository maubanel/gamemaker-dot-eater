/// @description Going from GHOSTEATEN back to GAME

if (FrightTimer > 0)
{
	GameMode = GameModes.FRIGHT;
}
else GameMode = GameModes.FRIGHTFLASH;

//Starts alarm again for switching out of flashing as game was paused
alarm[4] = Alarm4Pause;

with (oPacMan)
{
	SetSpeed();	
	speed = CurrentSpeed;
	image_alpha = 1;
}

with (oGhostParent)
{
	if (GhostMode == GhostModes.EYESFREEZE )
	{
		image_alpha = 1;
		sprite_index = sGhostEyes;
		GhostMode = GhostModes.EYESRETURN;
	}
	
	if (GhostMode == GhostModes.SAFEZONE) vspeed += oGameManager.GhostTunnelSpeed;
}

//Every time a ghost is eaten up the ghost score is doubled
score += GhostScore;
GhostScore *= 2;
