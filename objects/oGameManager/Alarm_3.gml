/// @description Going from GHOSTEATEN back to GAME


Mode = GameMode.FRIGHT;

//Starts alarm again for switching out of flashing
alarm[4] = Alarm4Pause;

with (oPacMan)
{
	SetSpeed();	
	speed = CurrentSpeed;
	image_alpha = 1;
}

with (oGhostParent)
{
	if (PreviousMode == GhostMode.EYESRETURN )
	{
		image_alpha = 1;
		sprite_index = sGhostEyes;
	}
	Mode = PreviousMode;
	
	PreviousMode = -1;
}

//Every time a dot is eaten up the ghost score
score += GhostScore;
GhostScore *= 2;
