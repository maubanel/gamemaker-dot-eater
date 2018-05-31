/// @description Going from GHOSTEATEN back to FRIGHT
Mode = GhostMode.SCATTER;
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
		sprite_index = sGhostEyes;
		PreviousMode = 0;
		show_debug_message("Ghost Eyes");
	}
}
