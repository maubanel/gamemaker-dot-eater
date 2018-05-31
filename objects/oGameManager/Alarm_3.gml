/// @description Going from GHOSTEATEN back to FRIGHT

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
		Mode = GhostMode.FRIGHT;	
	}
	else
	{
		Mode = GhostMode.EYESRETURN;
		image_alpha = 1;
	}
}
