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
		if (oGameManager.Mode == GameMode.FRIGHT) Mode = GhostMode.FRIGHT;	
		else if (oGameManager.Mode == GameMode.FRIGHTFLASH) Mode = GhostMode.FRIGHTFLASH;
		else if (IsInGame)
		{
			if (oGameManager.Mode == GameMode.SCATTER) Mode = GhostMode.SCATTER;
			else Mode = GhostMode.CHASE;
		}
	}
	if (PreviousMode == GhostMode.EYESRETURN)
	{
		Mode = GhostMode.EYESRETURN;
		image_alpha = 1;
		sprite_index = sGhostEyes;
	}
}

//Every time a dot is eaten up the ghost score
score += GhostScore;
GhostScore *= 2;
