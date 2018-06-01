/// @description Going from GHOSTEATEN back to FRIGHT
Mode = GameMode.SCATTER;
ModeTimer();
oPacMan.image_alpha = 1;
with (oPacMan)
{
	SetSpeed();	
	speed = CurrentSpeed;
}

with (oGhostParent)
{
	if (PreviousMode != GhostMode.EYESRETURN)
	{
		Mode = GameMode.FRIGHT;	
	}
	else
	{
		Mode = GhostMode.EYESRETURN;
		image_alpha = 1;
		sprite_index = sGhostEyes;
		PreviousMode = 0;
	}
}
