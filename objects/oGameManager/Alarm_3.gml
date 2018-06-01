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
	if (PreviousMode != GameMode.EYESRETURN)
	{
		Mode = GameMode.FRIGHT;	
	}
	else
	{
		Mode = GameMode.EYESRETURN;
		image_alpha = 1;
		sprite_index = sGhostEyes;
		PreviousMode = 0;
		show_debug_message("Ghost Eyes");
	}
}
