//Blinky always leaves right away

if (object_index == oBlinky) GhostMode = GhostModes.GOTOHOMEYCENTER;

else if (!oGameManager.IsGlobalDotCounting)
{
	if (LocalDotCounter>=NumLocalDots)	
	{
		GhostMode = GhostModes.GOTOHOMEYCENTER;
		if (IsDotCounting)
		{
		
		IsDotCounting = false;	
			if (object_index == oPinky)
			{
				oInk.IsDotCounting = true;
			}
			else if (object_index == oInk)
			{
				oClyde.IsDotCounting = true;
			}
		}
	}
}

else 
{
	if (oGameManager.GlobalDotCounter >= NumGlobalDots 
		&& (object_index == oPinky	|| object_index == oInk))
	{
		GhostMode = GhostModes.GOTOHOMEYCENTER;
	}
	
	if (oGameManager.GlobalDotCounter == NumGlobalDots 
		&& object_index == oClyde)
	{
		GhostMode = GhostModes.GOTOHOMEYCENTER;
	}
	
	if (object_index == oClyde && GhostMode != GhostModes.SAFEZONE
	&& GhostMode != GhostModes.LEAVEHOME && GhostMode != GhostModes.GOTOHOMEYCENTER
	&& GhostMode != GhostModes.GOTOHOMECENTER)
	{
		oGameManager.GlobalDotCounter = 0;
		oGameManager.IsGlobalDotCounting = false;
		oGhostParent.LocalDotCounter = 0;
		oGhostParent.IsDotCounting = false;
		oPinky.IsDotCounting = true;
	}
	
}