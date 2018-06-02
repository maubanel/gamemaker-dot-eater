/// @description Going from GHOSTEATEN back to FRIGHT

ModeTimer();

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
		if (IsFrightened) Mode = GameMode.FRIGHT;	
		else if (PreviousMode != GhostMode.EYESRETURN)
		{
			if (oGameManager.Mode == GameMode.SCATTER) Mode = GhostMode.SCATTER;
			else Mode = GhostMode.CHASE;
		}
	}
	show_debug_message(PreviousMode == GhostMode.EYESRETURN);
	show_debug_message("Above means that Previous mode is correct");
	if (PreviousMode == GhostMode.EYESRETURN && !IsSafeZone)
	{
		Mode = GhostMode.EYESRETURN;
		image_alpha = 1;
		sprite_index = sGhostEyes;
		PreviousMode = 0;
	}
}
