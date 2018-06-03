/// @description Going from GHOSTEATEN back to FRIGHT


Mode = GameMode.FRIGHT;

with (oPacMan)
{
	SetSpeed();	
	speed = CurrentSpeed;
	image_alpha = 1;
}

with (oGhostParent)
{
	if (!IsSafeZone)
	{
		if (IsFrightened) Mode = GhostMode.FRIGHT;	
		else if (PreviousMode != GhostMode.EYESRETURN)
		{
			if (oGameManager.Mode == GameMode.SCATTER) Mode = GhostMode.SCATTER;
			else Mode = GhostMode.CHASE;
		}
	}
	
	if (PreviousMode == GhostMode.EYESRETURN && !IsSafeZone)
	{
		Mode = GhostMode.EYESRETURN;
		image_alpha = 1;
		sprite_index = sGhostEyes;
		PreviousMode = 0;
	}
}

//Every time a dot is eaten up the ghost score
score += GhostScore;
GhostScore *= 2;
